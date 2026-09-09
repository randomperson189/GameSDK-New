#pragma once

#include "Components/WeaponBehavior.h"
#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>

class CShotgunBehaviorComponent : public CWeaponBehaviorComponent
{
public:
	CShotgunBehaviorComponent();
	virtual ~CShotgunBehaviorComponent();

	// IEntityComponent
	virtual void Initialize() override;

	/*virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;*/

	static void ReflectType(Schematyc::CTypeDesc<CShotgunBehaviorComponent>& desc)
	{
		desc.SetGUID("{75A31896-0FEB-4FEA-B4B5-B8BDC4C689B3}"_cry_guid);

		desc.SetEditorCategory("Gameplay");
		desc.SetLabel("Shotgun");
		desc.SetDescription("Component for C++ Shotgun behavior");
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