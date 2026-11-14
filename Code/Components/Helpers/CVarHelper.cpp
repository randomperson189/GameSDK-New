#include "StdAfx.h"
#include "CVarHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>

namespace
{
	static void RegisterCVarHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CCVarHelperComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCVarHelperComponent::ExecuteConsoleCommand, "{678B3840-BA0E-492F-B001-19B83F82C1C6}"_cry_guid, "ExecuteConsoleCommand");
				pFunction->BindInput(1, 'cmd', "Command");
				pFunction->BindInput(2, 'slt', "Silent Mode");
				pFunction->BindInput(3, 'dfr', "Defer Execution");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterCVarHelperComponent);
}

CCVarHelperComponent::CCVarHelperComponent() 
{
}

CCVarHelperComponent::~CCVarHelperComponent()
{
}

void CCVarHelperComponent::Initialize()
{
}

void CCVarHelperComponent::ExecuteConsoleCommand(Schematyc::CSharedString command, bool bSilentMode, bool bDeferExecution)
{
	gEnv->pConsole->ExecuteString(command.c_str(), bSilentMode, bDeferExecution);
}