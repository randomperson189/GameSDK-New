#include "StdAfx.h"
#include "Team.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>

namespace
{
	static void RegisterTeamComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CTeamComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CTeamComponent::SetTeamSchematyc, "{9B5CB8FB-350D-4768-9CAD-48236F369A24}"_cry_guid, "SetTeamId");
				pFunction->SetDescription("Set team of this entity");
				pFunction->BindInput(1, 'team', "TeamId");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CTeamComponent::GetTeamSchematyc, "{CA5F3864-29F9-41D4-8999-941E8804DA75}"_cry_guid, "GetTeamId");
				pFunction->SetDescription("Get team of this entity");
				pFunction->BindOutput(0, 'team', "TeamId");
				componentScope.Register(pFunction);
			}

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CTeamComponent::STeamChanged));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterTeamComponent);
}

static void ReflectType(Schematyc::CTypeDesc<CTeamComponent::STeamChanged>& desc)
{
	desc.SetGUID("{505A6CCF-5D2F-4DDD-AA18-49BC2192BD4D}"_cry_guid);
	desc.SetLabel("TeamChanged");
}

CTeamComponent::CTeamComponent() 
{
}

CTeamComponent::~CTeamComponent()
{
}

void CTeamComponent::Initialize()
{
}

Cry::Entity::EventFlags CTeamComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::Initialize |
		Cry::Entity::EEvent::EditorPropertyChanged;
}

void CTeamComponent::ProcessEvent(const SEntityEvent & event)
{
	switch (event.event)
	{
	case Cry::Entity::EEvent::Initialize:
	{
		TeamChanged();
	}
	break;
	case Cry::Entity::EEvent::EditorPropertyChanged:
	{
	}
	break;
	}
}

bool CTeamComponent::NetSerialize(TSerialize ser, EEntityAspects aspect, uint8 profile, int flags)
{
	if (aspect == TeamAspect)
	{
		ser.BeginGroup("Team");

		// Set the new value from server
		uint8 teamValue = static_cast<uint8>(m_team);
		ser.Value("m_team", teamValue, 'ui8');

		if (ser.IsReading())
		{
			m_team = static_cast<ETeam>(teamValue);
			TeamChanged();
		}

		ser.EndGroup();
	}

	return true;
}

ETeam CTeamComponent::GetTeam()
{
	return m_team;
}

void CTeamComponent::SetTeam(ETeam team)
{
	if (m_team != team && gEnv->bServer)
	{
		m_team = team;
		NetMarkAspectsDirty(TeamAspect);

		TeamChanged();
	}
}

void CTeamComponent::TeamChanged()
{
	// Put code here

	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		m_pEntity->GetSchematycObject()->ProcessSignal(STeamChanged(), GetGUID());
	}
}