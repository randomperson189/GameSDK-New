// Copyright 2017-2020 Crytek GmbH / Crytek Group. All rights reserved.
#include "StdAfx.h"
#include "Player.h"
#include "Bullet.h"
#include "SpawnPoint.h"
#include "GamePlugin.h"

#include <CryRenderer/IRenderAuxGeom.h>
#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CryCore/StaticInstanceList.h>
#include <CryNetwork/Rmi.h>

#define MOUSE_DELTA_TRESHOLD 0.0001f

namespace
{
	static void RegisterPlayerComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CPlayerComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::Jump, "{DF2A9AE7-7724-4684-89F6-9DF336F61AC2}"_cry_guid, "Jump");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::Shoot, "{899ADE13-94B7-417C-8F41-1B4D69F93904}"_cry_guid, "Shoot");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::SetMoveSpeed, "{C882D81E-1C87-428F-8418-B6896A85577B}"_cry_guid, "Set Move Speed");
				pFunction->BindInput(1, 'mspd', "Move Speed", "Movement Speed");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::SetRotationSpeed, "{67AB2303-58D1-4339-9635-341AB555B5C7}"_cry_guid, "Set Rotation Speed");
				pFunction->BindInput(1, 'rspd', "Rotation Speed", "Rotation Speed");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::SetRotationLimits, "{3AA0F21E-C6B8-4318-9900-77DDB6621B50}"_cry_guid, "Set Rotation Limits");
				pFunction->BindInput(1, 'minp', "Min Pitch", "Minimum Pitch");
				pFunction->BindInput(2, 'maxp', "Max Pitch", "Maximum Pitch");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::SetJumpHeight, "{0F5CE010-EE3B-4098-ACDE-7B85E3445B50}"_cry_guid, "Set Jump Height");
				pFunction->BindInput(1, 'jhgt', "Jump Height", "Jump Height");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::IsLocalClient, "{29F94FB6-54BD-4E10-AB93-2B87EA095D0D}"_cry_guid, "Is Local Client");
				pFunction->BindOutput(0, 'ilc', "Is Local Client", "Is Local Client");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::QueueFragmentOnScope, "{4553E0A4-F1BA-4B45-ACD7-C2671B7F05D3}"_cry_guid, "Queue Fragment On Scope");
				pFunction->SetDescription("Queues a Mannequin fragment on a scope for playback");
				pFunction->SetFlags(Schematyc::EEnvFunctionFlags::Construction);
				pFunction->BindInput(1, 'frag', "Fragment Name");
				pFunction->BindInput(2, 'scop', "Scope");
				pFunction->BindInput(3, 'tp', "Thirdperson");
				componentScope.Register(pFunction);
			}

			// These are here just for reference since you can get reflected component variables in Schematyc by default
			/*{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::GetMoveSpeed, "{0761CED9-067F-4C04-8E7F-170E0F5CFE66}"_cry_guid, "Get Move Speed");
				pFunction->BindOutput(0, 'mspd', "Move Speed", "Movement Speed");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::GetRotationSpeed, "{14867DF0-505C-4712-9DC1-17F1FD4C7CFF}"_cry_guid, "Get Rotation Speed");
				pFunction->BindOutput(0, 'rspd', "Rotation Speed", "Rotation Speed");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::GetRotationLimits, "{962F173C-E50C-4C5B-B751-8F718DA087B4}"_cry_guid, "Get Rotation Limits");
				pFunction->BindOutput(1, 'minp', "Min Pitch", "Minimum Pitch");
				pFunction->BindOutput(2, 'maxp', "Max Pitch", "Maximum Pitch");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::GetJumpHeight, "{D45E00F5-4259-4699-A86E-70168B324A73}"_cry_guid, "Get Jump Height");
				pFunction->BindOutput(0, 'jhgt', "Jump Height", "Jump Height");
				componentScope.Register(pFunction);
			}*/

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CPlayerComponent::SInitializeLocalPlayer));
			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CPlayerComponent::SRevive));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterPlayerComponent);
}

