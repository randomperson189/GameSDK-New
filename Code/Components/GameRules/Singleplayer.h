#pragma once

#include "Components/GameRulesBehavior.h"
#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>

class CSinglePlayerBehaviorComponent : public CGameRulesBehaviorComponent
{
public:
	CSinglePlayerBehaviorComponent();
	virtual ~CSinglePlayerBehaviorComponent();

	// IEntityComponent
	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CSinglePlayerBehaviorComponent>& desc)
	{
		desc.SetGUID("{F720E26F-B9CA-48C4-87D5-9A898782CD79}"_cry_guid);

		desc.SetEditorCategory("Game");
		desc.SetLabel("SinglePlayer");
		desc.SetDescription("SinglePlayer GameRules");
		desc.SetComponentFlags({ IEntityComponent::EFlags::HideFromInspector });
		desc.AddBase<CGameRulesBehaviorComponent>();
	}
	// ~IEntityComponent
};