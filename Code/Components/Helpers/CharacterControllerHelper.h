#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CCharacterControllerHelperComponent final : public IEntityComponent
{
public:
	CCharacterControllerHelperComponent();
	virtual ~CCharacterControllerHelperComponent();

	// IEntityComponent

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CCharacterControllerHelperComponent>& desc)
	{
		desc.SetGUID("{6C1F2B4A-FBF7-46A5-A976-AA81871103F1}"_cry_guid);

		desc.SetEditorCategory("Helpers");
		desc.SetLabel("Character Controller Helper");
		desc.SetDescription("Component to help with character controllers");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Singleton });
	}
	// ~IEntityComponent

	void GetDimensions(float& radius, float& height, float& zOffset, bool& bCapsule, float& groundContactEps);
	void SetDimensions(/*float mass, */float radius, float height, float zOffset, bool bCapsule, float groundContactEps);

	/*CryTransform::CTransform GetTransform();
	void SetTransform(CryTransform::CTransform transform);*/
};