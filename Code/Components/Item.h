#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

class CItemComponent final : public IEntityComponent
{
	static constexpr EEntityAspects ItemAspect = eEA_GameServerB;

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

	virtual bool NetSerialize(TSerialize ser, EEntityAspects aspect, uint8 profile, int flags) override;
	virtual NetworkAspectType GetNetSerializeAspectMask() const override { return ItemAspect; }
	// ~IEntityComponent

	void OnAdded();
	void OnRemoved();

	Schematyc::ExplicitEntityId GetOwner() { return Schematyc::ExplicitEntityId(m_pOwner); };
	void SetOwner(Schematyc::ExplicitEntityId entityId) { m_pOwner = static_cast<EntityId>(entityId); };

protected:
	EntityId m_pOwner;
};