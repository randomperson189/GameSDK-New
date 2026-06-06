#include "Weapon.h"
#include <DefaultComponents/Input/InputComponent.h>

namespace
{
	static void RegisterWeaponComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CWeaponComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CWeaponComponent::SetMesh, "{92A2650A-0917-45D0-AAB1-50180C4FACD7}"_cry_guid, "Set Mesh");
				pFunction->BindInput(1, 'fpth', "FilePath", "Mesh File Path");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CWeaponComponent::SetMeshTransform, "{BEB132ED-EC95-49C3-9D07-931F509DF270}"_cry_guid, "Set Mesh Transform");
				pFunction->BindInput(1, 'tr', "Transform", "Transform");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CWeaponComponent::SetOwner, "{164C0A28-46C2-495E-8CBF-3FAFA1395E2E}"_cry_guid, "Set Owner");
				pFunction->BindInput(1, 'own', "Owner", "Owner");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CWeaponComponent::GetOwner, "{883C8332-E98D-4370-BB70-E74BAEA1C2D9}"_cry_guid, "Get Owner");
				pFunction->BindOutput(0, 'own', "Owner", "Owner");
				componentScope.Register(pFunction);
			}

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CWeaponComponent::SFire));
			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CWeaponComponent::SAltFire));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterWeaponComponent);
}

CWeaponComponent::CWeaponComponent() 
{

}

CWeaponComponent::~CWeaponComponent() 
{

}

static void ReflectType(Schematyc::CTypeDesc<CWeaponComponent::SFire>& desc)
{
	desc.SetGUID("{2116C7EC-CBCA-46A9-A4D9-68EB37DFEF15}"_cry_guid);
	desc.SetLabel("Server Fire");
}

static void ReflectType(Schematyc::CTypeDesc<CWeaponComponent::SAltFire>& desc)
{
	desc.SetGUID("{13C1835A-29CD-4E9A-BCCD-537ED14C3B68}"_cry_guid);
	desc.SetLabel("Server AltFire");
}

void CWeaponComponent::Initialize()
{
	m_pMeshComponent = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CStaticMeshComponent>();

	// Mark the entity to be replicated over the network
	m_pEntity->GetNetEntity()->BindToNetwork();
}

Cry::Entity::EventFlags CWeaponComponent::GetEventMask() const 
{
	return Cry::Entity::EEvent::Reset;
}

void CWeaponComponent::ProcessEvent(const SEntityEvent& event) 
{
	/*{
		// Handle the OnCollision event, in order to have the entity removed on collision
		if (gEnv->bServer && event.event == Cry::Entity::EEvent::PhysicsCollision)
		{
			// Collision info can be retrieved using the event pointer
			// EventPhysCollision* physCollision = reinterpret_cast<EventPhysCollision*>(event.nParam[0]);

			// Queue removal of this entity, unless it has already been done
			gEnv->pEntitySystem->RemoveEntity(GetEntityId());

			CryLog("Hit something");
		}
	}*/
}

void CWeaponComponent::Fire()
{
	if (!m_pEntity)
		return;

	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		pSchematycObject->ProcessSignal(SFire(), GetGUID());
	}
}

void CWeaponComponent::AltFire()
{
	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		pSchematycObject->ProcessSignal(SAltFire(), GetGUID());
	}
}

void CWeaponComponent::SetMesh(Schematyc::GeomFileName FilePath)
{
	if (Cry::DefaultComponents::CStaticMeshComponent* meshComponent = m_pEntity->GetComponent<Cry::DefaultComponents::CStaticMeshComponent>())
	{
		if (FilePath.value != "")
		{
			meshComponent->SetFilePath(FilePath.value);
			meshComponent->LoadFromDisk();
			meshComponent->SetObject(FilePath.value);
		}
	}
}

void CWeaponComponent::SetMeshTransform(CryTransform::CTransform transform)
{
	if (Cry::DefaultComponents::CStaticMeshComponent* meshComponent = m_pEntity->GetComponent<Cry::DefaultComponents::CStaticMeshComponent>())
	{
		meshComponent->SetTransformMatrix(transform.ToMatrix34());
	}
}

void CWeaponComponent::SetOwner(Schematyc::ExplicitEntityId entityId)
{
	m_Owner = static_cast<EntityId>(entityId);
}

Schematyc::ExplicitEntityId CWeaponComponent::GetOwner()
{
	return Schematyc::ExplicitEntityId(m_Owner);
}