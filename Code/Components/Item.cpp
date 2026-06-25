#include "StdAfx.h"
#include "Item.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <DefaultComponents/Input/InputComponent.h>

namespace
{
	static void RegisterItemComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CItemComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CItemComponent::SetOwner, "{164C0A28-46C2-495E-8CBF-3FAFA1395E2E}"_cry_guid, "Set Owner");
				pFunction->BindInput(1, 'own', "Owner", "Owner");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CItemComponent::GetOwner, "{883C8332-E98D-4370-BB70-E74BAEA1C2D9}"_cry_guid, "Get Owner");
				pFunction->BindOutput(0, 'own', "Owner", "Owner");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterItemComponent);
}

CItemComponent::CItemComponent() 
{
}

CItemComponent::~CItemComponent()
{
}

void CItemComponent::Initialize()
{
}

bool CItemComponent::NetSerialize(TSerialize ser, EEntityAspects aspect, uint8 profile, int flags)
{
	if (aspect == ItemAspect)
	{
		ser.BeginGroup("Owner");

		// Set the new value from server
		ser.Value("m_pOwner", m_pOwner, 'eid');

		if (ser.IsReading())
		{
			if (IEntity* pOwner = gEnv->pEntitySystem->GetEntity(m_pOwner))
			{
				if (auto* pInventory = pOwner->GetComponent<CInventoryComponent>())
				{
					pInventory->AddItem(Schematyc::ExplicitEntityId(m_pEntity->GetId()));
				}
			}
		}

		ser.EndGroup();
	}

	return true;
}

void CItemComponent::SetOwner(Schematyc::ExplicitEntityId entityId)
{
	m_pOwner = static_cast<EntityId>(entityId);
}

Schematyc::ExplicitEntityId CItemComponent::GetOwner()
{
	return Schematyc::ExplicitEntityId(m_pOwner);
}
