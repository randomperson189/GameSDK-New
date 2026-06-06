#pragma once

#include <CryFlowGraph/IFlowBaseNode.h>
#include "Components/AreaTrigger.h"

class CAreaTriggerNode final : public CFlowBaseNode<eNCT_Instanced>
{
public:
	CAreaTriggerNode(SActivationInfo* pActInfo);

	virtual IFlowNodePtr Clone(SActivationInfo* pActInfo) override;
	virtual void GetConfiguration(SFlowNodeConfig& config) override;
	virtual void ProcessEvent(EFlowEvent event, SActivationInfo* pActInfo) override;
	virtual void GetMemoryUsage(ICrySizer* s) const override;

private:
	CAreaTriggerComponent* m_pTrigger = nullptr;
};