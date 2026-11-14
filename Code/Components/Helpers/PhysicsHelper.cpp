#include "StdAfx.h"
#include "PhysicsHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>

namespace
{
	static void RegisterPhysicsHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CPhysicsHelperComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPhysicsHelperComponent::SetResting, "{645592F2-FE87-4CF6-8EF9-68D24C33FBC4}"_cry_guid, "SetResting");
				pFunction->BindInput(1, 'rst', "Resting");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPhysicsHelperComponent::SetPhysicsEnabled, "{BDB30214-EC7C-45FF-B300-EC49BEB465D2}"_cry_guid, "SetPhysicsEnabled");
				pFunction->BindInput(1, 'rst', "Enabled");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterPhysicsHelperComponent);
}

CPhysicsHelperComponent::CPhysicsHelperComponent() 
{
}

CPhysicsHelperComponent::~CPhysicsHelperComponent()
{
}

void CPhysicsHelperComponent::Initialize()
{
}

void CPhysicsHelperComponent::SetResting(bool resting)
{
	if (m_pEntity->GetPhysicalEntity())
	{
		pe_action_awake aa;
		aa.bAwake = resting ? 0 : 1;
		m_pEntity->GetPhysicalEntity()->Action(&aa);
	}
}

void CPhysicsHelperComponent::SetPhysicsEnabled(bool enabled)
{
	if (m_pEntity->GetPhysicalEntity())
	{
		m_pEntity->EnablePhysics(enabled);
	}
}

