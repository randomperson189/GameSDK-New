// Copyright 2017-2020 Crytek GmbH / Crytek Group. All rights reserved.
#include "StdAfx.h"

#include "GamePlugin.h"
#include "NPC.h"
#include "SpawnPoint.h"

#include <CryRenderer/IRenderAuxGeom.h>
#include <CryInput/IHardwareMouse.h>
#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CryCore/StaticInstanceList.h>
#include <CryNetwork/Rmi.h>

namespace
{
	static void RegisterNPCComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CNPCComponent));

			{
				auto pFunctionRagdollize = SCHEMATYC_MAKE_ENV_FUNCTION(&CNPCComponent::Ragdollize, "{436104AC-CF56-4FE5-90FF-D900702B9D47}"_cry_guid, "Ragdollize");
				pFunctionRagdollize->SetDescription("Turn this entity into a ragdoll if possible");
				componentScope.Register(pFunctionRagdollize);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterNPCComponent);
}

void CNPCComponent::Initialize()
{
	// The character controller is responsible for maintaining player physics
	m_pCharacterController = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CCharacterControllerComponent>();
	// Offset the default character controller up by one unit
	m_pCharacterController->SetTransformMatrix(Matrix34::Create(Vec3(1.f), IDENTITY, Vec3(0, 0, 1.f)));

	// Create the advanced animation component, responsible for updating Mannequin and animating the player
	m_pAnimationComponent = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CAdvancedAnimationComponent>();

	// Load the character and Mannequin data from file
	m_pAnimationComponent->LoadFromDisk();

	// Get and initialize the navigation component
	m_pNavigationComponent = m_pEntity->GetOrCreateComponent<IEntityNavigationComponent>();

	m_pObserverComponent = m_pEntity->GetOrCreateComponent<IEntityObserverComponent>();

	m_pNavigationComponent->SetStateUpdatedCallback([this](const Vec3& recommendedVelocity)
	{
		m_pCharacterController->ChangeVelocity(recommendedVelocity, Cry::DefaultComponents::CCharacterControllerComponent::EChangeVelocityMode::SetAsTarget);
	});

	// This entity will trigger areas
	m_pEntity->SetFlags(m_pEntity->GetFlags() | ENTITY_FLAG_TRIGGER_AREAS);

	// Apply the character to the entity and queue animations
	m_pAnimationComponent->ResetCharacter();
	m_pCharacterController->Physicalize();

	// Mark the entity to be replicated over the network
	m_pEntity->GetNetEntity()->BindToNetwork();
}

Cry::Entity::EventFlags CNPCComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::Update |
		Cry::Entity::EEvent::Reset |
		Cry::Entity::EEvent::Initialize;
}

void CNPCComponent::ProcessEvent(const SEntityEvent& event)
{
	switch (event.event)
	{
		case Cry::Entity::EEvent::Reset:
		{

		}
		break;
		case Cry::Entity::EEvent::Update:
		{
			const float frameTime = event.fParam[0];

			// Update the animation state of the character
			UpdateAnimation(frameTime);
		}
		break;
		case Cry::Entity::EEvent::Initialize:
		{
			IPhysicalEntity* pPhysEnt = m_pCharacterController->GetEntity()->GetPhysicalEntity();

			pe_player_dynamics dynamics;
			pPhysEnt->GetParams(&dynamics);
			// Remove the landing bob
			dynamics.nodSpeed = 0.f;
			pPhysEnt->SetParams(&dynamics);
		}
		break;
	}
}

void CNPCComponent::UpdateAnimation(float frameTime)
{
	if (m_bIsRagdoll) return;

	// Update the Mannequin tags
	m_pAnimationComponent->SetTagWithId(m_walkTagId, m_pCharacterController->IsWalking());

	if (m_pCharacterController->IsWalking())
	{
		Quat newRotation = Quat::CreateRotationVDir(m_pCharacterController->GetMoveDirection());

		Ang3 ypr = CCamera::CreateAnglesYPR(Matrix33(newRotation));

		// We only want to affect Z-axis rotation, zero pitch and roll
		ypr.y = 0;
		ypr.z = 0;

		// Re-calculate the quaternion based on the corrected yaw
		newRotation = Quat(CCamera::CreateOrientationYPR(ypr));

		/*if (CRagdollHelperComponent* pRagdollHelper = m_pEntity->GetComponent<CRagdollHelperComponent>())
		{
			if (!pRagdollHelper->IsRagdoll())
			{*/
				// Send updated transform to the entity, only orientation changes
				m_pEntity->SetPosRotScale(m_pEntity->GetWorldPos(), newRotation, Vec3(1, 1, 1));
			/*}
		}
		else
		{
			m_pEntity->SetPosRotScale(m_pEntity->GetWorldPos(), newRotation, Vec3(1, 1, 1));
		}*/
	}
}

void CNPCComponent::Ragdollize()
{
	m_bIsRagdoll = true;

	Vec3 linearVelocity;
	Vec3 angularVelocity;

	// Copy velocity values from player
	if (IPhysicalEntity* pPhys = m_pEntity->GetPhysicalEntity())
	{
		pe_status_dynamics dynStatus;
		if (pPhys->GetStatus(&dynStatus))
		{
			linearVelocity = dynStatus.v;
			angularVelocity = dynStatus.w;
		}
	}

	SEntityPhysicalizeParams physParams;
	physParams.type = PE_ARTICULATED;
	physParams.nSlot = GetOrMakeEntitySlotId();
	physParams.mass = 80.0f;
	physParams.bCopyJointVelocities = true;
	physParams.fStiffnessScale = 0.5f;

	// Have to run this twice for some reason or else it won't work
	m_pEntity->Physicalize(physParams);
	m_pEntity->Physicalize(physParams);

	m_pEntity->UpdateComponentEventMask(this);

	pe_params_buoyancy buoyancyParams;
	buoyancyParams.waterDensity = 40.0f;
	buoyancyParams.waterResistance = 10.0f;
	buoyancyParams.waterDamping = 0.0f;

	m_pEntity->GetPhysicalEntity()->SetParams(&buoyancyParams);

	// Set velocity values on ragdoll
	if (IPhysicalEntity* pPhys = m_pEntity->GetPhysicalEntity())
	{
		pe_action_set_velocity setVel;
		setVel.v = linearVelocity;
		setVel.w = angularVelocity;

		pPhys->Action(&setVel);
	}
}