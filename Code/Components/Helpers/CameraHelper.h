#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CCameraHelperComponent final : public IEntityComponent
{
public:
	CCameraHelperComponent();
	virtual ~CCameraHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CCameraHelperComponent>& desc)
	{
		desc.SetGUID("{B22D0B63-458F-4F04-89C1-8F3990270B45}"_cry_guid);

		desc.SetEditorCategory("Helpers");
		desc.SetLabel("Camera Helper");
		desc.SetDescription("Component to help with camera component");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Singleton });
	}
	// ~IEntityComponent

	void SetFOV(CryTransform::CAngle fov);
};