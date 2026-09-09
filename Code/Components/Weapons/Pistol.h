#pragma once

#include "Components/WeaponBehavior.h"
#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>

class CPistolBehaviorComponent : public CWeaponBehaviorComponent
{
public:
	CPistolBehaviorComponent();
	virtual ~CPistolBehaviorComponent();

	// IEntityComponent
	virtual void Initialize() override;

	/*virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;*/

	static void ReflectType(Schematyc::CTypeDesc<CPistolBehaviorComponent>& desc)
	{
		desc.SetGUID("{C5416B0C-4B55-456D-8B0B-26FE7CD9DD5A}"_cry_guid);

		desc.SetEditorCategory("Gameplay");
		desc.SetLabel("Pistol");
		desc.SetDescription("Component for C++ pistol behavior");
		desc.SetComponentFlags({ IEntityComponent::EFlags::HideFromInspector, IEntityComponent::EFlags::Singleton });
		desc.AddBase<CWeaponBehaviorComponent>();
	}
	// ~IEntityComponent

	virtual void Equip() override;
	virtual void Holster() override;

	virtual void Reload() override;

	virtual void StartFire() override;
	virtual void StopFire() override;

	virtual void StartAltFire() override;
	virtual void StopAltFire() override;
};