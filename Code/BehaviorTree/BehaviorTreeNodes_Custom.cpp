#include "StdAfx.h"

// Must include the header where your class is defined
#include "BehaviorTreeNodes_Custom.h"

using namespace BehaviorTree;

namespace BehaviorTree
{
	void RegisterBehaviorTreeNodes_Custom()
	{
		IBehaviorTreeManager& manager = *gEnv->pAISystem->GetIBehaviorTreeManager();

		const char* COLOR_GAME = "ff00ff";
		REGISTER_BEHAVIOR_TREE_NODE_WITH_SERIALIZATION(manager, ExecuteSchematycNode, "Custom\\Execute Schematyc Signal", COLOR_GAME);
	}
}