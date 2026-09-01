#include "StdAfx.h"

// Must include the header where your class is defined
#include "BehaviorTreeNodes_Custom.h"

#include "Components/BehaviorTreeHelper.h"

using namespace BehaviorTree;

//////////////////////////////////////////////////////////////////////////
// ExecuteSchematycNode
//////////////////////////////////////////////////////////////////////////

void ExecuteSchematycNode::OnInitialize(const UpdateContext& context)
{
	BaseClass::OnInitialize(context);

	// TODO: initialize runtime state here

	RuntimeData& data = GetRuntimeData<RuntimeData>(context);

	data.status = BehaviorTree::Status::Running;

	IEntity* pEntity = gEnv->pEntitySystem->GetEntity(context.entityId);

	if (pEntity)
	{
		if (CBehaviorTreeHelperComponent* pBehaviorTreeHelperComponent = pEntity->GetComponent<CBehaviorTreeHelperComponent>())
		{
			pBehaviorTreeHelperComponent->SendSchematycSignal(m_signalName);
		}
	}
}

//////////////////////////////////////////////////////////////////////////

void ExecuteSchematycNode::OnTerminate(const UpdateContext& context)
{
	// TODO: cleanup logic here

	BaseClass::OnTerminate(context);
}

//////////////////////////////////////////////////////////////////////////

Status ExecuteSchematycNode::Update(const UpdateContext& context)
{
	// TODO: node logic here

	RuntimeData& data = GetRuntimeData<RuntimeData>(context);

	return data.status;
}

//////////////////////////////////////////////////////////////////////////

LoadResult ExecuteSchematycNode::LoadFromXml(
	const XmlNodeRef& xml,
	const LoadContext& context,
	const bool isLoadingFromEditor)
{
	LoadResult result = BaseClass::LoadFromXml(xml, context, isLoadingFromEditor);

	// TODO: read XML attributes if needed

	const char* signalName = nullptr;

	if (xml->getAttr("SignalName", &signalName))
	{
		m_signalName = signalName;
	}

	return result;
}

//////////////////////////////////////////////////////////////////////////

#ifdef USING_BEHAVIOR_TREE_XML_DESCRIPTION_CREATION

XmlNodeRef ExecuteSchematycNode::CreateXmlDescription()
{
	XmlNodeRef xml = BaseClass::CreateXmlDescription();

	xml->setTag("ExecuteSchematycNode");

	xml->setAttr("SignalName", m_signalName.c_str());

	return xml;
}

#endif

//////////////////////////////////////////////////////////////////////////

#ifdef USING_BEHAVIOR_TREE_SERIALIZATION

void ExecuteSchematycNode::Serialize(Serialization::IArchive& archive)
{
	BaseClass::Serialize(archive);

	// TODO: expose variables to editor if needed
	archive(m_signalName, "EventName", "Signal Name");
}

#endif

//////////////////////////////////////////////////////////////////////////

#ifdef DEBUG_MODULAR_BEHAVIOR_TREE

void ExecuteSchematycNode::GetCustomDebugText(
	const UpdateContext& updateContext,
	stack_string& debugText) const
{
	debugText = "ExecuteSchematycNode";
}

#endif

//////////////////////////////////////////////////////////////////////////

void ExecuteSchematycNode::HandleEvent(const EventContext& context, const Event& event)
{
	// TODO: handle BT events if needed

	RuntimeData& data = GetRuntimeData<RuntimeData>(context);

	if (event.GetName() == "SchematycSuccess")
	{
		data.status = BehaviorTree::Status::Success;
	}
	else if (event.GetName() == "SchematycFailure")
	{
		data.status = BehaviorTree::Status::Failure;
	}
	else if (event.GetName() == "SchematycRunning")
	{
		data.status = BehaviorTree::Status::Running;
	}
	else if (event.GetName() == "SchematycInvalid")
	{
		data.status = BehaviorTree::Status::Invalid;
	}
}