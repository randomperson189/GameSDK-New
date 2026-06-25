#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CTimerComponent final : public IEntityComponent
{
public:
	CTimerComponent();
	virtual ~CTimerComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CTimerComponent>& desc)
	{
		desc.SetGUID("{40BF8126-B991-45C3-ADDF-AEE92EBB8DB0}"_cry_guid);

		desc.SetEditorCategory("Utilities");
		desc.SetLabel("Timer");
		desc.SetDescription("Component to do timers");
	}
	// ~IEntityComponent

	void ExecuteConsoleCommand(Schematyc::CSharedString command, bool bSilentMode = false, bool bDeferExecution = false);
};