static void ReflectType(Schematyc::CTypeDesc<CPlayerComponent::SInitializeLocalPlayer>& desc)
{
	desc.SetGUID("{A0411357-E8B6-4BDC-AF4F-DF49263897DF}"_cry_guid);
	desc.SetLabel("Initialize Local Player");
}

static void ReflectType(Schematyc::CTypeDesc<CPlayerComponent::SRevive>& desc)
{
	desc.SetGUID("{7297C852-9EB8-4530-A7AD-E81D1BBFA16A}"_cry_guid);
	desc.SetLabel("Revive");
}

void CPlayerComponent::Initialize()
{
	// The character controller is responsible for maintaining player physics
	m_pCharacterController = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CCharacterControllerComponent>();

	// Define the animation component's interface ID (from ReflectType)
	const CryInterfaceID animComponentID = "{3CD5DDC5-EE15-437F-A997-79C2391537FE}"_cry_guid;

	// Array to store all components of this type
	DynArray<IEntityComponent*> components;
	m_pEntity->GetComponentsByTypeId(animComponentID, components);

	// Get the advanced animation components, responsible for updating Mannequin and animating the player
	if (components.size() > 0)
		m_pAnimationComponent = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[0]);

	if (components.size() > 1)
		m_pAnimationComponent2 = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[1]);

	// Load the character and Mannequin data from file
	m_pAnimationComponent->LoadFromDisk();

	// Acquire fragment and tag identifiers to avoid doing so each update
	m_idleFragmentId = m_pAnimationComponent->GetFragmentId("Idle");
	m_walkFragmentId = m_pAnimationComponent->GetFragmentId("Walk");
	m_rotateTagId = m_pAnimationComponent->GetTagId("Rotate");
	
	// Register the RemoteReviveOnClient function as a Remote Method Invocation (RMI) that can be executed by the server on clients
	SRmi<RMI_WRAP(&CPlayerComponent::RemoteReviveOnClient)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);
	SRmi<RMI_WRAP(&CPlayerComponent::RemoteShootOnServer)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);
}

