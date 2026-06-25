#pragma once

#include "Item.h"

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>
#include <CrySchematyc/ResourceTypes.h>

class CInventoryComponent final : public IEntityComponent
{
public:
	CInventoryComponent();
	virtual ~CInventoryComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CInventoryComponent>& desc)
	{
		desc.SetGUID("{6ECE4AEC-D4D9-488B-92DA-3321878F73B3}"_cry_guid);

		desc.SetEditorCategory("Game");
		desc.SetLabel("Inventory");
		desc.SetDescription("Gives the attached entity an inventory");
	}
	// ~IEntityComponent

//protected:
public:
	std::vector<EntityId> m_pItems;

public:
	void AddItem(Schematyc::ExplicitEntityId entityId);

	void CreateItem(Schematyc::EntityClassName className);
};