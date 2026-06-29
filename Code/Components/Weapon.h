// Copyright 2016-2019 Crytek GmbH / Crytek Group. All rights reserved.
#pragma once

#include "Player.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CryCore/StaticInstanceList.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CryPhysics/physinterface.h>
#include <CryEntitySystem/IEntitySystem.h>

#include <CrySchematyc/Env/Elements/EnvSignal.h>

#include <DefaultComponents/Geometry/StaticMeshComponent.h>

class CWeaponComponent final : public IEntityComponent
{
public:
	CWeaponComponent();
	virtual ~CWeaponComponent();

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

		desc.AddMember(&CWeaponComponent::m_pDisplayName, 'dsn', "DisplayName", "Display Name", "Weapon display name", "Weapon Name");
		desc.AddMember(&CWeaponComponent::m_pAnimCodeName, 'acn', "AnimCodeName", "Animation Code Name", "Weapon name in animation code (e.g. Mannequin tags and fragments)", "Weapon Code Name");
		desc.AddMember(&CWeaponComponent::m_pWeaponType, 'wpt', "WeaponType", "Weapon Type", "Weapon type in animation code (e.g. AimPose)", "Weapon Type");
		desc.AddMember(&CWeaponComponent::m_pDamage, 'dmg', "Damage", "Damage", "Damage of the weapon", 5);
	}

	virtual Cry::Entity::EventFlags GetEventMask() const override;

	virtual void ProcessEvent(const SEntityEvent& event) override;
	// ~IEntityComponent

	void SetMesh(Schematyc::GeomFileName FilePath);
	void SetAnimationMesh(Schematyc::CharacterFileName FilePath);
	//void SetMeshTransform(CryTransform::CTransform transform);

	void SetDisplayName(Schematyc::CSharedString name);
	void SetWeaponType(Schematyc::CSharedString name);
	void SetAnimationCodeName(Schematyc::CSharedString name);
	void SetAnimationDatabase(Schematyc::MannequinAnimationDatabasePath FilePath);

	void SetShadowsOnly(bool shadowOnly);
	void SetMaterialOpacity(IStatObj* obj, int materialIndex, float opacity);

protected:
	Cry::DefaultComponents::CStaticMeshComponent* m_pMeshComponent = nullptr;
	Cry::DefaultComponents::CAdvancedAnimationComponent* m_pAnimationComponent = nullptr;
	CItemComponent* m_pItemComponent = nullptr;

public:
	Schematyc::CSharedString m_pDisplayName;
	Schematyc::CSharedString m_pAnimCodeName;
	Schematyc::CSharedString m_pWeaponType;
protected:

	int m_pDamage;

	IActionPtr m_pWeaponAction;

	int m_pWeaponPriority = 1;

public:
	void QueueFragmentOnScopes(Schematyc::CSharedString fragment, bool trumpPreviousFragment);

	void AttachToHand();
	void AttachToNone();

	void Equip();
	void Holster();

	void StartFire();
	void StopFire();

	void StartAltFire();
	void StopAltFire();

	struct SEquip
	{
		SEquip() = default;
	};
	struct SHolster
	{
		SHolster() = default;
	};

	struct SStartFire
	{
		SStartFire() = default;
	};
	struct SStopFire
	{
		SStopFire() = default;
	};

	struct SStartAltFire
	{
		SStartAltFire() = default;
	};
	struct SStopAltFire
	{
		SStopAltFire() = default;
	};
};