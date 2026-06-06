#include "AreaTrigger.h"

namespace
{
	static void RegisterAreaTriggerComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CAreaTriggerComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterAreaTriggerComponent);
}

void CAreaTriggerComponent::Initialize()
{
}

Cry::Entity::EventFlags CAreaTriggerComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::Reset |
		Cry::Entity::EEvent::EntityEnteredThisArea |
		Cry::Entity::EEvent::EntityLeftThisArea;
}

void CAreaTriggerComponent::ProcessEvent(const SEntityEvent & event)
{
	switch (event.event)
	{
	case Cry::Entity::EEvent::EntityEnteredThisArea:
	{
		if (!bActive) return;
		
		otherEntityId = static_cast<EntityId>(event.nParam[0]);
		bCanTriggerEnter = true;
	}
	break;
	case Cry::Entity::EEvent::EntityLeftThisArea:
	{
		if (!bActive) return;

		otherEntityId = static_cast<EntityId>(event.nParam[0]);
		bCanTriggerExit = true;
	}
	break;
	case Cry::Entity::EEvent::Reset:
	{
		bCanTriggerEnter = false;
		bCanTriggerExit = false;
		bActive = true;
		otherEntityId = 0;
	}
	break;
	}
}
