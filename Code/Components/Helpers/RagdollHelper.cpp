#include "StdAfx.h"
#include "RagdollHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>

#include <DefaultComponents/Geometry/AdvancedAnimationComponent.h>
#include <DefaultComponents/Physics/CharacterControllerComponent.h>

namespace
{
	static void RegisterRagdollHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CRagdollHelperComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CRagdollHelperComponent::Ragdollize, "{8F4F5080-43D4-44FC-8C67-18240A38EAED}"_cry_guid, "Ragdollize");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CRagdollHelperComponent::UnRagdollize, "{6FBD9889-4018-410D-BD4D-079CD9139251}"_cry_guid, "UnRagdollize");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CRagdollHelperComponent::IsRagdoll, "{1482856F-445C-4EE6-A724-1BF8E19CD731}"_cry_guid, "IsRagdoll");
				pFunction->BindOutput(0, 'rgdl', "Is Ragdoll");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterRagdollHelperComponent);
}

CRagdollHelperComponent::CRagdollHelperComponent()
{
}

CRagdollHelperComponent::~CRagdollHelperComponent()
{
}

void CRagdollHelperComponent::Initialize()
{
}

Cry::Entity::EventFlags CRagdollHelperComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::Reset;
}

void CRagdollHelperComponent::ProcessEvent(const SEntityEvent& event)
{
	switch (event.event)
	{
	case Cry::Entity::EEvent::Reset:
	{
		// UnRagdollize when entering/exiting from game mode
		UnRagdollize();
	}
	break;
	}
}

void CRagdollHelperComponent::Ragdollize()
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

	// Run this twice just in case it doesn't sometimes work the first time
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

void CRagdollHelperComponent::UnRagdollize()
{
	if (!IsRagdoll())
		return;

	if (Cry::DefaultComponents::CCharacterControllerComponent* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
		pCharacterController->Physicalize();
}

bool CRagdollHelperComponent::IsRagdoll()
{
	if (IPhysicalEntity* pPhys = m_pEntity->GetPhysicalEntity())
	{
		//CryLogAlways("%i", pPhys->GetType() == PE_ARTICULATED);

		return pPhys->GetType() == PE_ARTICULATED;
	}

	return false;
}
