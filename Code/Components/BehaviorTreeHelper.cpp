#include "StdAfx.h"
#include "BehaviorTreeHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>

namespace
{
	static void RegisterBehaviorTreeHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CBehaviorTreeHelperComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CBehaviorTreeHelperComponent::SetStatus, "{A12A8B9E-8ED7-473F-9651-9856802829D4}"_cry_guid, "SetStatus");
				pFunction->BindInput(1, 'stat', "Status", "Status of the current behavior tree node");
				componentScope.Register(pFunction);
			}

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CBehaviorTreeHelperComponent::SReceivedSignal));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterBehaviorTreeHelperComponent);
}

static void ReflectType(Schematyc::CTypeDesc<CBehaviorTreeHelperComponent::SReceivedSignal>& desc)
{
	desc.SetGUID("{C21E4999-FDF4-4B25-8692-F50349DA11E4}"_cry_guid);
	desc.SetLabel("Received Signal");
	desc.AddMember(&CBehaviorTreeHelperComponent::SReceivedSignal::signalName, 'snam', "SignalName", "Signal Name", "", "");
}

CBehaviorTreeHelperComponent::CBehaviorTreeHelperComponent() 
{
}

CBehaviorTreeHelperComponent::~CBehaviorTreeHelperComponent()
{
}

void CBehaviorTreeHelperComponent::Initialize()
{
	m_pBehaviorTreeComponent = m_pEntity->GetOrCreateComponent<IEntityBehaviorTreeComponent>();
}

void CBehaviorTreeHelperComponent::SendSchematycSignal(Schematyc::CSharedString name)
{
	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		m_pEntity->GetSchematycObject()->ProcessSignal(SReceivedSignal(name), GetGUID());
	}
}

void CBehaviorTreeHelperComponent::SetStatus(const EStatus& status)
{
	if (m_pBehaviorTreeComponent->IsRunning())
	{
		const char* szEventName = nullptr;

		switch (status)
		{
		case EStatus::Success:
			szEventName = "SchematycSuccess";
			break;
		case EStatus::Failure:
			szEventName = "SchematycFailure";
			break;
		case EStatus::Running:
			szEventName = "SchematycRunning";
			break;
		case EStatus::Invalid:
			szEventName = "SchematycInvalid";
			break;
		default:
			szEventName = "SchematycInvalid";
			break;
		}

		if (szEventName)
		{
			BehaviorTree::Event ev(szEventName);
			gEnv->pAISystem->GetIBehaviorTreeManager()->HandleEvent(GetEntityId(), ev);
		}
	}
}