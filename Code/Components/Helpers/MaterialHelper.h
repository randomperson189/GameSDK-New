#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CMaterialHelperComponent final : public IEntityComponent
{
public:
	CMaterialHelperComponent();
	virtual ~CMaterialHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CMaterialHelperComponent>& desc)
	{
		desc.SetGUID("{A832CEDC-944A-440C-8EB1-3C4CCD7ECB46}"_cry_guid);

		desc.SetEditorCategory("Helpers");
		desc.SetLabel("Material Helper");
		desc.SetDescription("Component to access Materials");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Singleton });
	}
	// ~IEntityComponent

	void SetCharacterMaterialParamFloat(int animComponentIndex, Schematyc::CSharedString attachmentName, int materialIndex, Schematyc::CSharedString paramName, float value);

	void SetMaterial(int componentIndex, Schematyc::CSharedString attachmentName, Schematyc::MaterialFileName material);
};