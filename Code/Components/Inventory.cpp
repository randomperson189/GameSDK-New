#include "StdAfx.h"
#include "Inventory.h"
#include "Item.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <DefaultComponents/Input/InputComponent.h>

namespace
{
	static void RegisterInventoryComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CInventoryComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterInventoryComponent);
}

CInventoryComponent::CInventoryComponent() 
{
}

CInventoryComponent::~CInventoryComponent()
{
}

void CInventoryComponent::Initialize()
{
}

void CInventoryComponent::AddItem(Schematyc::ExplicitEntityId entityId)
{
	if (IEntity* myEntity = gEnv->pEntitySystem->GetEntity((EntityId)entityId))
	{
		if (CItemComponent* myItem = myEntity->GetComponent<CItemComponent>())
		{
			m_pItems.push_back((EntityId)entityId);

			myItem->SetOwner(Schematyc::ExplicitEntityId(m_pEntity->GetId()));
		}
	}
}

void CInventoryComponent::CreateItem(Schematyc::EntityClassName className)
{
}
