#include "StdAfx.h"
#include "Timer.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>

namespace
{
	static void RegisterTimerComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CTimerComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CTimerComponent::SetTimerSchematyc, "{61994F63-291F-492D-90DB-E95257C10D0A}"_cry_guid, "Set Timer");
				pFunction->BindInput(1, 'tid', "Timer Id", "Timer Id");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CTimerComponent::KillTimerSchematyc, "{2A0891B5-BFA8-4996-BE8C-DEFEAAC931BC}"_cry_guid, "Kill Timer");
				pFunction->BindInput(1, 'tid', "Timer Id", "Timer Id");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterTimerComponent);
}

static void ReflectType(Schematyc::CTypeDesc<CTimerComponent::SOnTimer>& desc)
{
	desc.SetGUID("{EFBB0F8A-002D-45E3-8896-93CE7458D29E}"_cry_guid);
	desc.SetLabel("On Timer");
	desc.AddMember(&CTimerComponent::SOnTimer::timerId, 'tid', "TimerId", "Timer Id", "Timer Id", "0");
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

Cry::Entity::EventFlags CTimerComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::TimerExpired;
}

void CTimerComponent::ProcessEvent(const SEntityEvent& event)
{
	switch (event.event)
	{
	case Cry::Entity::EEvent::TimerExpired:
	{
		if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
		{
			m_pEntity->GetSchematycObject()->ProcessSignal(SOnTimer((int)event.nParam[0]), GetGUID());
		}
	}
	break;
	}
}

void CTimerComponent::SetTimerSchematyc(uint32 timerId, int timeInMilliseconds)
{
	SetTimer(timerId, timeInMilliseconds);
}

void CTimerComponent::KillTimerSchematyc(uint32 timerId)
{
	KillTimer(timerId);
}

