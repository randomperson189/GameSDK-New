#include "StdAfx.h"
#include "SinglePlayer.h"

namespace
{
	static void RegisterSinglePlayerBehaviorComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CSinglePlayerBehaviorComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterSinglePlayerBehaviorComponent);
}

CSinglePlayerBehaviorComponent::CSinglePlayerBehaviorComponent() 
{
}

CSinglePlayerBehaviorComponent::~CSinglePlayerBehaviorComponent()
{
}

void CSinglePlayerBehaviorComponent::Initialize()
{
}

Cry::Entity::EventFlags CSinglePlayerBehaviorComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::Initialize;
}

void CSinglePlayerBehaviorComponent::ProcessEvent(const SEntityEvent& event)
{
}