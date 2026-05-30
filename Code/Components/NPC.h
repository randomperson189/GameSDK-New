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
// Represents a player participating in gameplay
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
		/*desc.SetEditorCategory("Game");
		desc.SetLabel("NPC");
		desc.SetDescription("A simple NPC");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Transform, IEntityComponent::EFlags::Socket, IEntityComponent::EFlags::Attach });*/
	}

	void OnReadyForGameplayOnServer();
	bool IsLocalClient() const { return (m_pEntity->GetFlags() & ENTITY_FLAG_LOCAL_PLAYER) != 0; }
	
protected:
	void Revive(const Matrix34& transform);
	
	void UpdateAnimation(float frameTime);
	void UpdateCamera(float frameTime);

	void UpdateCursor(float frameTime);

	void SpawnCursorEntity();
	
	// Called when this entity becomes the local player, to create client specific setup such as the Camera
	void InitializeLocalPlayer();

	// Start remote method declarations
protected:
	// Parameters to be passed to the RemoteReviveOnClient function
	struct RemoteReviveParams
	{
		// Called once on the server to serialize data to the other clients
		// Then called once on the other side to deserialize
		void SerializeWith(TSerialize ser)
		{
			// Serialize the position with the 'wrld' compression policy
			ser.Value("pos", position, 'wrld');
			// Serialize the rotation with the 'ori0' compression policy
			ser.Value("rot", rotation, 'ori0');
		}
		
		Vec3 position;
		Quat rotation;
	};
	// Remote method intended to be called on all remote clients when a player spawns on the server
	bool RemoteReviveOnClient(RemoteReviveParams&& params, INetChannel* pNetChannel);
	
protected:
	bool m_isAlive = false;
	
	Cry::DefaultComponents::CCharacterControllerComponent* m_pCharacterController = nullptr;
	Cry::DefaultComponents::CAdvancedAnimationComponent* m_pAnimationComponent = nullptr;
	IEntityNavigationComponent* m_pNavigationComponent = nullptr;
	IEntityObserverComponent* m_pObserverComponent = nullptr;

	TagID m_walkTagId;

	const float m_movementSpeed = 5.0f;

	IEntity* m_pCursorEntity = nullptr;

public:
	bool m_bIsRagdoll = false;

	void Ragdollize();
};
