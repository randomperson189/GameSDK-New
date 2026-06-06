#pragma once

#include "StdAfx.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CryCore/StaticInstanceList.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CryPhysics/physinterface.h>
#include <CryEntitySystem/IEntitySystem.h>

#include <CrySchematyc/Env/Elements/EnvSignal.h>

#include <Cry3DEngine/IRenderNode.h>
#include <CryRenderer/IRenderAuxGeom.h>

// Example of a component that receives enter and leave events from a virtual box positioned on the entity
class CProximityTriggerComponent : public IEntityComponent
#ifndef RELEASE
	, public IEntityComponentPreviewer
#endif
{
public:
	virtual ~CProximityTriggerComponent() = default;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CProximityTriggerComponent>& desc)
	{
		desc.SetGUID("{238E73DF-8B98-4DEF-9091-995FDB51654F}"_cry_guid);
		desc.SetEditorCategory("Game");
		desc.SetLabel("Proximity Trigger");
		desc.SetDescription("Creates a simple proximity trigger for entities");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Transform, IEntityComponent::EFlags::Socket, IEntityComponent::EFlags::Attach/*, IEntityComponent::EFlags::HideFromInspector, IEntityComponent::EFlags::Singleton*/ });

		desc.AddMember(&CProximityTriggerComponent::m_triggerBoxSize, 'bnds', "Bounds", "Bounds", "Bounds of the trigger box", Vec3(0, 0, 0));
		desc.AddMember(&CProximityTriggerComponent::m_bActive, 'actv', "Active", "Active", "Is this trigger activated or not", true);
	}

	virtual void Initialize() override;

	virtual void ProcessEvent(const SEntityEvent& event) override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;

#ifndef RELEASE
	// Previewer interface
	virtual IEntityComponentPreviewer* GetPreviewer() override { return this; }

	virtual void SerializeProperties(Serialization::IArchive& archive) override {}

	virtual void Render(const IEntity& entity, const IEntityComponent& component, SEntityPreviewContext& context) const override
	{
		if (!context.bSelected)
			return;

		Vec3 worldPos = m_pEntity->GetWorldPos();
		Quat worldRot = m_pEntity->GetWorldRotation();
		Vec3 boxHalf = m_triggerBoxSize * 0.5f;

		Matrix34 worldTM(worldRot);
		worldTM.SetTranslation(worldPos + GetTransformMatrix().GetTranslation());

		// Draw a wireframe box
		gEnv->pRenderer->GetIRenderAuxGeom()->DrawAABB(
			AABB(-boxHalf, boxHalf),
			worldTM,
			false,
			context.debugDrawInfo.color,
			eBBD_Faceted
		);
	}
#endif

protected:
	IEntityTriggerComponent* m_pTriggerComponent = nullptr;
	Vec3 m_triggerBoxSize = Vec3(2, 2, 2);
	bool m_bActive = true;

public:
	struct SOnEnter
	{
		SOnEnter() = default;
		SOnEnter(EntityId id) : otherEntity(Schematyc::ExplicitEntityId(id)) {}

		Schematyc::ExplicitEntityId otherEntity;
	};
	
	struct SOnExit
	{
		SOnExit() = default;
		SOnExit(EntityId id) : otherEntity(Schematyc::ExplicitEntityId(id)) {}

		Schematyc::ExplicitEntityId otherEntity;
	};
};