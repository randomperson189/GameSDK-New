#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

#include <DefaultComponents/Geometry/AdvancedAnimationComponent.h>

struct SAdvancedAnimationAction
{
	int animComponentId;
	int scope;
	IActionPtr action;
	int priority = 0;
};

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CAdvancedAnimationHelperComponent final : public IEntityComponent
{
public:
	CAdvancedAnimationHelperComponent();
	virtual ~CAdvancedAnimationHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CAdvancedAnimationHelperComponent>& desc)
	{
		desc.SetGUID("{1DF944B1-3802-41D6-B56E-D90AB368511E}"_cry_guid);

		desc.SetEditorCategory("Helpers");
		desc.SetLabel("Advanced Animation Helper");
		desc.SetDescription("Component to help with advanced animation");
	}
	// ~IEntityComponent

	void QueueFragmentAdvanced(int animComponentId, Schematyc::CSharedString fragment, int scopeId, float speedMultiplier, bool noAutoBlendOut, bool overridePreviousFragment);

	Schematyc::CSharedString GetCharacterFile(int animComponentIndex);

	void SetCharacterFile(Schematyc::CharacterFileName characterFile, int animComponentIndex);

	struct SAnimationEvent
	{
		SAnimationEvent() = default;

		SAnimationEvent(Schematyc::CSharedString eventname, Schematyc::CSharedString charactername) : pEventName(eventname), pCharacterName(charactername) {}

		Schematyc::CSharedString pEventName;
		Schematyc::CSharedString pCharacterName;
	};

protected:

	std::vector<SAdvancedAnimationAction> m_actions;
};