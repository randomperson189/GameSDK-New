#pragma once

#include "StdAfx.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CryCore/StaticInstanceList.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CryPhysics/physinterface.h>
#include <CryEntitySystem/IEntitySystem.h>

class CAreaTriggerComponent final : public IEntityComponent
{
public:
	virtual ~CAreaTriggerComponent() {}

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CAreaTriggerComponent>& desc)
	{
		desc.SetGUID("{A30FB263-68EB-45AD-A569-5463FD6F426A}"_cry_guid);
		desc.SetEditorCategory("Game");
		desc.SetLabel("Area Trigger");
		desc.SetDescription("This will make attached areas act as triggers");
	}

	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;

	virtual void ProcessEvent(const SEntityEvent& event) override;

public:
	bool bCanTriggerEnter = false;
	bool bCanTriggerExit = false;
	bool bActive = true;
	EntityId otherEntityId = 0;
};