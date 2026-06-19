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
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CWeaponComponent::SetAnimationMesh, "{029F2E59-04B7-4388-864D-C5F1B84217AA}"_cry_guid, "Set Animated Mesh");
				pFunction->BindInput(1, 'fpth', "FilePath", "Animation Mesh File Path");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				componentScope.Register(pFunction);
			}
			/*{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CWeaponComponent::SetMeshTransform, "{BEB132ED-EC95-49C3-9D07-931F509DF270}"_cry_guid, "Set Mesh Transform");
				pFunction->BindInput(1, 'tr', "Transform", "Transform");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				componentScope.Register(pFunction);
			}*/
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CWeaponComponent::SetAnimationDatabase, "{9B3D2F78-4B00-438C-830D-7626E471554F}"_cry_guid, "Set Animation Database");
				pFunction->BindInput(1, 'fpth', "FilePath", "Animation Database File Path");
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
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CWeaponComponent::SetDisplayName, "{E12F467B-7380-4EAA-A642-0300462643B2}"_cry_guid, "Set Display Name");
				pFunction->BindInput(1, 'name', "Name", "Name");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CWeaponComponent::SetAnimationCodeName, "{BBEB37A5-138A-44FB-B86F-BBE7DF6EFCB2}"_cry_guid, "Set Animation Code Name");
				pFunction->BindInput(1, 'name', "Name", "Name");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
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
	// Remove the Audio context to the weapon
	/*IMannequin &mannequinSys = gEnv->pGameFramework->GetMannequinInterface();
	IAnimationDatabaseManager& animationDatabaseManager = mannequinSys.GetAnimationDatabaseManager();

	const SControllerDef* pControllerDef = animationDatabaseManager.LoadControllerDef(m_pAnimationComponent->GetControllerDefinitionFile());
	const TagID scopeContextSound = pControllerDef->m_scopeContexts.Find("Audio");

	m_pAnimationComponent->GetActionController()->ClearScopeContext(scopeContextSound);*/
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
	return
		Cry::Entity::EEvent::TimerExpired |
		Cry::Entity::EEvent::Reset |
		Cry::Entity::EEvent::Remove;
}

void CWeaponComponent::ProcessEvent(const SEntityEvent& event) 
{
	switch (event.event)
	{
	case Cry::Entity::EEvent::TimerExpired:
	{
		switch (event.nParam[0])
		{
		case 1:
		{
			if (IEntity* pOwner = gEnv->pEntitySystem->GetEntity(m_pOwner))
			{
				if (auto* pPlayerComponent = pOwner->GetComponent<CPlayerComponent>())
				{
					SetShadowsOnly(!pPlayerComponent->m_bIsThirdPersonCamera);
				}
			}
		}
		break;
		}
	}
	break;
	case Cry::Entity::EEvent::Remove:
	{
		// Remove the Audio context from the weapon
		IMannequin &mannequinSys = gEnv->pGameFramework->GetMannequinInterface();
		IAnimationDatabaseManager& animationDatabaseManager = mannequinSys.GetAnimationDatabaseManager();

		const SControllerDef* pControllerDef = animationDatabaseManager.LoadControllerDef(m_pAnimationComponent->GetControllerDefinitionFile());
		const TagID scopeContextSound = pControllerDef->m_scopeContexts.Find("Audio");

		m_pAnimationComponent->GetActionController()->ClearScopeContext(scopeContextSound);
	}
	break;
	}
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

	TagState fragTags;
	if (const CTagDefinition* pFragTagDef = m_pAnimationComponent->GetActionController()->GetTagDefinition(m_pAnimationComponent->GetFragmentId(fragment.c_str())))
	{
		pFragTagDef->Set(fragTags, pFragTagDef->Find("first"), true);
	}

	m_pWeaponAction = new TAction<SAnimationContext>(m_pWeaponPriority, m_pAnimationComponent->GetFragmentId(fragment.c_str()), fragTags, 0U, EPlayerScopes::Scope_10, 0U);

	m_pAnimationComponent->QueueCustomFragment(*m_pWeaponAction);
}

