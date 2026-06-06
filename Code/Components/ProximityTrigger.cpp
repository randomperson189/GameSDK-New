#include "ProximityTrigger.h"
#include <DefaultComponents/Input/InputComponent.h>

namespace
{
	static void RegisterProximityTriggerComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CProximityTriggerComponent));

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CProximityTriggerComponent::SOnEnter));
			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CProximityTriggerComponent::SOnExit));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterProximityTriggerComponent);
}

void CProximityTriggerComponent::Initialize()
{
	// Create a new IEntityTriggerComponent instance, responsible for registering our entity in the proximity grid
	m_pTriggerComponent = m_pEntity->GetOrCreateComponent<IEntityTriggerComponent>();

	// Listen to area events in a 2m^3 box around the entity
	//m_triggerBoxSize = Vec3(2, 2, 2);

	// Create an axis aligned bounding box, ensuring that we listen to events around the entity translation
	AABB triggerBounds = AABB((m_triggerBoxSize * -0.5f) + GetTransformMatrix().GetTranslation(), (m_triggerBoxSize * 0.5f) + GetTransformMatrix().GetTranslation());
	// Now set the trigger bounds on the trigger component
	m_pTriggerComponent->SetTriggerBounds(triggerBounds);
}

void CProximityTriggerComponent::ProcessEvent(const SEntityEvent& event)
{
	switch (event.event)
	{
	case Cry::Entity::EEvent::EntityEnteredThisArea:
	{
		if (m_bActive)
		{
			// Get the entity identifier of the entity that just entered our shape
			const EntityId enteredEntityId = static_cast<EntityId>(event.nParam[0]);

			//CryLogAlways("ENTERED!!!!!!");

			Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject();

			if (pSchematycObject != nullptr)
			{
				pSchematycObject->ProcessSignal(SOnEnter(enteredEntityId), GetGUID());
			}
		}
	}
	break;
	case Cry::Entity::EEvent::EntityLeftThisArea:
	{
		if (m_bActive)
		{
			// Get the entity identifier of the entity that just left our shape
			const EntityId leftEntityId = static_cast<EntityId>(event.nParam[0]);

			//CryLogAlways("EXITED!!!!!!");

			Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject();

			if (pSchematycObject != nullptr)
			{
				pSchematycObject->ProcessSignal(SOnExit(leftEntityId), GetGUID());
			}
		}
	}
	break;
	case Cry::Entity::EEvent::EditorPropertyChanged:
	{
		// Create an axis aligned bounding box, ensuring that we listen to events around the entity translation
		AABB triggerBounds = AABB((m_triggerBoxSize * -0.5f) + GetTransformMatrix().GetTranslation(), (m_triggerBoxSize * 0.5f) + GetTransformMatrix().GetTranslation());
		// Now set the trigger bounds on the trigger component
		m_pTriggerComponent->SetTriggerBounds(triggerBounds);
	}
	break;
	case Cry::Entity::EEvent::Reset:
	{
		if (event.nParam[0] != 0)
		{
			// Invalidate trigger when entering game mode
			m_pTriggerComponent->InvalidateTrigger();
		}
	}
	break;
	}
}

Cry::Entity::EventFlags CProximityTriggerComponent::GetEventMask() const
{
	// Listen to the enter and leave events, in order to receive callbacks above when entities enter our trigger box
	return
		Cry::Entity::EEvent::Reset |
		Cry::Entity::EEvent::EditorPropertyChanged |
		Cry::Entity::EEvent::EntityEnteredThisArea |
		Cry::Entity::EEvent::EntityLeftThisArea;
}

static void ReflectType(Schematyc::CTypeDesc<CProximityTriggerComponent::SOnEnter>& desc)
{
	desc.SetGUID("D4095856-4365-4F88-8765-D39DDE86C57E"_cry_guid);
	desc.SetLabel("OnEnter");
	desc.AddMember(&CProximityTriggerComponent::SOnEnter::otherEntity, 'oid1', "otherId", "OtherId", "Id of the Entity that entered this trigger", 0);
}

static void ReflectType(Schematyc::CTypeDesc<CProximityTriggerComponent::SOnExit>& desc)
{
	desc.SetGUID("B61FC798-86A7-4452-B414-0068E726EC0A"_cry_guid);
	desc.SetLabel("OnExit");
	desc.AddMember(&CProximityTriggerComponent::SOnExit::otherEntity, 'oid2', "otherId", "OtherId", "Id of the Entity that exited this trigger", 0);
}

/*void CProximityTriggerComponent::OnEnter()
{
	Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject();

	if (pSchematycObject != nullptr)
	{
		pSchematycObject->ProcessSignal(SOnEnter(), GetGUID());
	}
}

void CProximityTriggerComponent::OnExit()
{
	Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject();

	if (pSchematycObject != nullptr)
	{
		pSchematycObject->ProcessSignal(SOnExit(), GetGUID());
	}
}*/


