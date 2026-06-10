#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

class CItemComponent final : public IEntityComponent
{
public:
	CItemComponent();
	virtual ~CItemComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CItemComponent>& desc)
	{
		desc.SetGUID("{6EE9FD37-426A-46CB-8397-7AFE1A604E4B}"_cry_guid);

		desc.SetEditorCategory("Game");
		desc.SetLabel("Item");
		desc.SetDescription("This makes attached entities behave like an item");
	}
	// ~IEntityComponent

	void OnAdded();
	void OnRemoved();
};