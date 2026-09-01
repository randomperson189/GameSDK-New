#pragma once

#include "StdAfx.h"

// Include BehaviorTreeDefines first!
#include <CryAISystem/BehaviorTree/BehaviorTreeDefines.h>

#include <CryAISystem/BehaviorTree/Action.h>
#include <CryAISystem/BehaviorTree/IBehaviorTree.h>
#include <CryAISystem/BehaviorTree/NodeFactory.h>

#include <CrySerialization/yasli/Archive.h>
#include <CrySerialization/yasli/ClassFactory.h>
#include <CrySerialization/ClassFactory.h>
#include <CrySerialization/Enum.h>

// BehaviorTreeNodes_Custom.h

// Although we're creating an Action node, the syntax would be the same for a Decorator or a Composite node as well.
class ExecuteSchematycNode : public BehaviorTree::Action
{
	typedef BehaviorTree::Action BaseClass;

public:
	struct RuntimeData
	{
		BehaviorTree::Status status = BehaviorTree::Status::Invalid;
	};

	// Action (or Decorator or Composite). 
	//! Called before the first call to Update.
	virtual void OnInitialize(const BehaviorTree::UpdateContext& context) override;

	//! Called when a node is being terminated (Terminate was called).
	//! This can happen in the following cases:
	//! a) The node returns Success/Failure in Update.
	//! b) Another node causes this node to Terminate while this node was running.
	virtual void OnTerminate(const BehaviorTree::UpdateContext& context) override;

	//! Do your node's work here.
	//! - Note that OnInitialize will have been automatically called for you before you get your first update.
	//! - If you return Success or Failure the node will automatically get OnTerminate called on itself.
	//! - If you return Running the node will keep running and it will be executed again the next frame.
	virtual BehaviorTree::Status Update(const BehaviorTree::UpdateContext& context) override;

	//! Load up a behavior tree node with information from an XML node.
	virtual BehaviorTree::LoadResult LoadFromXml(const XmlNodeRef& xml, const struct BehaviorTree::LoadContext& context, const bool isLoadingFromEditor) override;

#ifdef USING_BEHAVIOR_TREE_XML_DESCRIPTION_CREATION
	//! Save behavior tree node information in an XML node. Opposite of LoadFromXML.
	//! Saved information that is saved here should be read back when calling LoadFromXML and vice versa
	virtual XmlNodeRef CreateXmlDescription() override;
#endif // USING_BEHAVIOR_TREE_XML_DESCRIPTION_CREATION

#ifdef USING_BEHAVIOR_TREE_SERIALIZATION
	//! Serialize node data to be shown in the Interim Editor.
	//! All properties that are saved/loaded in the XML should be accessible (somehow) from the Editor.
	virtual void Serialize(Serialization::IArchive& archive) override;
#endif // USING_BEHAVIOR_TREE_SERIALIZATION

#ifdef DEBUG_MODULAR_BEHAVIOR_TREE
	// ! Information to be shown in the screen when Debug Tree (or cvar ai_ModularBehaviorTreeDebugTree) is enabled
	virtual void GetCustomDebugText(const BehaviorTree::UpdateContext& updateContext, stack_string& debugText) const override;
#endif // DEBUG_MODULAR_BEHAVIOR_TREE

	// ~Action (or Decorator or Composite).

private:
	// Only for Composite nodes.
	// This function determines how the Node will handle an Event.
	// A specific implementation for Composite nodes is required because we have to specify how the children will handle the event.
	virtual void HandleEvent(const BehaviorTree::EventContext& context, const BehaviorTree::Event& event) override;
	// Node data - member variables if required.
	string m_signalName;
};

namespace BehaviorTree
{
	// From your Game code, you need to call this function
	void RegisterBehaviorTreeNodes_Custom();
}