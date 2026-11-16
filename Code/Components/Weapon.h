// Copyright 2016-2019 Crytek GmbH / Crytek Group. All rights reserved.
#pragma once

#include "Player.h"

#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CryCore/StaticInstanceList.h>
#include <CryPhysics/physinterface.h>
#include <CryEntitySystem/IEntitySystem.h>

#include <DefaultComponents/Geometry/StaticMeshComponent.h>
#include <DefaultComponents/Effects/ParticleComponent.h>

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
		desc.SetComponentFlags({ IEntityComponent::EFlags::HideFromInspector, IEntityComponent::EFlags::Singleton });

		desc.AddMember(&CWeaponComponent::m_pDisplayName, 'dsn', "DisplayName", "Display Name", "Weapon display name", "Weapon Name");
		desc.AddMember(&CWeaponComponent::m_pAnimCodeName, 'acn', "AnimCodeName", "Animation Code Name", "Weapon name in animation code (e.g. Mannequin tags and fragments)", "Weapon Code Name");
		desc.AddMember(&CWeaponComponent::m_pWeaponType, 'wpt', "WeaponType", "Weapon Type", "Weapon type in animation code (e.g. AimPose)", "Weapon Type");
		desc.AddMember(&CWeaponComponent::m_pDamage, 'dmg', "Damage", "Damage", "Damage of the weapon", 5);
		desc.AddMember(&CWeaponComponent::PFX1MuzzleFlashEffect1P, 'mf1', "PFX1MuzzleFlashEffect1P", "Muzzle Flash Effect 1P (PFX1)", "Legacy PFX1 muzzle flash effect in firstperson", "weapon_fx.pistol.muzzle_flash.muzzle_flash_fp");
		desc.AddMember(&CWeaponComponent::MuzzleFlashAttachment1P, 'ma1', "MuzzleFlashAttachment1P", "Muzzle Flash Attachment 1P", "Attachment for muzzle flash effect in firstperson", "muzzleflash_effect");
		desc.AddMember(&CWeaponComponent::PFX1MuzzleFlashEffect3P, 'mf3', "PFX1MuzzleFlashEffect3P", "Muzzle Flash Effect 3P (PFX1)", "Legacy PFX1 muzzle flash effect in thirdperson", "weapon_fx.pistol.muzzle_flash.muzzle_flash_tp");
		desc.AddMember(&CWeaponComponent::MuzzleFlashOffset3P, 'mo3', "MuzzleFlashOffset3P", "Muzzle Flash Offset 3P", "Offset for muzzle flash effect in thirdperson", CryTransform::CTransform());
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

	void DoMuzzleFlash(Schematyc::ParticleEffectName effectName);
	void DoLegacyPFX1MuzzleFlash();

	void SetMuzzleFlashOffset3P(CryTransform::CTransform transform) { MuzzleFlashOffset3P = transform; }

	void QueueFragmentOnScopes(Schematyc::CSharedString fragment, bool trumpPreviousFragment);

	Schematyc::CSharedString m_pDisplayName;
	Schematyc::CSharedString m_pAnimCodeName;
	Schematyc::CSharedString m_pWeaponType;

	void AttachToHand();
	void AttachToBack();
	void AttachToNone();

	void Equip();
	void Holster();

	void Reload();

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

	struct SReload
	{
		SReload() = default;
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

protected:
	CItemComponent* m_pItemComponent = nullptr;
	Cry::DefaultComponents::CStaticMeshComponent* m_pMeshComponent = nullptr;
	Cry::DefaultComponents::CAdvancedAnimationComponent* m_pAnimationComponent = nullptr;

	// PFX1 particle emitters
	IParticleEmitter* m_pPFX1MuzzleFlashEmitter1P;
	IParticleEmitter* m_pPFX1MuzzleFlashEmitter3P;

	Schematyc::CSharedString PFX1MuzzleFlashEffect1P;
	Schematyc::CSharedString MuzzleFlashAttachment1P;

	Schematyc::CSharedString PFX1MuzzleFlashEffect3P;
	CryTransform::CTransform MuzzleFlashOffset3P;

	int m_pDamage;
	int m_pWeaponPriority = 1;

	IActionPtr m_pWeaponAction;
};