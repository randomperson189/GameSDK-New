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

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CWeaponComponent::QueueFragmentOnScopes, "{2AF3E2BA-93E9-423C-A6C9-73909BF9CDF6}"_cry_guid, "Queue Fragment On Scopes");
				pFunction->BindInput(1, 'frag', "Fragment Name");
				pFunction->BindInput(2, 'tru', "Override Previous Fragment");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				componentScope.Register(pFunction);
			}

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CWeaponComponent::SEquip));

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CWeaponComponent::SStartFire));
			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CWeaponComponent::SStopFire));

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CWeaponComponent::SStartAltFire));
			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CWeaponComponent::SStopAltFire));
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

static void ReflectType(Schematyc::CTypeDesc<CWeaponComponent::SEquip>& desc)
{
	desc.SetGUID("{5F201F39-B6FE-434B-80A6-ED38896781DE}"_cry_guid);
	desc.SetLabel("Equip");
}

static void ReflectType(Schematyc::CTypeDesc<CWeaponComponent::SStartFire>& desc)
{
	desc.SetGUID("{2116C7EC-CBCA-46A9-A4D9-68EB37DFEF15}"_cry_guid);
	desc.SetLabel("Start Fire");
}
static void ReflectType(Schematyc::CTypeDesc<CWeaponComponent::SStopFire>& desc)
{
	desc.SetGUID("{0D1BA24E-E29D-4B4F-AA3B-1043E6CE6430}"_cry_guid);
	desc.SetLabel("Stop Fire");
}

static void ReflectType(Schematyc::CTypeDesc<CWeaponComponent::SStartAltFire>& desc)
{
	desc.SetGUID("{13C1835A-29CD-4E9A-BCCD-537ED14C3B68}"_cry_guid);
	desc.SetLabel("Start AltFire");
}
static void ReflectType(Schematyc::CTypeDesc<CWeaponComponent::SStopAltFire>& desc)
{
	desc.SetGUID("{51F0A319-4A79-4D9B-96ED-B8DD1C2EB365}"_cry_guid);
	desc.SetLabel("Stop AltFire");
}

void CWeaponComponent::Initialize()
{
	m_pMeshComponent = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CStaticMeshComponent>();
	m_pAnimationComponent = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CAdvancedAnimationComponent>();

	// Mark the entity to be replicated over the network
	m_pEntity->GetNetEntity()->BindToNetwork();
}

Cry::Entity::EventFlags CWeaponComponent::GetEventMask() const 
{
	return Cry::Entity::EEvent::Reset;
}

void CWeaponComponent::ProcessEvent(const SEntityEvent& event) 
{
}

void CWeaponComponent::QueueFragmentOnScopes(Schematyc::CSharedString fragment, bool trumpPreviousFragment)
{
	if (trumpPreviousFragment)
	{
		m_pWeaponPriority++;
	}

	if (m_pWeaponAction) 
	{ 
		m_pWeaponAction->Stop(); 
	}

	m_pWeaponAction = new TAction<SAnimationContext>(m_pWeaponPriority, m_pAnimationComponent->GetFragmentId(fragment.c_str()), TAG_STATE_EMPTY, 0U, EPlayerScopes::Scope_10, 0U);

	m_pAnimationComponent->QueueCustomFragment(*m_pWeaponAction);
}

void CWeaponComponent::AttachToHand()
{
	// Switch to the active weapon now
	// TODO: Make this work with inventory component
	if (IEntity* pOwner = gEnv->pEntitySystem->GetEntity(m_Owner))
	{
		if (auto* pPlayerComponent = pOwner->GetComponent<CPlayerComponent>())
		{
			// For firstperson character, attach a proxy CGF or CDF, depending on what weapon model it is
			if (ICharacterInstance* pCharInstance = pPlayerComponent->m_pAnimationComponent1P->GetCharacter())
			{
				if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
				{
					/*CCGFAttachment* pCGFAttachment = new CCGFAttachment();
					pCGFAttachment->pObj = gEnv->p3DEngine->LoadStatObj(m_pEntity->GetComponent<Cry::DefaultComponents::CStaticMeshComponent>()->GetFilePath());

					pAttachmentMgr->GetInterfaceByName("weapon")->AddBinding(pCGFAttachment);*/

					CSKELAttachment* pSKELAttachment = new CSKELAttachment();
					pSKELAttachment->m_pCharInstance = m_pEntity->GetComponent<Cry::DefaultComponents::CAdvancedAnimationComponent>()->GetCharacter();

					pAttachmentMgr->GetInterfaceByName("weapon")->AddBinding(pSKELAttachment);
				}
			}

			// For thirdperson character, attach the actual weapon entity so sounds can play properly
			if (ICharacterInstance* pCharInstance = pPlayerComponent->m_pAnimationComponent3P->GetCharacter())
			{
				if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
				{
					CEntityAttachment* pEntityAttachment = new CEntityAttachment();
					pEntityAttachment->SetEntityId(GetEntityId());

					pAttachmentMgr->GetInterfaceByName("weapon")->AddBinding(pEntityAttachment);
				}
			}

			if (auto* meshcomp = m_pEntity->GetComponent<Cry::DefaultComponents::CStaticMeshComponent>())
			{
				if (gEnv->pEntitySystem->GetEntity(EntityId(GetOwner()))->GetComponent<CPlayerComponent>()->IsLocalClient())
				{
					meshcomp->SetMeshType(Cry::DefaultComponents::EMeshType::None);
				}
			}

			if (auto* animcomp = m_pEntity->GetComponent<Cry::DefaultComponents::CAdvancedAnimationComponent>())
			{
				// Detach weapon CDF from this entity because it's now attached to the player's firstperson arms
				m_pEntity->SetCharacter(nullptr, animcomp->GetEntitySlotId(), false);

				// Add the Audio context to the weapon
				IMannequin &mannequinSys = gEnv->pGameFramework->GetMannequinInterface();
				IAnimationDatabaseManager& animationDatabaseManager = mannequinSys.GetAnimationDatabaseManager();

				const SControllerDef* pControllerDef = animationDatabaseManager.LoadControllerDef(animcomp->GetControllerDefinitionFile());

				const IAnimationDatabase* pSoundDatabase = animationDatabaseManager.Load("Animations/Mannequin/ADB/playerSounds.adb");
				const TagID scopeContextSound = pControllerDef->m_scopeContexts.Find("Audio");

				animcomp->GetActionController()->SetScopeContext(scopeContextSound, *GetEntity(), animcomp->GetCharacter(), pSoundDatabase);
			}
		}
	}
}

void CWeaponComponent::Equip()
{
	if (!m_pEntity)
		return;
	
	AttachToHand();

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
	}*/

	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		pSchematycObject->ProcessSignal(SEquip(), GetGUID());
	}
}

void CWeaponComponent::StartFire()
{
	if (!m_pEntity)
		return;

	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		pSchematycObject->ProcessSignal(SStartFire(), GetGUID());
	}
}
void CWeaponComponent::StopFire()
{
	if (!m_pEntity)
		return;

	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		pSchematycObject->ProcessSignal(SStopFire(), GetGUID());
	}
}

void CWeaponComponent::StartAltFire()
{
	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		pSchematycObject->ProcessSignal(SStartAltFire(), GetGUID());
	}
}

void CWeaponComponent::StopAltFire()
{
	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		pSchematycObject->ProcessSignal(SStopAltFire(), GetGUID());
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