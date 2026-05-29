// Copyright 2017-2019 Crytek GmbH / Crytek Group. All rights reserved.
#pragma once

#include <array>
#include <numeric>

#include <CryEntitySystem/IEntityComponent.h>
#include <CryMath/Cry_Camera.h>

#include <ICryMannequin.h>
#include <CrySchematyc/Utils/EnumFlags.h>

#include <DefaultComponents/Cameras/CameraComponent.h>
#include <DefaultComponents/Physics/CharacterControllerComponent.h>
#include <DefaultComponents/Geometry/AdvancedAnimationComponent.h>
#include <DefaultComponents/Input/InputComponent.h>
#include <DefaultComponents/Audio/ListenerComponent.h>
#include <CrySchematyc/Reflection/TypeDesc.h>

enum EPlayerScopes : uint32
{
	Scope_1 = BIT(0),
	Scope_2 = BIT(1),
	Scope_3 = BIT(2),
	Scope_4 = BIT(3),
	Scope_5 = BIT(4),
	Scope_6 = BIT(5),
	Scope_7 = BIT(6),
	Scope_8 = BIT(7),
	Scope_9 = BIT(8),
	Scope_10 = BIT(9),
	Scope_11 = BIT(10),
	Scope_12 = BIT(11),
	Scope_13 = BIT(12),
	Scope_14 = BIT(13),
	Scope_15 = BIT(14),
	Scope_16 = BIT(15),
	Scope_17 = BIT(16),
	Scope_18 = BIT(17),
	Scope_19 = BIT(18),
	Scope_20 = BIT(19),
	Scope_21 = BIT(20),
	Scope_22 = BIT(21),
	Scope_23 = BIT(22),
	Scope_24 = BIT(23),
	Scope_25 = BIT(24),
	Scope_26 = BIT(25),
	Scope_27 = BIT(26),
	Scope_28 = BIT(27),
	Scope_29 = BIT(28),
	Scope_30 = BIT(29),
	Scope_31 = BIT(30),
	Scope_32 = BIT(31)
};

typedef CEnumFlags<EPlayerScopes> EPlayerScopeMask;

static void ReflectType(Schematyc::CTypeDesc<EPlayerScopes>& desc)
{
	desc.SetGUID("{9BB5DD42-7B9E-473E-9B3C-56680D0E971B}"_cry_guid);
	desc.SetLabel("Player Animation Scopes");
	desc.AddConstant(EPlayerScopes::Scope_1, "FullBody1P", "FullBody1P");
	desc.AddConstant(EPlayerScopes::Scope_2, "Torso1P", "Torso1P");
	desc.AddConstant(EPlayerScopes::Scope_3, "Motion1P", "Motion1P");
	desc.AddConstant(EPlayerScopes::Scope_4, "Sway1P", "Sway1P");
	desc.AddConstant(EPlayerScopes::Scope_5, "GroundAlignment1P", "GroundAlignment1P");

	desc.AddConstant(EPlayerScopes::Scope_6, "FullBody3P", "FullBody3P");
	desc.AddConstant(EPlayerScopes::Scope_7, "AimPose", "AimPose");
	desc.AddConstant(EPlayerScopes::Scope_8, "Torso3P", "Torso3P");
	desc.AddConstant(EPlayerScopes::Scope_9, "GroundAlignment3P", "GroundAlignment3P");

	desc.AddConstant(EPlayerScopes::Scope_10, "Weapon", "Weapon");
	desc.AddConstant(EPlayerScopes::Scope_11, "WeaponForceFeedback", "WeaponForceFeedback");

	desc.AddConstant(EPlayerScopes::Scope_12, "Audio1", "Audio1");
	desc.AddConstant(EPlayerScopes::Scope_13, "Audio2", "Audio2");

	desc.AddConstant(EPlayerScopes::Scope_14, "AttachmentTop", "AttachmentTop");
	desc.AddConstant(EPlayerScopes::Scope_15, "AttachmentBottom", "AttachmentBottom");

	desc.AddConstant(EPlayerScopes::Scope_16, "SlaveChar", "SlaveChar");
	desc.AddConstant(EPlayerScopes::Scope_17, "SlaveObject", "SlaveObject");
}

////////////////////////////////////////////////////////
// Represents a player participating in gameplay
////////////////////////////////////////////////////////
class CPlayerComponent final : public IEntityComponent
{
	enum class EInputFlagType
	{
		Hold = 0,
		Toggle
	};

	enum class EInputFlag : uint32
	{
		MoveLeft = 1 << 0,
		MoveRight = 1 << 1,
		MoveForward = 1 << 2,
		MoveBack = 1 << 3,
		Jump = 1 << 4,
		MouseMoved = 1 << 5
	};
	
	static constexpr EEntityAspects InputAspect = eEA_GameClientD;

	template<typename T, size_t SAMPLES_COUNT>
	class MovingAverage
	{
		static_assert(SAMPLES_COUNT > 0, "SAMPLES_COUNT shall be larger than zero!");

	public:

		MovingAverage()
			: m_values()
			, m_cursor(SAMPLES_COUNT)
			, m_accumulator()
		{
		}

		MovingAverage& Push(const T& value)
		{
			if (m_cursor == SAMPLES_COUNT)
			{
				m_values.fill(value);
				m_cursor = 0;
				m_accumulator = std::accumulate(m_values.begin(), m_values.end(), T(0));
			}
			else
			{
				m_accumulator -= m_values[m_cursor];
				m_values[m_cursor] = value;
				m_accumulator += m_values[m_cursor];
				m_cursor = (m_cursor + 1) % SAMPLES_COUNT;
			}

			return *this;
		}

		T Get() const
		{
			return m_accumulator / T(SAMPLES_COUNT);
		}