void CPlayerComponent::InitializeLocalPlayer()
{
	// Set the playermodel to always update when out of view
	if (ICharacterInstance* pCharacter = m_pAnimationComponent->GetCharacter())
	{
		pCharacter->SetFlags(pCharacter->GetFlags() | CS_FLAG_UPDATE_ALWAYS);

		if (ISkeletonPose* pPose = pCharacter->GetISkeletonPose())
		{
			pPose->SetForceSkeletonUpdate(2);
		}
	}
	if (ICharacterInstance* pCharacter = m_pAnimationComponent2->GetCharacter())
	{
		pCharacter->SetFlags(pCharacter->GetFlags() | CS_FLAG_UPDATE_ALWAYS);

		if (ISkeletonPose* pPose = pCharacter->GetISkeletonPose())
		{
			pPose->SetForceSkeletonUpdate(2);
		}
	}

	if (ICharacterInstance* pCharInstance = m_pAnimationComponent->GetCharacter())
	{
		if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
		{
			/*pAttachmentMgr->GetInterfaceByName("head")->HideAttachment(1);
			pAttachmentMgr->GetInterfaceByName("jacket")->HideAttachment(1);
			pAttachmentMgr->GetInterfaceByName("upperbody")->HideAttachment(1);*/
			pAttachmentMgr->GetInterfaceByName("weapon")->HideAttachment(1);
		}
	}
	if (ICharacterInstance* pCharInstance = m_pAnimationComponent2->GetCharacter())
	{
		if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
		{
			pAttachmentMgr->GetInterfaceByName("head")->HideAttachment(1);
			pAttachmentMgr->GetInterfaceByName("lower_body")->HideAttachment(1);
			pAttachmentMgr->GetInterfaceByName("shoes")->HideAttachment(1);
		}
	}

	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "head", 0, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "head", 1, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "head", 2, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "head", 3, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "head", 4, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "head", 5, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "head", 6, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "head", 7, 0.0f);

	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "jacket", 0, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "jacket", 1, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "jacket", 2, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "jacket", 3, 0.0f);

	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "upperbody", 0, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "upperbody", 1, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "upperbody", 2, 0.0f);
	SetAttachmentOpacity(m_pAnimationComponent->GetCharacter(), "upperbody", 3, 0.0f);

	// Create the camera component, will automatically update the viewport every frame
	m_pCameraComponent = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CCameraComponent>();

	m_pCameraComponent->Activate();

	// Create the audio listener component.
	m_pAudioListenerComponent = m_pEntity->GetOrCreateComponent<Cry::Audio::DefaultComponents::CListenerComponent>();

	// Get the input component, wraps access to action mapping so we can easily get callbacks when inputs are triggered
	m_pInputComponent = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CInputComponent>();

	// Register an action, and the callback that will be sent when it's triggered
	m_pInputComponent->RegisterAction("player", "moveleft", [this](int activationMode, float value) {m_movementDelta.x = -value; HandleInputFlagChange(EInputFlag::MoveLeft, (EActionActivationMode)activationMode); });
	// Bind the 'A' key the "moveleft" action
	m_pInputComponent->BindAction("player", "moveleft", eAID_KeyboardMouse, eKI_A);

	m_pInputComponent->RegisterAction("player", "moveright", [this](int activationMode, float value) {m_movementDelta.x = value; HandleInputFlagChange(EInputFlag::MoveRight, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "moveright", eAID_KeyboardMouse, eKI_D);

	m_pInputComponent->RegisterAction("player", "moveforward", [this](int activationMode, float value) {m_movementDelta.y = value; HandleInputFlagChange(EInputFlag::MoveForward, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "moveforward", eAID_KeyboardMouse, eKI_W);

	m_pInputComponent->RegisterAction("player", "moveback", [this](int activationMode, float value) {m_movementDelta.y = -value; HandleInputFlagChange(EInputFlag::MoveBack, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "moveback", eAID_KeyboardMouse, eKI_S);

	m_pInputComponent->RegisterAction("player", "controllermove_x", [this](int activationMode, float value) {m_movementDelta.x = value; HandleInputFlagChange(EInputFlag::MoveLeft, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "controllermove_x", eAID_XboxPad, eKI_XI_ThumbLX);

	m_pInputComponent->RegisterAction("player", "controllermove_y", [this](int activationMode, float value) {m_movementDelta.y = value; HandleInputFlagChange(EInputFlag::MoveForward, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "controllermove_y", eAID_XboxPad, eKI_XI_ThumbLY);

	m_pInputComponent->RegisterAction("player", "mouse_rotateyaw", [this](int activationMode, float value) { m_mouseDeltaRotation.x -= value; HandleInputFlagChange(EInputFlag::MouseMoved, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "mouse_rotateyaw", eAID_KeyboardMouse, EKeyId::eKI_MouseX);

	m_pInputComponent->RegisterAction("player", "mouse_rotatepitch", [this](int activationMode, float value) { m_mouseDeltaRotation.y -= value; HandleInputFlagChange(EInputFlag::MouseMoved, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "mouse_rotatepitch", eAID_KeyboardMouse, EKeyId::eKI_MouseY);

	// Our local player has initialized, now call the Schematyc signal for it
	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		m_pEntity->GetSchematycObject()->ProcessSignal(SInitializeLocalPlayer(), GetGUID());
	}
}

Cry::Entity::EventFlags CPlayerComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::BecomeLocalPlayer |
		Cry::Entity::EEvent::Update |
		Cry::Entity::EEvent::Reset;
}

void CPlayerComponent::ProcessEvent(const SEntityEvent& event)
{
	switch (event.event)
	{
	case Cry::Entity::EEvent::BecomeLocalPlayer:
	{
		InitializeLocalPlayer();
	}
	break;
	case Cry::Entity::EEvent::Update:
	{
		// Don't update the player if we haven't spawned yet
		if(!m_isAlive)
			return;
		
		const float frameTime = event.fParam[0];

		if (IsLocalClient())
		{
			// Start by updating the movement request we want to send to the character controller
			// This results in the physical representation of the character moving
			UpdateMovementRequest(frameTime);

			// Process mouse input to update look orientation.
			UpdateLookDirectionRequest(frameTime);
		}

		// Update the animation state of the character
		UpdateAnimation(frameTime);

		if (IsLocalClient())
		{
			// Update the camera component offset
			UpdateCamera(frameTime);
		}
	}
	break;
	case Cry::Entity::EEvent::Reset:
	{
		// Disable player when leaving game mode.
		m_isAlive = event.nParam[0] != 0;

		if (event.nParam[0] != 0)
		{
			// Reset player when entering game mode
			OnReadyForGameplayOnServer();
		}
	}
	break;
	}
}

bool CPlayerComponent::NetSerialize(TSerialize ser, EEntityAspects aspect, uint8 profile, int flags)
{
	if(aspect == InputAspect)
	{
		ser.BeginGroup("PlayerInput");

		const CEnumFlags<EInputFlag> prevInputFlags = m_inputFlags;

		ser.Value("m_inputFlags", m_inputFlags.UnderlyingValue(), 'ui8');

		if (ser.IsReading())
		{
			const CEnumFlags<EInputFlag> changedKeys = prevInputFlags ^ m_inputFlags;

			const CEnumFlags<EInputFlag> pressedKeys = changedKeys & prevInputFlags;
			if (!pressedKeys.IsEmpty())
			{
				HandleInputFlagChange(pressedKeys, eAAM_OnPress);
			}

			const CEnumFlags<EInputFlag> releasedKeys = changedKeys & prevInputFlags;
			if (!releasedKeys.IsEmpty())
			{
				HandleInputFlagChange(pressedKeys, eAAM_OnRelease);
			}
		}

		// Serialize the player look orientation
		ser.Value("m_lookOrientation", m_lookOrientation, 'ori3');

		ser.EndGroup();
	}

	return true;
}

void CPlayerComponent::UpdateMovementRequest(float frameTime)
{
	if (!m_pCharacterController) return;

	// Base input vector
	Vec3 input = Vec3(m_movementDelta.x, m_movementDelta.y, 0.0f);
	if (input.GetLengthSquared() > 0.0f)
		input.Normalize();

	Vec3 finalVelocity = ZERO;

	if (IsSwimming())
	{
		if (m_pCameraComponent)
		{
			// Rotate input by camera rotation (includes pitch) for 3D swimming
			finalVelocity = m_pCameraComponent->GetCamera().GetMatrix().TransformVector(input) * m_moveSpeed;
		}
	}
	else
	{
		// Land movement: rotate input by entity rotation (XY only)
		finalVelocity = GetEntity()->GetWorldRotation() * input * m_moveSpeed;
	}

	m_pCharacterController->SetVelocity(finalVelocity);
}

void CPlayerComponent::UpdateLookDirectionRequest(float frameTime)
{
	// Apply smoothing filter to the mouse input
	//m_mouseDeltaRotation = m_mouseDeltaSmoothingFilter.Push(m_mouseDeltaRotation).Get();

	// Update angular velocity metrics
	m_horizontalAngularVelocity = (m_mouseDeltaRotation.x * m_rotationSpeed) / frameTime;
	m_averagedHorizontalAngularVelocity.Push(m_horizontalAngularVelocity);

	//if (m_mouseDeltaRotation.IsEquivalent(ZERO, MOUSE_DELTA_TRESHOLD))
		//return;

	// Start with updating look orientation from the latest input
	Ang3 ypr = CCamera::CreateAnglesYPR(Matrix33(m_lookOrientation));

	// Yaw
	ypr.x += m_mouseDeltaRotation.x * m_rotationSpeed;

	// Pitch
	// TODO: Perform soft clamp here instead of hard wall, should reduce rot speed in this direction when close to limit.
	ypr.y = CLAMP(ypr.y + m_mouseDeltaRotation.y * m_rotationSpeed, m_rotationLimitsMinPitch, m_rotationLimitsMaxPitch);

	// Roll (skip)
	ypr.z = 0;

	m_lookOrientation = Quat(CCamera::CreateOrientationYPR(ypr));

	// Reset the mouse delta accumulator every frame
	m_mouseDeltaRotation = ZERO;
}

void CPlayerComponent::UpdateAnimation(float frameTime)
{
	const float angularVelocityTurningThreshold = 0.174; // [rad/s]

	// Update tags and motion parameters used for turning
	/*const bool isTurning = std::abs(m_averagedHorizontalAngularVelocity.Get()) > angularVelocityTurningThreshold;
	m_pAnimationComponent->SetTagWithId(m_rotateTagId, isTurning);
	if (isTurning)
	{
		// TODO: This is a very rough predictive estimation of eMotionParamID_TurnAngle that could easily be replaced with accurate reactive motion
		// if we introduced IK look/aim setup to the character's model and decoupled entity's orientation from the look direction derived from mouse input.

		const float turnDuration = 1.0f; // Expect the turning motion to take approximately one second.
		m_pAnimationComponent->SetMotionParameter(eMotionParamID_TurnAngle, m_horizontalAngularVelocity * turnDuration);
	}*/

	// Update active fragment
	/*const FragmentID& desiredFragmentId = m_pCharacterController->IsOnGround() ? m_walkFragmentId : m_idleFragmentId;
	if (m_activeFragmentId != desiredFragmentId)
	{
		m_activeFragmentId = desiredFragmentId;
		m_pAnimationComponent->QueueFragmentWithId(m_activeFragmentId);
	}*/

	// Update entity rotation as the player turns
	// We only want to affect Z-axis rotation, zero pitch and roll
	Ang3 ypr = CCamera::CreateAnglesYPR(Matrix33(m_lookOrientation));
	ypr.y = 0;
	ypr.z = 0;
	const Quat correctedOrientation = Quat(CCamera::CreateOrientationYPR(ypr));

	// Send updated transform to the entity, only orientation changes
	//GetEntity()->SetPosRotScale(GetEntity()->GetWorldPos(), correctedOrientation, Vec3(1, 1, 1));
	//if (!m_pEntity->GetComponent<CRagdollHelperComponent>()->IsRagdoll())
		m_pEntity->SetRotation(correctedOrientation);

	if (m_pEntity->GetSlotFlags(m_pAnimationComponent2->GetEntitySlotId()) & ENTITY_FLAG_CASTSHADOW)
	{
		if (IRenderNode* pRenderNode = m_pEntity->GetSlotRenderNode(m_pAnimationComponent2->GetEntitySlotId()))
		{
			uint32 slotFlags = m_pEntity->GetSlotFlags(m_pAnimationComponent2->GetEntitySlotId());

			slotFlags &= ~ENTITY_SLOT_CAST_SHADOW;

			m_pEntity->SetSlotFlags(m_pAnimationComponent2->GetEntitySlotId(), slotFlags);
		}
	}
}

void CPlayerComponent::UpdateCamera(float frameTime)
{
	// Start with getting look orientation from the latest input
	Ang3 ypr = CCamera::CreateAnglesYPR(Matrix33(m_lookOrientation));

	//if (!m_pEntity->GetComponent<CRagdollHelperComponent>()->IsRagdoll())
	//{
		ypr.x = 0;
		ypr.z = 0;
	//}

	// Start with changing view rotation to the requested mouse look orientation
	Matrix34 localTransform = IDENTITY;
	localTransform.SetRotation33(CCamera::CreateOrientationYPR(ypr));

	float viewOffsetForward;
	float viewOffsetUp;

	if (!m_bIsThirdPerson)
	{
		//if (!m_pEntity->GetComponent<CRagdollHelperComponent>()->IsRagdoll())
		//{
			Vec3 finalOffset = Vec3(0, 0, m_baseHeight) + (localTransform.GetColumn2() * m_torsoHeight);
			localTransform.SetTranslation(finalOffset);
		//}
	}
	else
	{
		// Offset the player along the forward axis (normally back)
		// Also offset upwards
		viewOffsetForward = -1.5f;
		viewOffsetUp = 2.f;

		localTransform.SetTranslation(Vec3(0, viewOffsetForward, viewOffsetUp));
	}

	if (m_pCameraComponent)
		m_pCameraComponent->SetTransformMatrix(localTransform);
	if (m_pAudioListenerComponent)
		m_pAudioListenerComponent->SetOffset(localTransform.GetTranslation());

	Matrix34 test = localTransform;

	Vec3 up = test.GetColumn2();
	Vec3 forward = test.GetColumn1();
	Vec3 right = test.GetColumn0();
	float testOffset = -1.61f;

	Vec3 finalOffset = test.GetTranslation() + (up * testOffset) + (forward * -0.275f) + (right * -0.046f);
	test.SetTranslation(finalOffset);

	if (m_pAnimationComponent2)
		m_pAnimationComponent2->SetTransformMatrix(test);

	if (!m_pCameraComponent || !m_pAudioListenerComponent)
	{
		gEnv->pRenderer->GetIRenderAuxGeom()->Draw2dLabel(50.0f, 50.0f, 1.5f, Col_Orange, false, "Player Schematyc was edited, please reopen the level if player isn't working propely");
	}
}

void CPlayerComponent::Jump()
{
	m_pCharacterController->AddVelocity(Vec3(0, 0, -m_pCharacterController->GetVelocity().z + m_jumpHeight));
}

void CPlayerComponent::Shoot()
{
	if (ICharacterInstance *pCharacter = m_pAnimationComponent2->GetCharacter())
	{
		IAttachment* pBarrelOutAttachment = pCharacter->GetIAttachmentManager()->GetInterfaceByName("barrel_out");

		if (pBarrelOutAttachment != nullptr)
		{
			QuatTS bulletOrigin = pBarrelOutAttachment->GetAttWorldAbsolute();

			RemoteShootParams params;
			params.position = bulletOrigin.t;
			params.rotation = bulletOrigin.q;

			// Tell server to spawn the bullet
			SRmi<RMI_WRAP(&CPlayerComponent::RemoteShootOnServer)>::InvokeOnServer(this, std::move(params));
		}
	}
}

bool CPlayerComponent::IsSwimming()
{
	if (m_pCharacterController)
	{
		if (IEntity* pEntity = m_pCharacterController->GetEntity())
		{
			if (IPhysicalEntity* pPhysEnt = pEntity->GetPhysicalEntity())
			{
				pe_player_dynamics dyn;
				pPhysEnt->GetParams(&dyn);

				return dyn.bSwimming;
			}
		}
	}

	return false;
}

void CPlayerComponent::SetMoveSpeed(float moveSpeed)
{
	m_moveSpeed = moveSpeed;
}
void CPlayerComponent::SetRotationSpeed(float rotationSpeed)
{
	m_rotationSpeed = rotationSpeed;
}
void CPlayerComponent::SetRotationLimits(float minPitch, float maxPitch)
{
	m_rotationLimitsMinPitch = minPitch;
	m_rotationLimitsMaxPitch = maxPitch;
}
void CPlayerComponent::SetJumpHeight(float jumpHeight)
{
	m_jumpHeight = jumpHeight;
}

float CPlayerComponent::GetMoveSpeed()
{
	return m_moveSpeed;
}
float CPlayerComponent::GetRotationSpeed()
{
	return m_rotationSpeed;
}
void CPlayerComponent::GetRotationLimits(float& minPitch, float& maxPitch)
{
	minPitch = m_rotationLimitsMinPitch;
	maxPitch = m_rotationLimitsMaxPitch;
}
float CPlayerComponent::GetJumpHeight()
{
	return m_jumpHeight;
}

void CPlayerComponent::QueueFragmentOnScope(Schematyc::CSharedString fragment, const EPlayerScopes& scope, bool thirdperson)
{
	IActionPtr& actionRef = [&]() -> IActionPtr&
	{
		switch (scope)
		{
		case EPlayerScopes::Scope_1:
			return m_pFullBody1PAction;

		case EPlayerScopes::Scope_3:
			return m_pMotion1PAction;

		case EPlayerScopes::Scope_6:
			return m_pFullBody3PAction;

		default:
			return m_pFullBody1PAction; // fallback
		}
	}();

	Cry::DefaultComponents::CAdvancedAnimationComponent* myComponent;

	if (thirdperson)
	{	
		myComponent = m_pAnimationComponent;
	}
	else
	{
		myComponent = m_pAnimationComponent2;
	}

	if (actionRef)
	{
		actionRef->Stop();
		actionRef = nullptr;
	}



	actionRef = new TAction<SAnimationContext>(1, myComponent->GetFragmentId(fragment.c_str()), TAG_STATE_EMPTY, 0U, scope);

	myComponent->QueueCustomFragment(*actionRef);
}

void CPlayerComponent::SetAttachmentOpacity(ICharacterInstance* character, Schematyc::CSharedString attachmentName, int materialIndex, float opacity)
{
	IMaterial* m_pMaterial;
	IMaterial* pMaterial;

	// Try to get replacement material first (defined in cdf), if it doesn't exist then get the model's one
	if (IMaterial* test = character->GetIAttachmentManager()->GetInterfaceByName(attachmentName.c_str())->GetIAttachmentObject()->GetReplacementMaterial())
		pMaterial = test;
	else if (IMaterial* test = character->GetIAttachmentManager()->GetInterfaceByName(attachmentName.c_str())->GetIAttachmentSkin()->GetISkin()->GetIMaterial(0))
		pMaterial = test;

	//CryLogAlways("Material is %s", pMaterial->GetName());

	m_pMaterial = gEnv->p3DEngine->GetMaterialManager()->CloneMaterial(pMaterial); // One way of doing it

	gEnv->p3DEngine->GetMaterialManager()->CopyMaterial(pMaterial, m_pMaterial, EMaterialCopyFlags::MTL_COPY_DEFAULT); // We can also copy the material and store it, pMaterial is material we want to copy, and m_pMaterial is now the copy of it

	float newAlpha = opacity;

	// apply changes
	m_pMaterial->GetSubMtl(materialIndex)->SetGetMaterialParamFloat("opacity", newAlpha, false);

	character->GetIAttachmentManager()->GetInterfaceByName(attachmentName.c_str())->GetIAttachmentObject()->SetReplacementMaterial(m_pMaterial);
}

void CPlayerComponent::OnReadyForGameplayOnServer()
{
	CRY_ASSERT(gEnv->bServer, "This function should only be called on the server!");

	const Matrix34 newTransform = CSpawnPointComponent::GetFirstSpawnPointTransform();
	
	Revive(newTransform);
	
	// Invoke the RemoteReviveOnClient function on all remote clients, to ensure that Revive is called across the network
	SRmi<RMI_WRAP(&CPlayerComponent::RemoteReviveOnClient)>::InvokeOnOtherClients(this, RemoteReviveParams{ newTransform.GetTranslation(), Quat(newTransform) });

	// Go through all other players, and send the RemoteReviveOnClient on their instances to the new player that is ready for gameplay
	const int channelId = m_pEntity->GetNetEntity()->GetChannelId();
	CGamePlugin::GetInstance()->IterateOverPlayers([this, channelId](CPlayerComponent& player)
	{
		// Don't send the event for the player itself (handled in the RemoteReviveOnClient event above sent to all clients)
		if (player.GetEntityId() == GetEntityId())
			return;

		// Only send the Revive event to players that have already respawned on the server
		if (!player.m_isAlive)
			return;

		// Revive this player on the new player's machine, on the location the existing player was currently at
		const QuatT currentOrientation = QuatT(player.GetEntity()->GetWorldTM());
		SRmi<RMI_WRAP(&CPlayerComponent::RemoteReviveOnClient)>::InvokeOnClient(&player, RemoteReviveParams{ currentOrientation.t, currentOrientation.q }, channelId);
	});
}

bool CPlayerComponent::RemoteShootOnServer(RemoteShootParams&& params, INetChannel* pNetChannel)
{
	SEntitySpawnParams spawnParams;
	spawnParams.pClass = gEnv->pEntitySystem->GetClassRegistry()->FindClass("schematyc::schematycs::bullet");

	spawnParams.vPosition = params.position;
	spawnParams.qRotation = params.rotation;

	const float bulletScale = 0.05f;
	spawnParams.vScale = Vec3(bulletScale);

	// Spawn the entity
	if (IEntity* pEntity = gEnv->pEntitySystem->SpawnEntity(spawnParams))
	{
		// See Bullet.cpp, bullet is propelled in  the rotation and position the entity was spawned with
		//pEntity->CreateComponentClass<CBulletComponent>();
	}

	return true;
}

bool CPlayerComponent::RemoteReviveOnClient(RemoteReviveParams&& params, INetChannel* pNetChannel)
{
	// Call the Revive function on this client
	Revive(Matrix34::Create(Vec3(1.f), params.rotation, params.position));

	return true;
}

void CPlayerComponent::Revive(const Matrix34& transform)
{
	m_isAlive = true;
	
	// Set the entity transformation, except if we are in the editor
	// In the editor case we always prefer to spawn where the viewport is
	if(!gEnv->IsEditor())
	{
		m_pEntity->SetWorldTM(transform);
	}
	
	// Apply the character to the entity and queue animations
	m_pAnimationComponent->ResetCharacter();
	m_pCharacterController->Physicalize();

	IPhysicalEntity* pPhysEnt = m_pCharacterController->GetEntity()->GetPhysicalEntity();
	pe_player_dynamics dynamics;
	pPhysEnt->GetParams(&dynamics);
	// Remove the landing bob
	dynamics.nodSpeed = 0.f;
	pPhysEnt->SetParams(&dynamics);

	// Reset input now that the player respawned
	m_inputFlags.Clear();
	NetMarkAspectsDirty(InputAspect);
	
	m_mouseDeltaRotation = ZERO;
	m_lookOrientation = m_pEntity->GetRotation();

	m_mouseDeltaSmoothingFilter.Reset();

	m_activeFragmentId = FRAGMENT_ID_INVALID;

	m_horizontalAngularVelocity = 0.0f;
	m_averagedHorizontalAngularVelocity.Reset();

	if (ICharacterInstance *pCharacter = m_pAnimationComponent->GetCharacter())
	{
		// Cache the camera joint id so that we don't need to look it up every frame in UpdateView
		m_cameraJointId = pCharacter->GetIDefaultSkeleton().GetJointIDByName("head");
	}

	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		// Our player has revived, call the Schematyc signal for it now
		m_pEntity->GetSchematycObject()->ProcessSignal(SRevive(), GetGUID());
	}
}

void CPlayerComponent::HandleInputFlagChange(const CEnumFlags<EInputFlag> flags, const CEnumFlags<EActionActivationMode> activationMode, const EInputFlagType type)
{
	switch (type)
	{
	case EInputFlagType::Hold:
	{
		if (activationMode == eAAM_OnRelease)
		{
			m_inputFlags &= ~flags;
		}
		else
		{
			m_inputFlags |= flags;
		}
	}
	break;
	case EInputFlagType::Toggle:
	{
		if (activationMode == eAAM_OnRelease)
		{
			// Toggle the bit(s)
			m_inputFlags ^= flags;
		}
	}
	break;
	}
	
	if(IsLocalClient())
	{
		NetMarkAspectsDirty(InputAspect);
	}
}