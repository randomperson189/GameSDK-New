#include "StdAfx.h"
#include "Timer.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <DefaultComponents/Input/InputComponent.h>

namespace
{
	static void RegisterTimerComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CTimerComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterTimerComponent);
}

CTimerComponent::CTimerComponent() 
{
}

CTimerComponent::~CTimerComponent()
{
}

void CTimerComponent::Initialize()
{
}

void CTimerComponent::ExecuteConsoleCommand(Schematyc::CSharedString command, bool bSilentMode, bool bDeferExecution)
{
	gEnv->pConsole->ExecuteString(command.c_str(), bSilentMode, bDeferExecution);
}