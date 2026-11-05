#include "StdAfx.h"
#include "GameRulesBehavior.h"

// This component shouldn't be available in menus at all, only subclasses of it should
/*namespace
{
	static void RegisterGameRulesBehaviorComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CGameRulesBehaviorComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterGameRulesBehaviorComponent);
}*/

CGameRulesBehaviorComponent::CGameRulesBehaviorComponent() 
{
}

CGameRulesBehaviorComponent::~CGameRulesBehaviorComponent()
{
}

void CGameRulesBehaviorComponent::Initialize()
{
}

Cry::Entity::EventFlags CGameRulesBehaviorComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::Initialize;
}

void CGameRulesBehaviorComponent::ProcessEvent(const SEntityEvent& event)
{
}