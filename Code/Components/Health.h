// Copyright 2016-2019 Crytek GmbH / Crytek Group. All rights reserved.
#pragma once

#include "StdAfx.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CryCore/StaticInstanceList.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CryPhysics/physinterface.h>
#include <CryEntitySystem/IEntitySystem.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from Healthry, expires on collision with another object
////////////////////////////////////////////////////////
class CHealthComponent final : public IEntityComponent
{
public:
	CHealthComponent();
	virtual ~CHealthComponent();

	static constexpr EEntityAspects PhysicsAspect = eEA_GameClientA;

	//virtual NetworkAspectType GetNetSerializeAspectMask() const override { return PhysicsAspect; }

	//virtual bool NetSerialize(TSerialize ser, EEntityAspects aspect, uint8, int flags) override;

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CHealthComponent>& desc)
	{
		desc.SetGUID("{8B5ADBE4-7A26-451B-B175-68211D2DD1EB}"_cry_guid);

		desc.SetEditorCategory("Gameplay");
		desc.SetLabel("Health");
		desc.SetDescription("Component for Health");
		desc.SetComponentFlags({ IEntityComponent::EFlags::HideFromInspector });

		desc.AddMember(&CHealthComponent::m_MaxHealth, 'mhlt', "MaxHealth", "Max Health", "Max Health", 100);
		desc.AddMember(&CHealthComponent::m_Health, 'hlt', "Health", "Health", "Health", 100);

		desc.AddMember(&CHealthComponent::m_MaxArmor, 'marm', "MaxArmor", "Max Armor", "Max Armor", 100);
		desc.AddMember(&CHealthComponent::m_Armor, 'arm', "Armor", "Armor", "Armor", 0);
	}

	virtual Cry::Entity::EventFlags GetEventMask() const override;

	virtual void ProcessEvent(const SEntityEvent& event) override;
	// ~IEntityComponent

	void SetMaxHealth(int maxhealth);
	void SetHealth(int health);

	void SetMaxArmor(int maxarmor);
	void SetArmor(int armor);

	void TakeDamage(int damage);

	struct SOnTakeDamage
	{
		SOnTakeDamage() = default;
	};

protected:
	int m_Health;
	int m_MaxHealth;

	int m_Armor;
	int m_MaxArmor;
};