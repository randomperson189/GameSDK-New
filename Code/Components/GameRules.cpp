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

CGameRulesComponent::CGameRulesComponent() 
{
}

CGameRulesComponent::~CGameRulesComponent()
{
}

void CGameRulesComponent::Initialize()
{
	// Mark the entity to be replicated over the network
	m_pEntity->GetNetEntity()->BindToNetwork();
}

Cry::Entity::EventFlags CGameRulesComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::Initialize;
}

void CGameRulesComponent::ProcessEvent(const SEntityEvent& event)
{
}