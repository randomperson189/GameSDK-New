#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CPhysicsHelperComponent final : public IEntityComponent
{
public:
	CPhysicsHelperComponent();
	virtual ~CPhysicsHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CPhysicsHelperComponent>& desc)
	{
		desc.SetGUID("{8D0D1DD0-56F5-48AA-B0E5-CBC19A1C3FCF}"_cry_guid);

		desc.SetEditorCategory("Helpers");
		desc.SetLabel("Physics Helper");
		desc.SetDescription("Component to help with physics");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Singleton });
	}
	// ~IEntityComponent

	void SetResting(bool resting);

	void SetPhysicsEnabled(bool enabled);
};