		void Reset()
		{
			m_cursor = SAMPLES_COUNT;
		}

	private:

		std::array<T, SAMPLES_COUNT> m_values;
		size_t m_cursor;

		T m_accumulator;
	};

public:
	CPlayerComponent() = default;
	virtual ~CPlayerComponent() = default;

	// IEntityComponent
	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;
	
	virtual bool NetSerialize(TSerialize ser, EEntityAspects aspect, uint8 profile, int flags) override;
	virtual NetworkAspectType GetNetSerializeAspectMask() const override { return InputAspect; }
	// ~IEntityComponent

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CPlayerComponent>& desc)
	{
		desc.SetGUID("{63F4C0C6-32AF-4ACB-8FB0-57D45DD14725}"_cry_guid);
		desc.AddMember(&CPlayerComponent::m_moveSpeed, 'mspd', "MoveSpeed", "Move Speed", "Speed of the player", 5.0f);
		desc.AddMember(&CPlayerComponent::m_rotationSpeed, 'rspd', "RotationSpeed", "Rotation Speed", "Speed at which the player rotates", 0.002f);
		desc.AddMember(&CPlayerComponent::m_rotationLimitsMinPitch, 'minp', "RotationLimitsMinPitch", "Rotation Limits Min Pitch", "Minimum rotation pitch limit", -0.84f);
		desc.AddMember(&CPlayerComponent::m_rotationLimitsMaxPitch, 'maxp', "RotationLimitsMaxPitch", "Rotation Limits Max Pitch", "Maximum rotation pitch limit", 1.5f);
		desc.AddMember(&CPlayerComponent::m_jumpHeight, 'jhgt', "JumpHeight", "Jump Height", "Height at which the player jumps", 5.0f);
	}

	void OnReadyForGameplayOnServer();
	bool IsLocalClient() const { return (m_pEntity->GetFlags() & ENTITY_FLAG_LOCAL_PLAYER) != 0; }

protected:
	void Revive(const Matrix34& transform);

	void UpdateMovementRequest(float frameTime);
	void UpdateLookDirectionRequest(float frameTime);
	void UpdateAnimation(float frameTime);
	void UpdateCamera(float frameTime);

	void HandleInputFlagChange(CEnumFlags<EInputFlag> flags, CEnumFlags<EActionActivationMode> activationMode, EInputFlagType type = EInputFlagType::Hold);

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
	
	struct RemoteShootParams
	{
		Vec3 position;
		Quat rotation;

		void SerializeWith(TSerialize ser)
		{
			ser.Value("pos", position, 'wrld');
			ser.Value("rot", rotation, 'ori0');
		}
	};

	bool RemoteShootOnServer(RemoteShootParams&& params, INetChannel* pNetChannel);

protected:
	bool m_isAlive = false;

	Cry::DefaultComponents::CCameraComponent* m_pCameraComponent = nullptr;
	Cry::DefaultComponents::CCharacterControllerComponent* m_pCharacterController = nullptr;
	Cry::DefaultComponents::CAdvancedAnimationComponent* m_pAnimationComponent = nullptr;
	Cry::DefaultComponents::CAdvancedAnimationComponent* m_pAnimationComponent2 = nullptr;
	Cry::DefaultComponents::CInputComponent* m_pInputComponent = nullptr;
	Cry::Audio::DefaultComponents::CListenerComponent* m_pAudioListenerComponent = nullptr;

	FragmentID m_idleFragmentId;
	FragmentID m_walkFragmentId;
	TagID m_rotateTagId;

	CEnumFlags<EInputFlag> m_inputFlags;
	Vec2 m_mouseDeltaRotation;
	MovingAverage<Vec2, 10> m_mouseDeltaSmoothingFilter;

	float m_rotationSpeed = 0.002f;
	float m_rotationLimitsMinPitch = -0.84f;
	float m_rotationLimitsMaxPitch = 1.5f;

	float m_jumpHeight = 5.0f;

	float m_baseHeight = 1.375f;
	float m_torsoHeight = 0.375f;

	bool m_bIsThirdPerson = false;

	int m_cameraJointId = -1;

	bool test = false;

	IActionPtr m_pFullBody1PAction;
	IActionPtr m_pTorso1PAction;
	IActionPtr m_pMotion1PAction;

	IActionPtr m_pFullBody3PAction;

	Quat m_lookOrientation; //!< Should translate to head orientation in the future
	float m_horizontalAngularVelocity;
	MovingAverage<float, 10> m_averagedHorizontalAngularVelocity;

	float m_moveSpeed = 5.0f;
	Vec2 m_movementDelta = ZERO;

public:
	void Jump();
	void Shoot();
	void SetAttachmentOpacity(ICharacterInstance* character, Schematyc::CSharedString attachmentName, int materialIndex, float opacity);
	void LogConsole(Schematyc::CSharedString string);

	bool IsServer() { return gEnv->bServer; }
	bool IsSwimming();

	// Set functions for reflected component values
	void SetMoveSpeed(float moveSpeed);
	void SetRotationSpeed(float rotationSpeed);
	void SetRotationLimits(float minPitch, float maxPitch);
	void SetJumpHeight(float jumpHeight);

	// Get functions for reflected component values
	float GetMoveSpeed();
	float GetRotationSpeed();
	void GetRotationLimits(float& minPitch, float& maxPitch);
	float GetJumpHeight();

	void QueueFragmentOnScope(Schematyc::CSharedString fragment, const EPlayerScopes& scope, bool thirdperson);

	struct SInitializeLocalPlayer
	{
		SInitializeLocalPlayer() = default;
	};

	struct SRevive
	{
		SRevive() = default;
	};
};