void CWeaponComponent::AttachToHand()
{
	// Switch to the active weapon now
	// TODO: Make this work with inventory component
	if (IEntity* pOwner = gEnv->pEntitySystem->GetEntity(m_pOwner))
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

			// Set the 3P weapon mesh to shadows only based on player thirdperson camera parameter
			// Have to use delay here to fix it not working properly upon respawn
			SetTimer(1, 1);

			if (m_pAnimationComponent)
			{
				// Detach weapon CDF from this entity because it's now attached to the player's firstperson arms
				m_pEntity->SetCharacter(nullptr, m_pAnimationComponent->GetEntitySlotId(), false);

				// Add the Audio context to the weapon
				IMannequin &mannequinSys = gEnv->pGameFramework->GetMannequinInterface();
				IAnimationDatabaseManager& animationDatabaseManager = mannequinSys.GetAnimationDatabaseManager();

				const SControllerDef* pControllerDef = animationDatabaseManager.LoadControllerDef(m_pAnimationComponent->GetControllerDefinitionFile());

				const IAnimationDatabase* pSoundDatabase = animationDatabaseManager.Load("Animations/Mannequin/ADB/playerSounds.adb");
				const TagID scopeContextSound = pControllerDef->m_scopeContexts.Find("Audio");

				m_pAnimationComponent->GetActionController()->SetScopeContext(scopeContextSound, *GetEntity(), m_pAnimationComponent->GetCharacter(), pSoundDatabase);
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
	if (m_pMeshComponent)
	{
		if (FilePath.value != "")
		{
			m_pMeshComponent->SetFilePath(FilePath.value);
			m_pMeshComponent->LoadFromDisk();
			m_pMeshComponent->ResetObject();
		}
	}
}
void CWeaponComponent::SetAnimationMesh(Schematyc::CharacterFileName FilePath)
{
	if (m_pAnimationComponent)
	{
		if (FilePath.value != "")
		{
			m_pAnimationComponent->SetCharacterFile(FilePath.value);
			m_pAnimationComponent->LoadFromDisk();
			m_pAnimationComponent->ResetCharacter();
		}
	}
}

// Might add this later
/*void CWeaponComponent::SetMeshTransform(CryTransform::CTransform transform)
{
	if (Cry::DefaultComponents::CStaticMeshComponent* meshComponent = m_pEntity->GetComponent<Cry::DefaultComponents::CStaticMeshComponent>())
	{
		meshComponent->SetTransformMatrix(transform.ToMatrix34());
	}
}*/

void CWeaponComponent::SetOwner(Schematyc::ExplicitEntityId entityId)
{
	m_pOwner = static_cast<EntityId>(entityId);
}

Schematyc::ExplicitEntityId CWeaponComponent::GetOwner()
{
	return Schematyc::ExplicitEntityId(m_pOwner);
}

void CWeaponComponent::SetDisplayName(Schematyc::CSharedString name)
{
	m_pDisplayName = name;
}

void CWeaponComponent::SetAnimationCodeName(Schematyc::CSharedString name)
{
	m_pAnimCodeName = name;
}

void CWeaponComponent::SetAnimationDatabase(Schematyc::MannequinAnimationDatabasePath FilePath)
{
	m_pAnimationComponent->SetMannequinAnimationDatabaseFile(FilePath.value);
	m_pAnimationComponent->LoadFromDisk();
	m_pAnimationComponent->ResetCharacter();
}

void CWeaponComponent::SetShadowsOnly(bool shadowsOnly)
{
	if (IStatObj* statObj = m_pEntity->GetStatObj(m_pMeshComponent->GetEntitySlotId()))
	{
		if (IMaterial* material = statObj->GetMaterial())
		{
			int subMatCount = material->GetSubMtlCount();

			for (int i = 0; i < subMatCount; i++)
			{
				SetMaterialOpacity(statObj, i, shadowsOnly ? 0.0f : 1.0f);
			}
		}
	}
}

void CWeaponComponent::SetMaterialOpacity(IStatObj* obj, int materialIndex, float opacity)
{
	IMaterial* currentMaterial;
	IMaterial* newMaterial;

	// Try to get replacement material first (defined in cdf), if it doesn't exist then get the model's one
	if (IMaterial* tempMaterial = obj->GetMaterial())
		newMaterial = tempMaterial;

	//CryLogAlways("Material is %s", newMaterial->GetName());

	currentMaterial = gEnv->p3DEngine->GetMaterialManager()->CloneMaterial(newMaterial); // One way of doing it

	gEnv->p3DEngine->GetMaterialManager()->CopyMaterial(newMaterial, currentMaterial, EMaterialCopyFlags::MTL_COPY_DEFAULT); // We can also copy the material and store it, newMaterial is material we want to copy, and currentMaterial is now the copy of it

	float newAlpha = opacity;

	// apply changes
	currentMaterial->GetSubMtl(materialIndex)->SetGetMaterialParamFloat("opacity", newAlpha, false);

	obj->SetMaterial(currentMaterial);
}