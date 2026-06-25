#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CAdvancedAudioComponent final : public IEntityComponent
{
public:
	CAdvancedAudioComponent();
	virtual ~CAdvancedAudioComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CAdvancedAudioComponent>& desc)
	{
		desc.SetGUID("{896B01FF-0F83-4477-A02C-B6DB4A4F67BC}"_cry_guid);

		desc.SetEditorCategory("Utilities");
		desc.SetLabel("CVar Helper");
		desc.SetDescription("Component to access CVars");
	}
	// ~IEntityComponent

	void ExecuteConsoleCommand(Schematyc::CSharedString command, bool bSilentMode = false, bool bDeferExecution = false);
};