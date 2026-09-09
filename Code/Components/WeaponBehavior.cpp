#include "StdAfx.h"
#include "WeaponBehavior.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>

// This component shouldn't be available in menus at all, only subclasses of it should
/*namespace
{
	static void RegisterWeaponBehaviorComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CWeaponBehaviorComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterWeaponBehaviorComponent);
}*/

CWeaponBehaviorComponent::CWeaponBehaviorComponent() 
{
}

CWeaponBehaviorComponent::~CWeaponBehaviorComponent()
{
}

void CWeaponBehaviorComponent::Initialize()
{
}

/*Cry::Entity::EventFlags CWeaponBehaviorComponent::GetEventMask() const
{
}

void CWeaponBehaviorComponent::ProcessEvent(const SEntityEvent & event)
{
	switch (event.event)
	{
	}
}*/

void CWeaponBehaviorComponent::Equip()
{
	// Subclass WeaponBehaviour and override this function
}

void CWeaponBehaviorComponent::Holster()
{
	// Subclass WeaponBehaviour and override this function
}

void CWeaponBehaviorComponent::Reload()
{
	// Subclass WeaponBehaviour and override this function
}

void CWeaponBehaviorComponent::StartFire()
{
	// Subclass WeaponBehaviour and override this function
}
void CWeaponBehaviorComponent::StopFire()
{
	// Subclass WeaponBehaviour and override this function
}

void CWeaponBehaviorComponent::StartAltFire()
{
	// Subclass WeaponBehaviour and override this function
}
void CWeaponBehaviorComponent::StopAltFire()
{
	// Subclass WeaponBehaviour and override this function
}