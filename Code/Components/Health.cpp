#include "Health.h"
#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/IObject.h>

namespace
{
	static void RegisterHealthComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CHealthComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CHealthComponent::TakeDamage, "{DCB1178D-7C55-4FEB-B7A3-65BED0A8C3D1}"_cry_guid, "Take Damage");
				pFunction->BindInput(1, 'dmg', "Damage", "Damage to take");
				componentScope.Register(pFunction);
			}

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CHealthComponent::SOnTakeDamage));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterHealthComponent);
}

static void ReflectType(Schematyc::CTypeDesc<CHealthComponent::SOnTakeDamage>& desc)
{
	desc.SetGUID("{A7552217-D5EE-4F8D-A7C2-7D16EFA33A13}"_cry_guid);
	desc.SetLabel("On TakeDamage");
}

CHealthComponent::CHealthComponent() 
{

}

CHealthComponent::~CHealthComponent() 
{

}

void CHealthComponent::Initialize()
{

}

Cry::Entity::EventFlags CHealthComponent::GetEventMask() const 
{
	return Cry::Entity::EEvent::Reset;
}

void CHealthComponent::ProcessEvent(const SEntityEvent& event) 
{

}

void CHealthComponent::TakeDamage(int damage)
{
	if (damage <= 0 || m_Health <= 0)
		return;

	// Armor absorbs damage first
	if (m_Armor > 0)
	{
		int absorbed = std::min(m_Armor, damage);

		m_Armor -= absorbed;
		damage -= absorbed;
	}

	// Remaining damage affects health
	if (damage > 0)
	{
		m_Health -= damage;

		// Clamp health to 0
		if (m_Health < 0)
			m_Health = 0;
	}

	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		// Our local player has initialized, call the Schematyc signal for it now
		m_pEntity->GetSchematycObject()->ProcessSignal(SOnTakeDamage(), GetGUID());
	}
}

