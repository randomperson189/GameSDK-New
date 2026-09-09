#pragma once

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CryCore/StaticInstanceList.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CryPhysics/physinterface.h>
#include <CryEntitySystem/IEntitySystem.h>

#include <CrySchematyc/Env/Elements/EnvSignal.h>

class CWeaponBehaviorComponent : public IEntityComponent
{
public:
	CWeaponBehaviorComponent();
	virtual ~CWeaponBehaviorComponent();

	// IEntityComponent
	virtual void Initialize() override;

	/*virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;*/

	static void ReflectType(Schematyc::CTypeDesc<CWeaponBehaviorComponent>& desc)
	{
		desc.SetGUID("{F7E549D5-2333-4459-B584-2D0FE3EAE513}"_cry_guid);

		desc.SetEditorCategory("Gameplay");
		desc.SetLabel("Weapon Behavior");
		desc.SetDescription("Component for C++ weapon behavior");
		desc.SetComponentFlags({ IEntityComponent::EFlags::HideFromInspector, IEntityComponent::EFlags::Singleton });
	}
	// ~IEntityComponent

	virtual void Equip();
	virtual void Holster();

	virtual void Reload();

	virtual void StartFire();
	virtual void StopFire();

	virtual void StartAltFire();
	virtual void StopAltFire();
};