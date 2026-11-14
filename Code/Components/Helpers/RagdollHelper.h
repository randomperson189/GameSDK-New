#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CRagdollHelperComponent final : public IEntityComponent
{
public:
	CRagdollHelperComponent();
	virtual ~CRagdollHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CRagdollHelperComponent>& desc)
	{
		desc.SetGUID("{14EFA301-9CE6-4A69-ACBF-F52D9A90F94B}"_cry_guid);

		desc.SetEditorCategory("Helpers");
		desc.SetLabel("Ragdoll Helper");
		desc.SetDescription("Component to help with ragdolls");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Singleton });
	}
	// ~IEntityComponent

	void Ragdollize();
	void UnRagdollize();

	bool IsRagdoll();
};