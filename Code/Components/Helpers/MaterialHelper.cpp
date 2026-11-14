#include "StdAfx.h"
#include "MaterialHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>

namespace
{
	static void RegisterMaterialHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CMaterialHelperComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CMaterialHelperComponent::SetCharacterMaterialParamFloat, "{F1B567FD-B28F-4246-A73C-2C7E1F842A7F}"_cry_guid, "SetCharacterMaterialParamFloat");
				pFunction->BindInput(1, 'aci', "Anim Component Index", "Index of the Animation Component to use", 0);
				pFunction->BindInput(2, 'atcn', "Attachment Name", "Name of the attachment to find in the Animation Component");
				pFunction->BindInput(3, 'mati', "Material Index", "Index of the material to use (starts at 0)", 0);
				pFunction->BindInput(4, 'parm', "Parameter", "Name of the material parameter to change");
				pFunction->BindInput(5, 'val', "Value", "Value to change the material parameter to");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterMaterialHelperComponent);
}

CMaterialHelperComponent::CMaterialHelperComponent()
{
}

CMaterialHelperComponent::~CMaterialHelperComponent()
{
}

void CMaterialHelperComponent::Initialize()
{
}

void CMaterialHelperComponent::SetCharacterMaterialParamFloat(int animComponentIndex, Schematyc::CSharedString attachmentName, int materialIndex, Schematyc::CSharedString paramName, float value)
{
	// Define the animation component's interface ID (from ReflectType)
	// TODO: Find a better way to get the GUID directly, just in case it changes
	const CryInterfaceID animComponentGUID = "{3CD5DDC5-EE15-437F-A997-79C2391537FE}"_cry_guid;

	// Array to store all components of this type
	DynArray<IEntityComponent*> components;
	m_pEntity->GetComponentsByTypeId(animComponentGUID, components);

	if (Cry::DefaultComponents::CAdvancedAnimationComponent* animationComponent = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[animComponentIndex]))
	{
		if (ICharacterInstance* character = animationComponent->GetCharacter())
		{
			IMaterial* currentMaterial;
			IMaterial* newMaterial;

			// Try to get replacement material first (defined in cdf), if it doesn't exist then get the model's one
			if (IMaterial* tempMaterial = character->GetIAttachmentManager()->GetInterfaceByName(attachmentName.c_str())->GetIAttachmentObject()->GetReplacementMaterial())
				currentMaterial = tempMaterial;
			else if (IMaterial* tempMaterial = character->GetIAttachmentManager()->GetInterfaceByName(attachmentName.c_str())->GetIAttachmentSkin()->GetISkin()->GetIMaterial(0))
				currentMaterial = tempMaterial;

			//CryLogAlways("Material is %s", currentMaterial->GetName());

			newMaterial = gEnv->p3DEngine->GetMaterialManager()->CloneMaterial(currentMaterial); // One way of doing it

			gEnv->p3DEngine->GetMaterialManager()->CopyMaterial(currentMaterial, newMaterial, EMaterialCopyFlags::MTL_COPY_DEFAULT); // We can also copy the material and store it, currentMaterial is material we want to copy, and newMaterial is now the copy of it

			// apply changes
			newMaterial->GetSubMtl(materialIndex)->SetGetMaterialParamFloat(paramName.c_str(), value, false);

			character->GetIAttachmentManager()->GetInterfaceByName(attachmentName.c_str())->GetIAttachmentObject()->SetReplacementMaterial(newMaterial);
		}
	}
}

void CMaterialHelperComponent::SetMaterial(int componentIndex, Schematyc::CSharedString attachmentName, Schematyc::MaterialFileName material)
{

}
