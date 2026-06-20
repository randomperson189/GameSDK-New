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

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CTimerComponent::ExecuteConsoleCommand, "{678B3840-BA0E-492F-B001-19B83F82C1C6}"_cry_guid, "Execute Console Command");
				pFunction->BindInput(1, 'cmd', "Command");
				pFunction->BindInput(2, 'slt', "Silent Mode");
				pFunction->BindInput(3, 'dfr', "Defer Execution");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterTimerComponent);
}

// Reflect type to set a unique identifier for this component
void CTimerComponent::ReflectType(Schematyc::CTypeDesc<CTimerComponent>& desc)
{
	desc.SetGUID("{0E3427D3-5684-4939-A50B-7236ABCBFE59}"_cry_guid);

	desc.SetEditorCategory("Utilities");
	desc.SetLabel("CVar Helper");
	desc.SetDescription("Component to access CVars");
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