#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CCVarHelperComponent final : public IEntityComponent
{
public:
	CCVarHelperComponent();
	virtual ~CCVarHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CCVarHelperComponent>& desc)
	{
		desc.SetGUID("{0E3427D3-5684-4939-A50B-7236ABCBFE59}"_cry_guid);

		desc.SetEditorCategory("Helpers");
		desc.SetLabel("CVar Helper");
		desc.SetDescription("Component to access CVars");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Singleton });
	}
	// ~IEntityComponent

	void ExecuteConsoleCommand(Schematyc::CSharedString command, bool bSilentMode = false, bool bDeferExecution = false);
};