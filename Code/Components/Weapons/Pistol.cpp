#include "StdAfx.h"
#include "Components/Weapons/Pistol.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>

namespace
{
	static void RegisterPistolBehaviorComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CPistolBehaviorComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterPistolBehaviorComponent);
}

CPistolBehaviorComponent::CPistolBehaviorComponent() 
{
}

CPistolBehaviorComponent::~CPistolBehaviorComponent()
{
}

void CPistolBehaviorComponent::Initialize()
{
}

/*Cry::Entity::EventFlags CPistolBehaviorComponent::GetEventMask() const
{
}

void CPistolBehaviorComponent::ProcessEvent(const SEntityEvent & event)
{
}*/

void CPistolBehaviorComponent::Equip()
{

}
void CPistolBehaviorComponent::Holster()
{

}

void CPistolBehaviorComponent::Reload()
{

}

void CPistolBehaviorComponent::StartFire()
{
	/*if (IEntity* owner = gEnv->pEntitySystem->GetEntity(m_Owner))
	{
		if (auto* playercomp = owner->GetComponent<CPlayerComponent>())
		{
			// Define the animation component's interface ID (from ReflectType)
			const CryInterfaceID animComponentID = "{3CD5DDC5-EE15-437F-A997-79C2391537FE}"_cry_guid;

			// Array to store all components of this type
			DynArray<IEntityComponent*> components;
			owner->GetComponentsByTypeId(animComponentID, components);

			// Get the advanced animation components, responsible for updating Mannequin and animating the player
			if (components.size() > 0)
			{
				if (Cry::DefaultComponents::CAdvancedAnimationComponent* m_pAnimationComponent3P = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[0]))
				{
					m_pAnimationComponent3P->SetTag("SDKPistol", true);
				}
			}
			if (components.size() > 1)
			{
				if (Cry::DefaultComponents::CAdvancedAnimationComponent* m_pAnimationComponent1P = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[1]))
				{
					m_pAnimationComponent1P->SetTag("SDKPistol", true);
				}
			}

			playercomp->QueueFragmentOnScope("select", EPlayerScopes::Scope_2, 99, false);
		}
	}

	CryLogAlways("Pistol fired from C++");*/
}
void CPistolBehaviorComponent::StopFire()
{

}

void CPistolBehaviorComponent::StartAltFire()
{

}
void CPistolBehaviorComponent::StopAltFire()
{

}