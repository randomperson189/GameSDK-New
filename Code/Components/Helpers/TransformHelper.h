#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CTransformHelperComponent final : public IEntityComponent
{
public:
	CTransformHelperComponent();
	virtual ~CTransformHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CTransformHelperComponent>& desc)
	{
		desc.SetGUID("{280C1EE0-078A-4821-B437-FE6C358665B9}"_cry_guid);

		desc.SetEditorCategory("Helpers");
		desc.SetLabel("Transform Helper");
		desc.SetDescription("Component to access Transforms");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Singleton });
	}
	// ~IEntityComponent

	CryTransform::CTransform GetComponentTransform(int componentIndex);
	void SetComponentTransform(int componentIndex, CryTransform::CTransform transform);
};