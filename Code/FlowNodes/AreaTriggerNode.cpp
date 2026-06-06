
#include "AreaTriggerNode.h"

enum EFlowgraphInputPorts
{
	eInputPorts_Enable = 0,
	eInputPorts_Disable
};

enum EFlowgraphOutputPorts
{
	eOutputPorts_Disabled = 0,
	eOutputPorts_Enabled,
	eOutputPorts_Enter,
	eOutputPorts_Leave,
	eOutputPorts_Sender,
};

CAreaTriggerNode::CAreaTriggerNode(SActivationInfo* pActInfo)
{
}

IFlowNodePtr CAreaTriggerNode::Clone(SActivationInfo* pActInfo)
{
	return new CAreaTriggerNode(pActInfo);
}

void CAreaTriggerNode::GetConfiguration(SFlowNodeConfig& config)
{
	config.nFlags |= EFLN_TARGET_ENTITY;

	static const SInputPortConfig inputs[] = {
		InputPortConfig<bool>("Enable", ""),
		InputPortConfig_Void("Disable", ""),
		{ 0 }
	};
	static const SOutputPortConfig outputs[] = {
		OutputPortConfig_Void("Disabled"),
		OutputPortConfig_Void("Enabled"),
		OutputPortConfig<EntityId>("Enter"),
		OutputPortConfig<EntityId>("Leave"),
		OutputPortConfig<EntityId>("Sender"),
		{ 0 }
	};

	config.pInputPorts = inputs;
	config.pOutputPorts = outputs;
	config.SetCategory(EFLN_APPROVED);
}

void CAreaTriggerNode::ProcessEvent(EFlowEvent event, SActivationInfo* pActInfo)
{
	switch (event)
	{
	case eFE_SetEntityId:
	{
		if (pActInfo->pEntity)
		{
			if (CAreaTriggerComponent* triggerComponent = pActInfo->pEntity->GetComponent<CAreaTriggerComponent>())
			{
				m_pTrigger = triggerComponent;

				pActInfo->pGraph->SetRegularlyUpdated(pActInfo->myID, true);
			}
			else
			{
				pActInfo->pGraph->SetRegularlyUpdated(pActInfo->myID, false);

				m_pTrigger = nullptr;
			}
		}
		else
		{
			pActInfo->pGraph->SetRegularlyUpdated(pActInfo->myID, false);

			m_pTrigger = nullptr;
		}
	}
	break;
	case eFE_Update:
	{
		if (pActInfo->pEntity && m_pTrigger)
		{
			//const char* entityName = pActInfo->pEntity->GetName();

			if (m_pTrigger->bCanTriggerEnter)
			{
				ActivateOutput(pActInfo, eOutputPorts_Enter, 1);
				ActivateOutput(pActInfo, eOutputPorts_Sender, m_pTrigger->otherEntityId);

				m_pTrigger->otherEntityId = 0;
				m_pTrigger->bCanTriggerEnter = false;
			}
			if (m_pTrigger->bCanTriggerExit)
			{
				ActivateOutput(pActInfo, eOutputPorts_Leave, 1);
				ActivateOutput(pActInfo, eOutputPorts_Sender, m_pTrigger->otherEntityId);

				m_pTrigger->otherEntityId = 0;
				m_pTrigger->bCanTriggerExit = false;
			}
		}
	}
	break;
	case eFE_Activate:
	{
		if (IsPortActive(pActInfo, eInputPorts_Disable))
		{
			if (pActInfo->pEntity && m_pTrigger)
			{
				if (GetPortBool(pActInfo, eInputPorts_Enable))
				{
					m_pTrigger->bActive = true;

					ActivateOutput(pActInfo, eOutputPorts_Enabled, 1);
				}
				else
				{
					m_pTrigger->bActive = false;

					ActivateOutput(pActInfo, eOutputPorts_Disabled, 1);
				}
			}
		}
	}
	break;
	}
}

void CAreaTriggerNode::GetMemoryUsage(ICrySizer* s) const
{
	s->Add(*this);
}

REGISTER_FLOW_NODE("Entity:AreaTrigger", CAreaTriggerNode);