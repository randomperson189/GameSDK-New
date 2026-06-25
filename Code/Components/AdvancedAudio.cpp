#include "StdAfx.h"
#include "AdvancedAudio.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <DefaultComponents/Input/InputComponent.h>

namespace
{
	static void RegisterAdvancedAudioComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CAdvancedAudioComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterAdvancedAudioComponent);
}

CAdvancedAudioComponent::CAdvancedAudioComponent() 
{
}

CAdvancedAudioComponent::~CAdvancedAudioComponent()
{
}

void CAdvancedAudioComponent::Initialize()
{
}

void CAdvancedAudioComponent::ExecuteConsoleCommand(Schematyc::CSharedString command, bool bSilentMode, bool bDeferExecution)
{
	gEnv->pConsole->ExecuteString(command.c_str(), bSilentMode, bDeferExecution);
}