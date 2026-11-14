#include "StdAfx.h"
#include "AttachmentHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>

#include <DefaultComponents/Geometry/AdvancedAnimationComponent.h>

namespace
{
	static void RegisterAttachmentHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CAttachmentHelperComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CAttachmentHelperComponent::CreateEntityAttachment, "{A6A098D7-151B-46C9-A83D-D5D20580FA6A}"_cry_guid, "AttachEntity");
				pFunction->BindInput(1, 'tgte', "Target", "Target Entity to find");
				pFunction->BindInput(2, 'aci', "Anim Component Index", "Index of the Animation Component to use", 0);
				pFunction->BindInput(3, 'atcn', "Attachment Name", "Name of the attachment to find in the Animation Component");
				pFunction->BindInput(4, 'scl', "Scale", "Scale of the attached entity", Vec3(1.f, 1.f, 1.f));
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CAttachmentHelperComponent::CreateSkinAttachment, "{2D6867DA-7913-4489-8E9E-D16599224D8C}"_cry_guid, "AttachSkin");
				pFunction->BindInput(1, 'skin', "Skin File", "Skin File to use");
				pFunction->BindInput(2, 'aci', "Anim Component Index", "Index of the Animation Component to use", 0);
				pFunction->BindInput(3, 'atcn', "Attachment Name", "Name of the attachment to find in the Animation Component");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CAttachmentHelperComponent::RemoveAttachment, "{90B7B539-FA9C-4824-8361-2DF9EA299BA6}"_cry_guid, "RemoveAttachmentBinding");
				pFunction->BindInput(1, 'aci', "Anim Component Index", "Index of the Animation Component to use", 0);
				pFunction->BindInput(2, 'atcn', "Attachment Name", "Name of the attachment to find in the Animation Component");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CAttachmentHelperComponent::GetAttachmentTransform, "{9894E80A-39EF-4BF3-9843-D99FA7AD2E3E}"_cry_guid, "GetAttachmentTransform");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				pFunction->BindOutput(0, 'tr', "Transform", "Attachment Transform");
				pFunction->BindInput(1, 'aci', "Anim Component Index", "Index of the Animation Component to use", 0);
				pFunction->BindInput(2, 'atcn', "Attachment Name", "Name of the attachment to find in the Animation Component");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CAttachmentHelperComponent::SetAttachmentHidden, "{14AB044F-5FBF-41BA-A1EF-6679EA795521}"_cry_guid, "SetAttachmentHidden");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				pFunction->BindInput(1, 'aci', "Anim Component Index", "Index of the Animation Component to use", 0);
				pFunction->BindInput(2, 'atcn', "Attachment Name", "Name of the attachment to find in the Animation Component");
				pFunction->BindInput(3, 'hide', "Hide", "Whether to hide the attachment or not");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CAttachmentHelperComponent::SetAttachmentHiddenShadow, "{C0634495-5C8B-482A-8CEA-7ED4367F803B}"_cry_guid, "SetAttachmentHiddenShadow");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				pFunction->BindInput(1, 'aci', "Anim Component Index", "Index of the Animation Component to use", 0);
				pFunction->BindInput(2, 'atcn', "Attachment Name", "Name of the attachment to find in the Animation Component");
				pFunction->BindInput(3, 'hide', "Hide", "Whether to hide the attachment in shadow or not");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterAttachmentHelperComponent);
}

CAttachmentHelperComponent::CAttachmentHelperComponent()
{
}

CAttachmentHelperComponent::~CAttachmentHelperComponent()
{
}

void CAttachmentHelperComponent::Initialize()
{
}

void CAttachmentHelperComponent::CreateEntityAttachment(Schematyc::ExplicitEntityId id, int animComponentIndex, Schematyc::CSharedString attachmentName, Vec3 scale)
{
	if (gEnv->pEntitySystem->GetEntity(static_cast<EntityId>(id)) == nullptr)
		return;

	// Array to store all components of this type
	DynArray<IEntityComponent*> components;
	m_pEntity->GetComponentsByTypeId(animComponentGUID, components);

	if (Cry::DefaultComponents::CAdvancedAnimationComponent* animationComponent = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[animComponentIndex]))
	{
		if (ICharacterInstance* pCharInstance = animationComponent->GetCharacter())
		{
			if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
			{
				if (IAttachment* pAttachment = pAttachmentMgr->GetInterfaceByName(attachmentName.c_str()))
				{
					CEntityAttachment* pEntityAttachment = new CEntityAttachment();
					pEntityAttachment->SetEntityId(static_cast<EntityId>(id));
					pEntityAttachment->SetScale(scale);

					pAttachment->AddBinding(pEntityAttachment);
				}
			}
		}
	}
}

