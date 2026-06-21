// Copyright 2017-2020 Crytek GmbH / Crytek Group. All rights reserved.
#include "StdAfx.h"

#include "NPC.h"
#include "GamePlugin.h"
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

	// Create the advanced animation component, responsible for updating Mannequin and animating the player
	m_pAnimationComponent = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CAdvancedAnimationComponent>();

	// Load the character and Mannequin data from file
	m_pAnimationComponent->LoadFromDisk();

	// Get and initialize the navigation component
	m_pNavigationComponent = m_pEntity->GetOrCreateComponent<IEntityNavigationComponent>();

	m_pObserverComponent = m_pEntity->GetOrCreateComponent<IEntityObserverComponent>();

	// Make the NPC change velocity to the desired velocity (used for navigation)
	m_pNavigationComponent->SetStateUpdatedCallback([this](const Vec3& recommendedVelocity)
	{
		m_pCharacterController->ChangeVelocity(recommendedVelocity, Cry::DefaultComponents::CCharacterControllerComponent::EChangeVelocityMode::SetAsTarget);
	});

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
			if (event.nParam[0] != 0)
			{

			}
			else
			{
				// Delay 1 frame to properly reset character controller bounds
				SetTimer(1, 1);
			}
		}
		break;
		case Cry::Entity::EEvent::Update:
		{
			const float frameTime = event.fParam[0];
		}
		break;
		break;
		case Cry::Entity::EEvent::TimerExpired:
		{
			switch (event.nParam[0])
			{
			case 1:
			{
				m_pCharacterController->Physicalize();
			}
			break;
			}
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

void CNPCComponent::Ragdollize()
{
	if (IsRagdoll())
		return;

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
	physParams.nSlot = m_pEntity->GetComponent<Cry::DefaultComponents::CAdvancedAnimationComponent>()->GetEntitySlotId();
	physParams.mass = 80.0f;
	physParams.bCopyJointVelocities = true;
	physParams.fStiffnessScale = 0.5f;

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

void CNPCComponent::UnRagdollize()
{
	if (!IsRagdoll())
		return;

	if (Cry::DefaultComponents::CCharacterControllerComponent* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
		pCharacterController->Physicalize();
}

bool CNPCComponent::IsRagdoll()
{
	if (IPhysicalEntity* pPhys = m_pEntity->GetPhysicalEntity())
	{
		//CryLogAlways("%i", pPhys->GetType() == PE_ARTICULATED);

		return pPhys->GetType() == PE_ARTICULATED;
	}

	return false;
}