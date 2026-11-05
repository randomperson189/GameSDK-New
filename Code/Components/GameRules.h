#pragma once

class CGameRulesComponent final : public IEntityComponent
{
public:
	CGameRulesComponent();
	virtual ~CGameRulesComponent();

	// IEntityComponent
	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CGameRulesComponent>& desc)
	{
		desc.SetGUID("{F8976D91-C4C8-4EE8-A58D-6EE6149FAC07}"_cry_guid);

		desc.SetEditorCategory("Game");
		desc.SetLabel("GameRules");
		desc.SetDescription("Component for GameRules");
		desc.SetComponentFlags({ IEntityComponent::EFlags::HideFromInspector });
	}
	// ~IEntityComponent
};