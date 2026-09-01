#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

#include <CryAISystem/BehaviorTree/BehaviorTreeDefines.h>
#include <CryAISystem/BehaviorTree/Action.h>
#include <CryAISystem/BehaviorTree/IBehaviorTree.h>
#include <CryAISystem/BehaviorTree/NodeFactory.h>

#include <CryAISystem/Components/IEntityBehaviorTreeComponent.h>

enum EStatus : uint32
{
	Invalid,
	Success,
	Failure,
	Running
};

static void ReflectType(Schematyc::CTypeDesc<EStatus>& desc)
{
	desc.SetGUID("{B35E6908-E1E2-43A1-A572-876F46CF7347}"_cry_guid);
	desc.SetLabel("Status");
	desc.AddConstant(EStatus::Invalid, "Invalid", "Invalid");
	desc.AddConstant(EStatus::Success, "Success", "Success");
	desc.AddConstant(EStatus::Failure, "Failure", "Failure");
	desc.AddConstant(EStatus::Running, "Running", "Running");
}

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CBehaviorTreeHelperComponent final : public IEntityComponent
{
public:
	CBehaviorTreeHelperComponent();
	virtual ~CBehaviorTreeHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CBehaviorTreeHelperComponent>& desc)
	{
		desc.SetGUID("{990EBD04-CC78-4810-B867-76E3E1A8554E}"_cry_guid);

		desc.SetEditorCategory("Helpers");
		desc.SetLabel("Behavior Tree Helper");
		desc.SetDescription("Component to help with Behavior Trees");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Singleton });
	}
	// ~IEntityComponent

	IEntityBehaviorTreeComponent* m_pBehaviorTreeComponent;

	void SendSchematycSignal(Schematyc::CSharedString name);

	void SetStatus(const EStatus& status);

	struct SReceivedSignal
	{
		SReceivedSignal() = default;
		SReceivedSignal(Schematyc::CSharedString signalName) : signalName(signalName) {}

		Schematyc::CSharedString signalName;
	};
};