void CAttachmentHelperComponent::CreateSkinAttachment(Schematyc::SkinName skinFile, int animComponentIndex, Schematyc::CSharedString attachmentName)
{
	// Array to store all components of this type
	DynArray<IEntityComponent*> components;
	m_pEntity->GetComponentsByTypeId(animComponentGUID, components);

	if (Cry::DefaultComponents::CAdvancedAnimationComponent* animationComponent = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[animComponentIndex]))
	{
		if (ICharacterInstance* pCharInstance = animationComponent->GetCharacter())
		{
			if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
			{
				if (IAttachment* pAttachment = pAttachmentMgr->GetInterfaceByName(attachmentName.c_str()))
				{
					if (ISkin* pSkin = gEnv->pCharacterManager->LoadModelSKIN(skinFile.value, 0))
					{
						CSKINAttachment* pSkinAttachment = new CSKINAttachment();

						pAttachment->AddBinding(pSkinAttachment, pSkin);
					}
				}
			}
		}
	}
}

void CAttachmentHelperComponent::RemoveAttachment(int animComponentIndex, Schematyc::CSharedString attachmentName)
{
	// Array to store all components of this type
	DynArray<IEntityComponent*> components;
	m_pEntity->GetComponentsByTypeId(animComponentGUID, components);

	if (Cry::DefaultComponents::CAdvancedAnimationComponent* animationComponent = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[animComponentIndex]))
	{
		if (ICharacterInstance* pCharInstance = animationComponent->GetCharacter())
		{
			if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
			{
				if (IAttachment* pAttachment = pAttachmentMgr->GetInterfaceByName(attachmentName.c_str()))
				{
					pAttachment->ClearBinding();
				}
			}
		}
	}
}

void CAttachmentHelperComponent::SetAttachmentHidden(int animComponentIndex, Schematyc::CSharedString attachmentName, bool hide)
{
	// Array to store all components of this type
	DynArray<IEntityComponent*> components;
	m_pEntity->GetComponentsByTypeId(animComponentGUID, components);

	if (Cry::DefaultComponents::CAdvancedAnimationComponent* animationComponent = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[animComponentIndex]))
	{
		if (ICharacterInstance* pCharInstance = animationComponent->GetCharacter())
		{
			if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
			{
				if (IAttachment* pAttachment = pAttachmentMgr->GetInterfaceByName(attachmentName.c_str()))
				{
					pAttachment->HideAttachment(hide ? 1 : 0);
				}
			}
		}
	}
}

void CAttachmentHelperComponent::SetAttachmentHiddenShadow(int animComponentIndex, Schematyc::CSharedString attachmentName, bool hide)
{
	// Array to store all components of this type
	DynArray<IEntityComponent*> components;
	m_pEntity->GetComponentsByTypeId(animComponentGUID, components);

	if (Cry::DefaultComponents::CAdvancedAnimationComponent* animationComponent = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[animComponentIndex]))
	{
		if (ICharacterInstance* pCharInstance = animationComponent->GetCharacter())
		{
			if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
			{
				if (IAttachment* pAttachment = pAttachmentMgr->GetInterfaceByName(attachmentName.c_str()))
				{
					pAttachment->HideInShadow(hide ? 1 : 0);
				}
			}
		}
	}
}

CryTransform::CTransform CAttachmentHelperComponent::GetAttachmentTransform(int animComponentIndex, Schematyc::CSharedString attachmentName)
{
	// Array to store all components of this type
	DynArray<IEntityComponent*> components;
	m_pEntity->GetComponentsByTypeId(animComponentGUID, components);

	if (Cry::DefaultComponents::CAdvancedAnimationComponent* animationComponent = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[animComponentIndex]))
	{
		if (ICharacterInstance* pCharInstance = animationComponent->GetCharacter())
		{
			if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
			{
				if (IAttachment* pAttachment = pAttachmentMgr->GetInterfaceByName(attachmentName.c_str()))
				{
					QuatTS worldQuatTS = pAttachment->GetAttWorldAbsolute();

					return CryTransform::CTransform(worldQuatTS.t, CryTransform::CRotation(worldQuatTS.q), Vec3(worldQuatTS.s));
				}
			}
		}
	}

	return CryTransform::CTransform();
}

