#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryPhysics/physinterface.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>

class CGameRulesBehaviorComponent : public IEntityComponent
{
public:
	CGameRulesBehaviorComponent();
	virtual ~CGameRulesBehaviorComponent();

	// IEntityComponent
	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;

	static void ReflectType(Schematyc::CTypeDesc<CGameRulesBehaviorComponent>& desc)
	{
		desc.SetGUID("{EA00EF5E-877B-4F60-9850-9A66C3B0A8D4}"_cry_guid);

		desc.SetEditorCategory("Game");
		desc.SetLabel("GameRules Behavior");
		desc.SetDescription("Component for C++ GameRules behavior");
		desc.SetComponentFlags({ IEntityComponent::EFlags::HideFromInspector });
	}
	// ~IEntityComponent
};