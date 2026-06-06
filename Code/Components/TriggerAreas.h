#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CTriggerAreasComponent final : public IEntityComponent
{
public:
	CTriggerAreasComponent();
	virtual ~CTriggerAreasComponent();

	// IEntityComponent
	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;

	static void ReflectType(Schematyc::CTypeDesc<CTriggerAreasComponent>& desc)
	{
		desc.SetGUID("{8A5BFBDB-958E-4287-BB7A-84B68AA84013}"_cry_guid);

		desc.SetEditorCategory("Utilities");
		desc.SetLabel("Trigger Areas");
		desc.SetDescription("Component to set entities to trigger areas");

		desc.AddMember(&CTriggerAreasComponent::m_bTriggerAreas, 'tars', "TriggerAreas", "Trigger Areas", "Whether or not this entity will trigger areas", true);
	}
	// ~IEntityComponent

	void SetTriggerAreas(bool triggerAreas);

protected:
	bool m_bTriggerAreas = true;

	void UpdateTriggerAreas();
};