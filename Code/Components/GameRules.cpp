#include "StdAfx.h"
#include "GameRules.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <DefaultComponents/Input/InputComponent.h>

namespace
{
	static void RegisterGameRulesComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CGameRulesComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterGameRulesComponent);
}

// Reflect type to set a unique identifier for this component
void CGameRulesComponent::ReflectType(Schematyc::CTypeDesc<CGameRulesComponent>& desc)
{
	desc.SetGUID("{F8976D91-C4C8-4EE8-A58D-6EE6149FAC07}"_cry_guid);

	desc.SetEditorCategory("Game");
	desc.SetLabel("GameRules");
	desc.SetDescription("Component for GameRules");
	desc.SetComponentFlags({ IEntityComponent::EFlags::HideFromInspector });
}

CGameRulesComponent::CGameRulesComponent() 
{
}

CGameRulesComponent::~CGameRulesComponent()
{
}

void CGameRulesComponent::Initialize()
{
}