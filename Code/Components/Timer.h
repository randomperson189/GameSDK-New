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

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;
	// ~IEntityComponent

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CTimerComponent>& desc)
	{
		desc.SetGUID("{40BF8126-B991-45C3-ADDF-AEE92EBB8DB0}"_cry_guid);

		desc.SetEditorCategory("Utilities");
		desc.SetLabel("Timer");
		desc.SetDescription("Component to do timers");
	}

	void SetTimerSchematyc(uint32 timerId, int timeInMilliseconds);
	void KillTimerSchematyc(uint32 timerId);

	struct SOnTimer
	{
		SOnTimer() = default;
		SOnTimer(int timerId) : timerId(timerId) {}

		int timerId;
	};
};