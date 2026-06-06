#include "StdAfx.h"
#include "TriggerAreas.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>

namespace
{
	static void RegisterTriggerAreasComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CTriggerAreasComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CTriggerAreasComponent::SetTriggerAreas, "{6E857220-693E-4E8A-A88A-FD1C41D35167}"_cry_guid, "Set Trigger Areas");
				pFunction->BindInput(1, 'tars', "Trigger Areas");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterTriggerAreasComponent);
}

CTriggerAreasComponent::CTriggerAreasComponent() 
{
}

CTriggerAreasComponent::~CTriggerAreasComponent()
{
}

void CTriggerAreasComponent::Initialize()
{
	UpdateTriggerAreas();
}

Cry::Entity::EventFlags CTriggerAreasComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::EditorPropertyChanged;
}

void CTriggerAreasComponent::ProcessEvent(const SEntityEvent & event)
{
	switch (event.event)
	{
	case Cry::Entity::EEvent::EditorPropertyChanged:
	{
		UpdateTriggerAreas();
	}
	break;
	}
}

void CTriggerAreasComponent::SetTriggerAreas(bool triggerAreas)
{
	m_bTriggerAreas = triggerAreas;

	UpdateTriggerAreas();
}

void CTriggerAreasComponent::UpdateTriggerAreas()
{
	const uint32 flags = m_pEntity->GetFlags();

	if (m_bTriggerAreas)
	{
		if (!(flags & ENTITY_FLAG_TRIGGER_AREAS))
		{
			m_pEntity->SetFlags(flags | ENTITY_FLAG_TRIGGER_AREAS);
		}
	}
	else
	{
		if (flags & ENTITY_FLAG_TRIGGER_AREAS)
		{
			m_pEntity->SetFlags(flags & ~ENTITY_FLAG_TRIGGER_AREAS);
		}
	}
}
