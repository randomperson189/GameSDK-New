// Copyright 2016-2019 Crytek GmbH / Crytek Group. All rights reserved.
#pragma once

#include "StdAfx.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CryCore/StaticInstanceList.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CryPhysics/physinterface.h>
#include <CryEntitySystem/IEntitySystem.h>

#include <CrySchematyc/Env/Elements/EnvSignal.h>

#include <DefaultComponents/Geometry/StaticMeshComponent.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CWeaponComponent final : public IEntityComponent
{
public:
	CWeaponComponent();
	virtual ~CWeaponComponent();

	static constexpr EEntityAspects PhysicsAspect = eEA_GameClientA;

	//virtual NetworkAspectType GetNetSerializeAspectMask() const override { return PhysicsAspect; }

	//virtual bool NetSerialize(TSerialize ser, EEntityAspects aspect, uint8, int flags) override;

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CWeaponComponent>& desc)
	{
		desc.SetGUID("{A7822024-0228-4D13-AF99-043F418FA36D}"_cry_guid);

		desc.SetEditorCategory("Gameplay");
		desc.SetLabel("Weapon Component");
		desc.SetDescription("Component for a weapon");
		desc.SetComponentFlags({ IEntityComponent::EFlags::HideFromInspector });

		desc.AddMember(&CWeaponComponent::m_Damage, 'dmg', "Damage", "Damage", "Damage of the weapon", 5);
	}

	virtual Cry::Entity::EventFlags GetEventMask() const override;

	virtual void ProcessEvent(const SEntityEvent& event) override;
	// ~IEntityComponent

	void SetMesh(Schematyc::GeomFileName szPath);
	void SetMeshTransform(CryTransform::CTransform transform);

	Schematyc::ExplicitEntityId GetOwner();
	void SetOwner(Schematyc::ExplicitEntityId entityId);

protected:
	Cry::DefaultComponents::CStaticMeshComponent* m_pMeshComponent = nullptr;
	int m_Damage;

	EntityId m_Owner;

public:
	void AttachToHand();

	void Equip();
	//void Holster();

	void StartFire();
	void StopFire();

	void StartAltFire();
	void StopAltFire();

	struct SMulticastEquip
	{
		SMulticastEquip() = default;
	};

	struct SServerStartFire
	{
		SServerStartFire() = default;
	};
	struct SServerStopFire
	{
		SServerStopFire() = default;
	};

	struct SServerStartAltFire
	{
		SServerStartAltFire() = default;
	};
	struct SServerStopAltFire
	{
		SServerStopAltFire() = default;
	};
};