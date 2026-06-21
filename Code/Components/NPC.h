// Copyright 2017-2019 Crytek GmbH / Crytek Group. All rights reserved.
#pragma once

#include <CryEntitySystem/IEntityComponent.h>
#include <CryMath/Cry_Camera.h>

#include <ICryMannequin.h>

#include <DefaultComponents/Cameras/CameraComponent.h>
#include <DefaultComponents/Physics/CharacterControllerComponent.h>
#include <DefaultComponents/Geometry/AdvancedAnimationComponent.h>
#include <DefaultComponents/Input/InputComponent.h>
#include <DefaultComponents/Audio/ListenerComponent.h>
#include <CryAISystem/IVisionMap.h>
#include <CryAISystem/Components/IEntityNavigationComponent.h>
#include <CryAISystem/Components/IEntityObserverComponent.h>

////////////////////////////////////////////////////////
// Represents a npc participating in gameplay
////////////////////////////////////////////////////////
class CNPCComponent final : public IEntityComponent
{
public:
	CNPCComponent() = default;
	virtual ~CNPCComponent() = default;

	// IEntityComponent
	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;
	// ~IEntityComponent

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CNPCComponent>& desc)
	{
		desc.SetGUID("{ED8DD598-40FF-4E9B-857D-16264CBA5732}"_cry_guid);
		desc.SetEditorCategory("Game");
		desc.SetLabel("NPC");
		desc.SetDescription("A simple NPC");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Transform, IEntityComponent::EFlags::Socket, IEntityComponent::EFlags::Attach });
	}
	
	Cry::DefaultComponents::CCharacterControllerComponent* m_pCharacterController = nullptr;
	Cry::DefaultComponents::CAdvancedAnimationComponent* m_pAnimationComponent = nullptr;
	IEntityNavigationComponent* m_pNavigationComponent = nullptr;
	IEntityObserverComponent* m_pObserverComponent = nullptr;

public:
	void Ragdollize();
	void UnRagdollize();

	bool IsRagdoll();
};
