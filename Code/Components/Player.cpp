// Copyright 2017-2020 Crytek GmbH / Crytek Group. All rights reserved.
#include "StdAfx.h"
#include "Player.h"
#include "Bullet.h"
#include "SpawnPoint.h"
#include "GamePlugin.h"
#include "Weapon.h"
#include "Item.h"

#include <CryRenderer/IRenderAuxGeom.h>
#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CryCore/StaticInstanceList.h>
#include <CryNetwork/Rmi.h>
#include <CryCore/Platform/IPlatformOS.h>
#include <CryAction/IMaterialEffects.h>

#include <cmath>

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
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::StartShoot, "{899ADE13-94B7-417C-8F41-1B4D69F93904}"_cry_guid, "StartShoot");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::StopShoot, "{8718B792-ED67-48F7-9E5E-5D9C46F866AA}"_cry_guid, "StopShoot");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::StartShoot2, "{ECF8D323-48BB-417C-AF3A-64116B86E331}"_cry_guid, "StartShoot2");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::StopShoot2, "{4049AE0A-9CD8-4A74-B29C-951A3CDB3F76}"_cry_guid, "StopShoot2");
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
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::IsServer, "{63088B52-55E6-4779-9ACB-B39349BC9EC0}"_cry_guid, "Is Server");
				pFunction->BindOutput(0, 'isrv', "Is Server", "Is Server");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::QueueFragmentOnScope, "{4553E0A4-F1BA-4B45-ACD7-C2671B7F05D3}"_cry_guid, "Queue Fragment On Scope");
				pFunction->SetDescription("Queues a Mannequin fragment on a scope for playback");
				pFunction->SetFlags(Schematyc::EEnvFunctionFlags::Construction);
				pFunction->BindInput(1, 'frag', "Fragment Name");
				pFunction->BindInput(2, 'scop', "Scope");
				pFunction->BindInput(3, 'tru', "Override Previous Fragment");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::SetDesiredFragmentOnScope, "{28BED6B2-A304-43AB-8854-95D28DEB7A0D}"_cry_guid, "Set Desired Fragment");
				pFunction->BindInput(1, 'frag', "Fragment", "Fragment Name");
				pFunction->BindInput(2, 'scop', "Scope");
				pFunction->BindInput(3, 'tru', "Override Previous Fragment");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::RefreshFragmentsOnScopes, "{95E2CDF4-C429-46CD-8369-C594E2B82212}"_cry_guid, "Refresh Fragments On Scopes");
				pFunction->BindInput(1, 'tpf', "Override Previous Fragment");
				pFunction->BindInput(2, 'sc01', "FullBody1P");
				pFunction->BindInput(3, 'sc02', "Torso1P");
				pFunction->BindInput(4, 'sc03', "Motion1P");
				pFunction->BindInput(5, 'sc04', "Sway1P");
				pFunction->BindInput(6, 'sc05', "GroundAlignment1P");
				pFunction->BindInput(7, 'sc06', "FullBody3P");
				pFunction->BindInput(8, 'sc07', "AimPose");
				pFunction->BindInput(9, 'sc08', "Torso3P");
				pFunction->BindInput(10, 'sc09', "GroundAlignment3P");
				pFunction->BindInput(11, 'sc10', "Weapon");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::SetCrouching, "{C27EFC99-43AA-4AE6-A521-AF0BBC127D26}"_cry_guid, "Set Crouching");
				pFunction->SetDescription("Sets crouching");
				pFunction->BindInput(1, 'crch', "Crouching");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::GetCrouching, "{81AD4871-5E02-4FDE-A263-9BDDF8B4BA0D}"_cry_guid, "Get Crouching");
				pFunction->SetDescription("Gets crouching");
				pFunction->BindOutput(0, 'crch', "Crouching");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::GetActiveWeapon, "{EEC48135-FBA0-40E2-9DDD-E076DABE5966}"_cry_guid, "Get Active Weapon");
				pFunction->BindOutput(0, 'wid', "Weapon Entity");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::SetSubTag, "{92F752EA-99E2-4127-A6BD-A2FE10C31B5F}"_cry_guid, "Set SubTag");
				pFunction->BindInput(1, 'tag', "Tag", "Tag");
				pFunction->BindInput(2, 'val', "Value", "Value");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CPlayerComponent::SetFOV, "{66D61360-5387-4240-BC77-CC33232CA6D4}"_cry_guid, "Set FOV");
				pFunction->BindInput(1, 'fov', "FOV", "Field of View");
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
			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CPlayerComponent::SNoWeapons));
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

static void ReflectType(Schematyc::CTypeDesc<CPlayerComponent::SNoWeapons>& desc)
{
	desc.SetGUID("{E3D134B9-7FE1-4EE0-B488-48264518A169}"_cry_guid);
	desc.SetLabel("No Weapons");
	desc.AddMember(&CPlayerComponent::SNoWeapons::pWeaponAnimCodeName, 'acn', "AnimCodeName", "Animation Code Name", "Weapon name in animation code (e.g. Mannequin tags and fragments)", "Weapon Code Name");
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
		m_pAnimationComponent3P = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[0]);

	if (components.size() > 1)
		m_pAnimationComponent1P = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[1]);

	// Load the character and Mannequin data from file
	m_pAnimationComponent3P->LoadFromDisk();

	// Create the camera component, will automatically update the viewport every frame
	m_pCameraComponent = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CCameraComponent>();
	
	m_pInventoryComponent = m_pEntity->GetOrCreateComponent<CInventoryComponent>();
	
	// Register the RemoteReviveOnClient function as a Remote Method Invocation (RMI) that can be executed by the server on clients
	SRmi<RMI_WRAP(&CPlayerComponent::RemoteReviveOnClient)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);
	SRmi<RMI_WRAP(&CPlayerComponent::RemoteReviveOnServer)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);

	SRmi<RMI_WRAP(&CPlayerComponent::RemoteStartShoot)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);
	SRmi<RMI_WRAP(&CPlayerComponent::RemoteStopShoot)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);

	SRmi<RMI_WRAP(&CPlayerComponent::RemoteStartShoot2)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);
	SRmi<RMI_WRAP(&CPlayerComponent::RemoteStopShoot2)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);

	SRmi<RMI_WRAP(&CPlayerComponent::RemoteDieOnServer)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);
	SRmi<RMI_WRAP(&CPlayerComponent::RemoteDieOnClients)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);
}

void CPlayerComponent::InitializeLocalPlayer()
{
	// Set the playermodel to always update when out of view
	if (ICharacterInstance* pCharacter = m_pAnimationComponent3P->GetCharacter())
	{
		pCharacter->SetFlags(pCharacter->GetFlags() | CS_FLAG_UPDATE_ALWAYS);

		if (ISkeletonPose* pPose = pCharacter->GetISkeletonPose())
		{
			pPose->SetForceSkeletonUpdate(2);
		}
	}
	if (ICharacterInstance* pCharacter = m_pAnimationComponent1P->GetCharacter())
	{
		pCharacter->SetFlags(pCharacter->GetFlags() | CS_FLAG_UPDATE_ALWAYS);

		if (ISkeletonPose* pPose = pCharacter->GetISkeletonPose())
		{
			pPose->SetForceSkeletonUpdate(2);
		}
	}

	if (ICharacterInstance* pCharInstance = m_pAnimationComponent1P->GetCharacter())
	{
		if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
		{
			pAttachmentMgr->GetInterfaceByName("head")->HideAttachment(1);
			pAttachmentMgr->GetInterfaceByName("lower_body")->HideAttachment(1);
			pAttachmentMgr->GetInterfaceByName("shoes")->HideAttachment(1);
		}
	}

	m_pCameraComponent->Activate();

	// Create the audio listener component.
	m_pAudioListenerComponent = m_pEntity->GetOrCreateComponent<Cry::Audio::DefaultComponents::CListenerComponent>();

	// Get the input component, wraps access to action mapping so we can easily get callbacks when inputs are triggered
	m_pInputComponent = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CInputComponent>();

	GetActionMapsFromProfile();

	// Register an action, and the callback that will be sent when it's triggered
	m_pInputComponent->RegisterAction("player", "moveleft", [this](int activationMode, float value) {m_movementDelta.x = -value; HandleInputFlagChange(EInputFlag::MoveLeft, (EActionActivationMode)activationMode); if (activationMode == eAAM_OnPress || activationMode == eAAM_OnRelease) { UpdateMovementRequest(0); }});
	// Bind the 'A' key the "moveleft" action
	m_pInputComponent->BindAction("player", "moveleft", eAID_KeyboardMouse, eKI_A);

	m_pInputComponent->RegisterAction("player", "moveright", [this](int activationMode, float value) {m_movementDelta.x = value; HandleInputFlagChange(EInputFlag::MoveRight, (EActionActivationMode)activationMode); if (activationMode == eAAM_OnPress || activationMode == eAAM_OnRelease) { UpdateMovementRequest(0); }});
	m_pInputComponent->BindAction("player", "moveright", eAID_KeyboardMouse, eKI_D);

	m_pInputComponent->RegisterAction("player", "moveforward", [this](int activationMode, float value) {m_movementDelta.y = value; HandleInputFlagChange(EInputFlag::MoveForward, (EActionActivationMode)activationMode); if (activationMode == eAAM_OnPress || activationMode == eAAM_OnRelease) { UpdateMovementRequest(0); }});
	m_pInputComponent->BindAction("player", "moveforward", eAID_KeyboardMouse, eKI_W);

	m_pInputComponent->RegisterAction("player", "moveback", [this](int activationMode, float value) {m_movementDelta.y = -value; HandleInputFlagChange(EInputFlag::MoveBack, (EActionActivationMode)activationMode); if (activationMode == eAAM_OnPress || activationMode == eAAM_OnRelease) { UpdateMovementRequest(0); }});
	m_pInputComponent->BindAction("player", "moveback", eAID_KeyboardMouse, eKI_S);

	m_pInputComponent->RegisterAction("player", "controllermove_x", [this](int activationMode, float value) {m_movementDelta.x = value; HandleInputFlagChange(EInputFlag::MoveLeft, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "controllermove_x", eAID_XboxPad, eKI_XI_ThumbLX);

	m_pInputComponent->RegisterAction("player", "controllermove_y", [this](int activationMode, float value) {m_movementDelta.y = value; HandleInputFlagChange(EInputFlag::MoveForward, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "controllermove_y", eAID_XboxPad, eKI_XI_ThumbLY);

	m_pInputComponent->RegisterAction("player", "mouse_rotateyaw", [this](int activationMode, float value) { m_mouseDeltaRotation.x -= value; HandleInputFlagChange(EInputFlag::MouseMoved, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "mouse_rotateyaw", eAID_KeyboardMouse, EKeyId::eKI_MouseX);

	m_pInputComponent->RegisterAction("player", "mouse_rotatepitch", [this](int activationMode, float value) { m_mouseDeltaRotation.y -= value; HandleInputFlagChange(EInputFlag::MouseMoved, (EActionActivationMode)activationMode); });
	m_pInputComponent->BindAction("player", "mouse_rotatepitch", eAID_KeyboardMouse, EKeyId::eKI_MouseY);

	m_pInputComponent->RegisterAction("player", "toggleperspective", [this](int activationMode, float value) 
	{
		if (activationMode == eAAM_OnPress)
		{
			m_bIsThirdPersonCamera = !m_bIsThirdPersonCamera;

			if (!IsRagdoll())
			{
				SetCharacterThirdPerson(m_bIsThirdPersonCamera);

				if (IEntity* pWeapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
				{
					if (auto* pWeaponComp = pWeapon->GetComponent<CWeaponComponent>())
					{
						pWeaponComp->SetShadowsOnly(!m_bIsThirdPersonCamera);
					}
				}
			}
			else
			{
				if (ICharacterInstance* pCharInstance = m_pAnimationComponent3P->GetCharacter())
				{
					if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
					{
						if (m_bIsThirdPersonCamera)
						{
							pAttachmentMgr->GetInterfaceByName("head")->HideAttachment(0);
						}
						else
						{
							pAttachmentMgr->GetInterfaceByName("head")->HideAttachment(1);
							pAttachmentMgr->GetInterfaceByName("head")->HideInShadow(0);
						}
					}
				}
			}
		}
	});
	m_pInputComponent->BindAction("player", "toggleperspective", eAID_KeyboardMouse, eKI_C);

	m_pInputComponent->RegisterAction("player", "suicide", [this](int activationMode, float value)
	{
		if (activationMode == eAAM_OnPress)
		{
			RemoteBlankParams params;

			SRmi<RMI_WRAP(&CPlayerComponent::RemoteDieOnServer)>::InvokeOnServer(this, std::move(params));
		}
	});
	m_pInputComponent->BindAction("player", "suicide", eAID_KeyboardMouse, eKI_L);

	m_pInputComponent->RegisterAction("player", "respawn", [this](int activationMode, float value)
	{
		if (activationMode == eAAM_OnPress)
		{
			RemoteBlankParams params;

			SRmi<RMI_WRAP(&CPlayerComponent::RemoteReviveOnServer)>::InvokeOnServer(this, std::move(params));
		}
	});
	m_pInputComponent->BindAction("player", "respawn", eAID_KeyboardMouse, eKI_P);

	m_pInputComponent->RegisterAction("player", "switchweapon", [this](int activationMode, float value)
	{
		if (activationMode == eAAM_OnPress)
		{
			if (!m_pInventoryComponent->m_pItems.empty())
			{
				if (IEntity* pWeapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
				{
					CryLogAlways("Current weapon is %s", gEnv->pEntitySystem->GetEntity(m_pActiveWeapon)->GetName());

					pWeapon->GetComponent<CWeaponComponent>()->Holster();
				}


				/*if (it != m_pInventoryComponent->m_pItems.end())
				{
					size_t currentIndex = std::distance(m_pInventoryComponent->m_pItems.begin(), it);
					size_t nextIndex = (currentIndex + 1) % m_pInventoryComponent->m_pItems.size();

					m_pActiveWeapon = m_pInventoryComponent->m_pItems[nextIndex];

					if (IEntity* pWeapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
					{
						CryLogAlways("Switched ActiveWeapon to %s", gEnv->pEntitySystem->GetEntity(m_pActiveWeapon)->GetName());

						pWeapon->GetComponent<CWeaponComponent>()->Equip();
					}
				}*/
			}
		}
	});
	m_pInputComponent->BindAction("player", "switchweapon", eAID_KeyboardMouse, EKeyId::eKI_1);

	m_pInputComponent->RegisterAction("player", "switchweapon2", [this](int activationMode, float value)
	{
		if (activationMode == eAAM_OnPress)
		{
			if (m_pActiveWeapon == 0)
			{
				m_pActiveWeapon = m_pInventoryComponent->m_pItems[0];

				if (IEntity* pWeapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
				{
					CryLogAlways("Switched ActiveWeapon to %s", gEnv->pEntitySystem->GetEntity(m_pActiveWeapon)->GetName());

					pWeapon->GetComponent<CWeaponComponent>()->Equip();
				}
			}
			else
			{
				auto it = std::find(m_pInventoryComponent->m_pItems.begin(), m_pInventoryComponent->m_pItems.end(), m_pActiveWeapon);

				if (it != m_pInventoryComponent->m_pItems.end())
				{
					size_t currentIndex = std::distance(m_pInventoryComponent->m_pItems.begin(), it);
					size_t nextIndex = (currentIndex + 1) % m_pInventoryComponent->m_pItems.size();

					m_pActiveWeapon = m_pInventoryComponent->m_pItems[nextIndex];

					if (IEntity* pWeapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
					{
						CryLogAlways("Switched ActiveWeapon to %s", gEnv->pEntitySystem->GetEntity(m_pActiveWeapon)->GetName());

						pWeapon->GetComponent<CWeaponComponent>()->Equip();
					}
				}
			}
		}
	});
	m_pInputComponent->BindAction("player", "switchweapon2", eAID_KeyboardMouse, EKeyId::eKI_2);

	m_pInputComponent->RegisterAction("player", "switchweapon3", [this](int activationMode, float value)
	{
		if (activationMode == eAAM_OnPress)
		{
			if (m_pActiveWeapon != 0)
			{
				if (IEntity* pWeapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
				{
					if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
					{
						m_pEntity->GetSchematycObject()->ProcessSignal(SNoWeapons(pWeapon->GetComponent<CWeaponComponent>()->m_pAnimCodeName), GetGUID());
					}

					pWeapon->GetComponent<CWeaponComponent>()->AttachToNone();
				}

				m_pActiveWeapon = 0;
			}
		}
	});
	m_pInputComponent->BindAction("player", "switchweapon3", eAID_KeyboardMouse, EKeyId::eKI_3);

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
		Cry::Entity::EEvent::Remove |
		Cry::Entity::EEvent::TimerExpired |
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

		// Water detection
		// Adjustable blend factor: 
		// 0.0f = feet height, 1.0f = camera height, 0.5f = halfway
		// TODO: Maybe move this to UpdateMovementRequest
		const float swimBlend = 0.8f;

		// Feet and camera positions
		Vec3 feetPos = m_pEntity->GetWorldPos();
		Vec3 camPos = gEnv->pSystem->GetViewCamera().GetPosition();

		// Water surface height at player's XY
		float waterHeight = gEnv->p3DEngine->GetWaterLevel(&feetPos, nullptr, true);

		// Blend between feet and camera
		float blendedZ = feetPos.z * (1.0f - swimBlend) + camPos.z * swimBlend;

		const float swimOffset = 0.0f; //0.1f; // small buffer, maybe tweak this later

		IPhysicalEntity* pPhysEnt = m_pCharacterController->GetEntity()->GetPhysicalEntity();
		pe_player_dynamics dynamics;
		pPhysEnt->GetParams(&dynamics);

		if (waterHeight > blendedZ + swimOffset)
			dynamics.bSwimming = 1;
		else if (waterHeight < blendedZ - swimOffset)
			dynamics.bSwimming = 0;

		pPhysEnt->SetParams(&dynamics);

		//CryLogAlways("Component FOV: %.2f | Current FOV: %.2f", m_pCameraComponent->GetFieldOfView().ToDegrees(), currentFOV.ToDegrees());

		if(m_pCameraComponent->GetFieldOfView().ToDegrees() != currentFOV.ToDegrees())
		{
			// Use a material effect FlowGraph to set view to the proxy entity
			TMFXEffectId fx = gEnv->pMaterialEffects->GetEffectIdByName("cameraproxy", "setviewproxy");

			SMFXRunTimeEffectParams fxParams;
			fxParams.playflags |= eMFXPF_Disable_Delay;
			fxParams.pos = m_pCameraComponent->GetWorldTransformMatrix().GetTranslation();

			gEnv->pMaterialEffects->ExecuteEffect(fx, fxParams);

			SMFXCustomParamValue fov;
			fov.fValue = m_pCameraComponent->GetFieldOfView().ToDegrees();

			// Use Intensity parameter to pass fov value
			gEnv->pMaterialEffects->SetCustomParameter(fx, "Intensity", fov);

			currentFOV = m_pCameraComponent->GetFieldOfView();
		}

		/*elapsedTime += frameTime;

		const float t = crymath::clamp(elapsedTime / duration, 0.0f, 1.0f);
		const float currentValue = fromValue + (toValue - fromValue) * t;

		CryLog("Value: %f", currentValue);*/

		// Debug log
		/*CryLogAlways(
			"WaterHeight=%.2f | FeetZ=%.2f | CamZ=%.2f | BlendZ=%.2f (Blend=%.2f) | Swimming=%d",
			waterHeight, feetPos.z, camPos.z, blendedZ, swimBlend, dynamics.bSwimming
		);*/
	}
	break;
	case Cry::Entity::EEvent::Remove:
	{
		if (gEnv->bServer)
		{
			for (EntityId id : m_pInventoryComponent->m_pItems)
			{
				if (gEnv->pEntitySystem->GetEntity(id))
				{
					gEnv->pEntitySystem->RemoveEntity(id);
				}
			}
		}
	}
	break;
	case Cry::Entity::EEvent::TimerExpired:
	{
		switch (event.nParam[0])
		{
		case 1:
		{
			SpawnDefaultWeapon();

			NetMarkAspectsDirty(WeaponAspect);
		}
		break;
		case 2:
		{
			CryLogAlways("[WeaponAspect] %s received weapon entity id: %u", m_pEntity->GetName(), m_pActiveWeapon);

			if (IEntity* pWeaponEntity = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
			{
				if (auto* pItemComp = pWeaponEntity->GetComponent<CItemComponent>())
				{
					pItemComp->SetOwner(Schematyc::ExplicitEntityId(GetEntityId()));

					if (auto* pWeaponComp = pWeaponEntity->GetComponent<CWeaponComponent>())
					{
						pWeaponComp->Equip();
					}
				}
			}
		}
		break;
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
			OnReadyForGameplayOnServer(true);
		}
		else
		{
			m_pAnimationComponent1P->SetType(Cry::DefaultComponents::EMeshType::None);
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
	else if (aspect == WeaponAspect)
	{
		ser.BeginGroup("ActiveWeapon");

		// Set the new value from server
		ser.Value("m_pActiveWeapon", m_pActiveWeapon, 'eid');

		if (ser.IsReading() && m_pActiveWeapon != 0)
		{
			// Attach the weapon to player's hand on client side (using delay for now to fix timing issues on spawn)
			// TODO: Make this only delay upon spawn as it works fine without delay afterwards
			SetTimer(2, 50);
		}

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

	// Look direction
	Ang3 ypr = CCamera::CreateAnglesYPR(Matrix33(m_lookOrientation));

	ypr.y = 0;
	ypr.z = 0;

	if (IsSwimming())
	{
		if (m_pCameraComponent)
		{
			// Rotate input by camera rotation (includes pitch) for 3D swimming
			finalVelocity = m_pCameraComponent->GetCamera().GetMatrix().TransformVector(input) * m_currentMoveSpeed;
		}
	}
	else
	{
		// Land movement: rotate input by entity rotation (XY only)
		finalVelocity = Quat(CCamera::CreateOrientationYPR(ypr)) * input * m_currentMoveSpeed;
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
	m_pAnimationComponent3P->SetTagWithId(m_rotateTagId, isTurning);
	if (isTurning)
	{
		// TODO: This is a very rough predictive estimation of eMotionParamID_TurnAngle that could easily be replaced with accurate reactive motion
		// if we introduced IK look/aim setup to the character's model and decoupled entity's orientation from the look direction derived from mouse input.

		const float turnDuration = 1.0f; // Expect the turning motion to take approximately one second.
		m_pAnimationComponent3P->SetMotionParameter(eMotionParamID_TurnAngle, m_horizontalAngularVelocity * turnDuration);
	}*/

	// Update active fragment
	/*const FragmentID& desiredFragmentId = m_pCharacterController->IsOnGround() ? m_walkFragmentId : m_idleFragmentId;
	if (m_activeFragmentId != desiredFragmentId)
	{
		m_activeFragmentId = desiredFragmentId;
		m_pAnimationComponent3P->QueueFragmentWithId(m_activeFragmentId);
	}*/

	// Update entity rotation as the player turns
	// We only want to affect Z-axis rotation, zero pitch and roll
	Ang3 ypr = CCamera::CreateAnglesYPR(Matrix33(m_lookOrientation));
	ypr.y = 0;
	ypr.z = 0;
	const Quat correctedOrientation = Quat(CCamera::CreateOrientationYPR(ypr));

	// Send updated transform to the entity, only orientation changes
	if (!IsRagdoll())
		m_pEntity->SetRotation(correctedOrientation);

	if (m_pEntity->GetSlotFlags(m_pAnimationComponent1P->GetEntitySlotId()) & ENTITY_FLAG_CASTSHADOW)
	{
		if (IRenderNode* pRenderNode = m_pEntity->GetSlotRenderNode(m_pAnimationComponent1P->GetEntitySlotId()))
		{
			uint32 slotFlags = m_pEntity->GetSlotFlags(m_pAnimationComponent1P->GetEntitySlotId());

			slotFlags &= ~ENTITY_SLOT_CAST_SHADOW;

			m_pEntity->SetSlotFlags(m_pAnimationComponent1P->GetEntitySlotId(), slotFlags);
		}
	}

	// Update AimPose Target Position
	// TODO: Organise this better, maybe also expose to Schematyc
	if (m_pCameraComponent)
	{
		if (ICharacterInstance* pCharacter = m_pAnimationComponent3P->GetCharacter())
		{
			if (IAnimationPoseBlenderDir* pAim = pCharacter->GetISkeletonPose()->GetIPoseBlenderAim())
			{
				Matrix34 cameraTM = m_pCameraComponent->GetWorldTransformMatrix();
				Vec3 cameraPos = cameraTM.GetTranslation();

				// Copy orientation
				Quat lookQuat = m_lookOrientation;

				// Convert to direction
				Vec3 forward = lookQuat.GetColumn1();
				forward.Normalize();

				// Extract yaw and pitch from direction
				float yaw = atan2f(forward.x, forward.y);
				float pitch = asinf(forward.z);

				// Clamp pitch
				pitch = clamp_tpl(pitch,
					DEG2RAD(-60.0f),
					DEG2RAD(60.0f));

				// Rebuild direction from clamped values
				Vec3 clampedForward;
				clampedForward.x = sinf(yaw) * cosf(pitch);
				clampedForward.y = cosf(yaw) * cosf(pitch);
				clampedForward.z = sinf(pitch);

				// Apply to AimPose
				Vec3 target = cameraPos + clampedForward * 1000.0f;

				pAim->SetTarget(target);
				pAim->SetPolarCoordinatesSmoothTimeSeconds(0.0f);
			}
		}
	}
}

void CPlayerComponent::UpdateCamera(float frameTime)
{
	// Start with getting look orientation from the latest input
	Ang3 ypr = CCamera::CreateAnglesYPR(Matrix33(m_lookOrientation));

	if (!IsRagdoll())
	{
		ypr.z = 0;
	}

	// Lerp the current base height
	// TODO: Simplify this to prevent duplicate code
	if (m_bCrouching)
	{
		m_currentBaseHeight += (m_baseHeightCrouching - m_currentBaseHeight) * 10 * frameTime;
	}
	else
	{
		m_currentBaseHeight += (m_baseHeight - m_currentBaseHeight) * 10 * frameTime;
	}

	// Start with changing view rotation to the requested mouse look orientation
	Matrix34 localTransform = IDENTITY;
	localTransform.SetRotation33(Matrix33(m_pEntity->GetWorldRotation().GetInverted()) * CCamera::CreateOrientationYPR(ypr));

	float viewOffsetForward;
	float viewOffsetUp;

	if (!m_bIsThirdPersonCamera)
	{
		if (!IsRagdoll())
		{
			Vec3 finalOffset = Vec3(0, 0, m_currentBaseHeight) + (localTransform.GetColumn2() * m_torsoHeight);
			localTransform.SetTranslation(finalOffset);
		}
		else
		{
			if (ICharacterInstance *pCharacter = m_pAnimationComponent3P->GetCharacter())
			{
				// Get the local space orientation of the camera joint
				const QuatT &cameraOrientation = pCharacter->GetISkeletonPose()->GetAbsJointByID(m_cameraJointId3P);
				// Apply the offset to the camera
				localTransform.SetTranslation(cameraOrientation.t/* + Vec3(0, viewOffsetForward, viewOffsetUp)*/);
			}
		}
	}
	else
	{
		// Offset the player along the forward axis (normally back)
		// Also offset upwards
		viewOffsetForward = -2.5f;
		viewOffsetUp = 0.0f;

		Matrix33 cameraRot = Matrix33(m_pEntity->GetWorldRotation().GetInverted()) * CCamera::CreateOrientationYPR(ypr);

		Vec3 pivot(0, 0, m_currentBaseHeight + m_torsoHeight);
		Vec3 localOffset(0, viewOffsetForward, viewOffsetUp);

		/*if (IsRagdoll())
		{
			pivot = Vec3(0, 0, 1.375f);
			viewOffsetUp = 0.0f;

			localOffset = Vec3(0, viewOffsetForward, viewOffsetUp);
		}*/

		localTransform.SetRotation33(cameraRot);
		localTransform.SetTranslation(pivot + cameraRot * localOffset);
	}

	if (m_pCameraComponent) 
	{
		m_pCameraComponent->SetTransformMatrix(localTransform);

		if (IEntity* pViewProxyEntity = gEnv->pEntitySystem->GetEntity(m_pViewProxy))
		{
			pViewProxyEntity->SetPosRotScale(m_pCameraComponent->GetWorldTransformMatrix().GetTranslation(), (Quat)m_pCameraComponent->GetWorldTransformMatrix(), Vec3(1, 1, 1), EntityTransformationFlagsMask());
		}
	}
	if (m_pAudioListenerComponent)
	{
		m_pAudioListenerComponent->SetOffset(localTransform.GetTranslation());
	}

	if (ICharacterInstance* pCharacter = m_pAnimationComponent1P->GetCharacter())
	{
		if (ISkeletonPose* pPose = pCharacter->GetISkeletonPose())
		{
			// Current animated camera bone
			QuatT camBone = pPose->GetAbsJointByID(m_cameraJointId1P);

			// Camera transform relative to the player
			Quat cameraQuat(localTransform);
			Vec3 cameraPos = localTransform.GetTranslation();

			// Rotate the entire mesh so the camera bone aligns with the camera
			Quat meshQuat = cameraQuat * camBone.q.GetInverted();

			// Rotate the camera bone offset into its new orientation
			Vec3 rotatedOffset = meshQuat * camBone.t;

			Matrix34 tm = IDENTITY;
			tm.SetRotation33(Matrix33(meshQuat));
			tm.SetTranslation(cameraPos - rotatedOffset);

			m_pAnimationComponent1P->SetTransformMatrix(tm);
		}
	}

	if (!m_pCameraComponent || !m_pAudioListenerComponent)
	{
		gEnv->pRenderer->GetIRenderAuxGeom()->Draw2dLabel(50.0f, 50.0f, 1.5f, Col_Orange, false, "Player Schematyc was edited, please reopen the level if player isn't working propely");
	}
}

bool CPlayerComponent::GetActionMapsFromProfile()
{
	XmlNodeRef rootNode = GetISystem()->LoadXmlFromFile("libs/config/defaultProfile.xml");
	if (rootNode)
	{
		int version = -1;
		if (!rootNode->getAttr("version", version))
		{
			CryWarning(VALIDATOR_MODULE_GAME, VALIDATOR_WARNING, "Obsolete action map format - version info is missing");
			return false;
		}

		//	get action map data
		int nChildren = rootNode->getChildCount();
		for (int i = 0; i < nChildren; ++i)
		{
			XmlNodeRef child = rootNode->getChild(i);
			if (!strcmp(child->getTag(), "actionmap"))
			{
				const char* actionMapName = child->getAttr("name");

				CryLogAlways("found action map: %s", actionMapName);

				//	get action map data
				int nChildren = child->getChildCount();
				for (int i = 0; i < nChildren; ++i)
				{
					XmlNodeRef child2 = child->getChild(i);
					if (!strcmp(child2->getTag(), "action"))
					{
						CryLogAlways("found action: %s", child2->getAttr("name"));
					}
				}
			}
		}
	}
	else
	{
		CryWarning(VALIDATOR_MODULE_GAME, VALIDATOR_WARNING, "GetActionMapsFromProfile: Failed to open %s, action mappings loading will fail", "libs/config/defaultProfile.xml");
	}
	return false;
}

void CPlayerComponent::Jump()
{
	m_pCharacterController->AddVelocity(Vec3(0, 0, -m_pCharacterController->GetVelocity().z + m_jumpHeight));
}

void CPlayerComponent::StartShoot()
{
	if (IEntity* weapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
	{
		weapon->GetComponent<CWeaponComponent>()->StartFire();
	}

	RemoteShootParams params;

	SRmi<RMI_WRAP(&CPlayerComponent::RemoteStartShoot)>::InvokeOnServer(this, std::move(params));
}

void CPlayerComponent::StopShoot()
{
	if (IEntity* weapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
	{
		weapon->GetComponent<CWeaponComponent>()->StopFire();
	}

	RemoteShootParams params;

	SRmi<RMI_WRAP(&CPlayerComponent::RemoteStopShoot)>::InvokeOnServer(this, std::move(params));
}

void CPlayerComponent::StartShoot2()
{
	if (IEntity* weapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
	{
		weapon->GetComponent<CWeaponComponent>()->StartAltFire();
	}

	RemoteShootParams params;

	SRmi<RMI_WRAP(&CPlayerComponent::RemoteStartShoot2)>::InvokeOnServer(this, std::move(params));
}

void CPlayerComponent::StopShoot2()
{
	if (IEntity* weapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
	{
		weapon->GetComponent<CWeaponComponent>()->StopAltFire();
	}

	RemoteShootParams params;

	SRmi<RMI_WRAP(&CPlayerComponent::RemoteStopShoot2)>::InvokeOnServer(this, std::move(params));
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

bool CPlayerComponent::IsRagdoll()
{
	if (IPhysicalEntity* pPhys = m_pEntity->GetPhysicalEntity())
	{
		//CryLogAlways("%i", pPhys->GetType() == PE_ARTICULATED);

		return pPhys->GetType() == PE_ARTICULATED;
	}

	return false;
}

Schematyc::ExplicitEntityId CPlayerComponent::GetActiveWeapon()
{
	return Schematyc::ExplicitEntityId(m_pActiveWeapon);
}

void CPlayerComponent::SetSubTag(Schematyc::CSharedString tag, bool set)
{
	const std::string tagStr = tag.c_str();

	auto it = std::find(m_pSubTags.begin(), m_pSubTags.end(), tagStr);

	if (set)
	{
		// Add only if it doesn't already exist
		if (it == m_pSubTags.end())
		{
			m_pSubTags.push_back(tagStr);
		}
	}
	else
	{
		// Remove only if it exists
		if (it != m_pSubTags.end())
		{
			m_pSubTags.erase(it);
		}
	}
}

void CPlayerComponent::SetFOV(CryTransform::CAngle angle)
{
	m_pCameraComponent->SetFieldOfView(angle);
}

void CPlayerComponent::QueueFragmentOnScope(Schematyc::CSharedString fragment, const EPlayerScopes& scope, bool trumpPreviousFragment)
{
	// Select the action related to the scope
	IActionPtr& actionRef = [&]() -> IActionPtr&
	{
		switch (scope)
		{
		case EPlayerScopes::Scope_1:
			return m_pFullBody1PAction;

		case EPlayerScopes::Scope_2:
			return m_pTorso1PAction;

		case EPlayerScopes::Scope_3:
			return m_pMotion1PAction;

		case EPlayerScopes::Scope_6:
			return m_pFullBody3PAction;

		case EPlayerScopes::Scope_7:
			return m_pAimPoseAction;

		case EPlayerScopes::Scope_8:
			return m_pTorso3PAction;

		default:
			return m_pFullBody1PAction; // fallback
		}
	}();

	// Select the priority related to the scope
	int& priority = [&]() -> int&
	{
		switch (scope)
		{
		case EPlayerScopes::Scope_1:
			return m_pFullBody1PPriority;

		case EPlayerScopes::Scope_2:
			return m_pTorso1PPriority;

		case EPlayerScopes::Scope_3:
			return m_pMotion1PPriority;

		case EPlayerScopes::Scope_6:
			return m_pFullBody3PPriority;

		case EPlayerScopes::Scope_7:
			return m_pAimPosePriority;

		case EPlayerScopes::Scope_8:
			return m_pTorso3PPriority;

		default:
			return m_pFullBody1PPriority; // fallback
		}
	}();

	if (trumpPreviousFragment)
	{
		priority++;
	}

	Cry::DefaultComponents::CAdvancedAnimationComponent* myComponent;

	// Use 1P character if we're using 1P scopes, or else use the 3P model
	if (scope == EPlayerScopes::Scope_1 || scope == EPlayerScopes::Scope_2 || scope == EPlayerScopes::Scope_3)
	{	
		myComponent = m_pAnimationComponent1P;
	}
	else
	{
		myComponent = m_pAnimationComponent3P;
	}

	if (actionRef)
	{
		actionRef->Stop();
		//actionRef = nullptr;
	}

	TagState fragTags;
	/*if (const CTagDefinition* pFragTagDef = myComponent->GetActionController()->GetTagDefinition(myComponent->GetFragmentId(fragment.c_str())))
	{
		pFragTagDef->Set(fragTags, pFragTagDef->Find("first"), true);
	}*/

	if (const CTagDefinition* pFragTagDef = myComponent->GetActionController()->GetTagDefinition(myComponent->GetFragmentId(fragment.c_str())))
	{
		for (const std::string& subTag : m_pSubTags)
		{
			TagID tagId = pFragTagDef->Find(subTag.c_str());

			if (tagId != TAG_ID_INVALID)
			{
				pFragTagDef->Set(fragTags, tagId, true);
			}
		}
	}

	actionRef = new TAction<SAnimationContext>(priority, myComponent->GetFragmentId(fragment.c_str()), fragTags, 0U, scope, 0U);

	myComponent->QueueCustomFragment(*actionRef);
}

void CPlayerComponent::SetDesiredFragmentOnScope(Schematyc::CSharedString fragment, const EPlayerScopes& scope, bool trumpPreviousFragment)
{
	std::string& activeFragment = [&]() -> std::string&
	{
		switch (scope)
		{
		case EPlayerScopes::Scope_1:
			return m_pActiveFragmentFullBody1P;

		case EPlayerScopes::Scope_2:
			return m_pActiveFragmentTorso1P;

		case EPlayerScopes::Scope_3:
			return m_pActiveFragmentMotion1P;

		case EPlayerScopes::Scope_6:
			return m_pActiveFragmentFullBody3P;

		case EPlayerScopes::Scope_7:
			return m_pActiveFragmentAimPose;

		case EPlayerScopes::Scope_8:
			return m_pActiveFragmentTorso3P;

		default:
			return m_pActiveFragmentFullBody1P; // fallback
		}
	}();

	if (activeFragment != fragment.c_str())
	{
		QueueFragmentOnScope(fragment.c_str(), scope, trumpPreviousFragment);

		activeFragment = fragment.c_str();
	}
}

void CPlayerComponent::RefreshFragmentsOnScopes(bool trumpPreviousFragment, bool Scope1, bool Scope2, bool Scope3, bool Scope4, bool Scope5, bool Scope6, bool Scope7, bool Scope8, bool Scope9, bool Scope10)
{
	if (Scope1) { QueueFragmentOnScope(m_pActiveFragmentFullBody1P.c_str(), EPlayerScopes::Scope_1, trumpPreviousFragment); }
	if (Scope2) { QueueFragmentOnScope(m_pActiveFragmentTorso1P.c_str(), EPlayerScopes::Scope_2, trumpPreviousFragment); }
	if (Scope3) { QueueFragmentOnScope(m_pActiveFragmentMotion1P.c_str(), EPlayerScopes::Scope_3, trumpPreviousFragment); }
	//if (Scope4) { QueueFragmentOnScope(activeFragmentSway1P.c_str(), EPlayerScopes::Scope_4, trumpPreviousFragment); }

	if (Scope6) { QueueFragmentOnScope(m_pActiveFragmentFullBody3P.c_str(), EPlayerScopes::Scope_6, trumpPreviousFragment); }
	if (Scope7) { QueueFragmentOnScope(m_pActiveFragmentAimPose.c_str(), EPlayerScopes::Scope_7, trumpPreviousFragment); }
	if (Scope8) { QueueFragmentOnScope(m_pActiveFragmentTorso3P.c_str(), EPlayerScopes::Scope_8, trumpPreviousFragment); }
}

void CPlayerComponent::Ragdollize()
{
	if (IsRagdoll())
		return;

	if (IsLocalClient())
	{
		if (!m_bIsThirdPersonCamera)
		{
			SetCharacterThirdPerson(true);

			if (IEntity* pWeapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
			{
				if (auto* pWeaponComp = pWeapon->GetComponent<CWeaponComponent>())
				{
					pWeaponComp->SetShadowsOnly(false);
				}
			}

			if (ICharacterInstance* pCharInstance = m_pAnimationComponent3P->GetCharacter())
			{
				if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
				{
					pAttachmentMgr->GetInterfaceByName("head")->HideAttachment(1);
					pAttachmentMgr->GetInterfaceByName("head")->HideInShadow(0);
				}
			}
		}
	}

	Vec3 linearVelocity;
	Vec3 angularVelocity;

	// Copy velocity values from player
	if (IPhysicalEntity* pPhys = m_pEntity->GetPhysicalEntity())
	{
		pe_status_dynamics dynStatus;
		if (pPhys->GetStatus(&dynStatus))
		{
			linearVelocity = dynStatus.v;
			angularVelocity = dynStatus.w;
		}
	}

	SEntityPhysicalizeParams physParams;
	physParams.type = PE_ARTICULATED;
	physParams.nSlot = m_pEntity->GetComponent<Cry::DefaultComponents::CAdvancedAnimationComponent>()->GetEntitySlotId();
	physParams.mass = 80.0f;
	physParams.bCopyJointVelocities = true;
	physParams.fStiffnessScale = 0.5f;

	// Have to run this twice for some reason or else it won't work
	m_pEntity->Physicalize(physParams);
	m_pEntity->Physicalize(physParams);

	m_pEntity->UpdateComponentEventMask(this);

	pe_params_buoyancy buoyancyParams;
	buoyancyParams.waterDensity = 40.0f;
	buoyancyParams.waterResistance = 10.0f;
	buoyancyParams.waterDamping = 0.0f;

	m_pEntity->GetPhysicalEntity()->SetParams(&buoyancyParams);

	// Set velocity values on ragdoll
	if (IPhysicalEntity* pPhys = m_pEntity->GetPhysicalEntity())
	{
		pe_action_set_velocity setVel;
		setVel.v = linearVelocity;
		setVel.w = angularVelocity;

		pPhys->Action(&setVel);
	}
}

void CPlayerComponent::SetAttachmentOpacity(ICharacterInstance* character, Schematyc::CSharedString attachmentName, int materialIndex, float opacity)
{
	IMaterial* currentMaterial;
	IMaterial* newMaterial;

	// Try to get replacement material first (defined in cdf), if it doesn't exist then get the model's one
	if (IMaterial* tempMaterial = character->GetIAttachmentManager()->GetInterfaceByName(attachmentName.c_str())->GetIAttachmentObject()->GetReplacementMaterial())
		newMaterial = tempMaterial;
	else if (IMaterial* tempMaterial = character->GetIAttachmentManager()->GetInterfaceByName(attachmentName.c_str())->GetIAttachmentSkin()->GetISkin()->GetIMaterial(0))
		newMaterial = tempMaterial;

	//CryLogAlways("Material is %s", newMaterial->GetName());

	currentMaterial = gEnv->p3DEngine->GetMaterialManager()->CloneMaterial(newMaterial); // One way of doing it

	gEnv->p3DEngine->GetMaterialManager()->CopyMaterial(newMaterial, currentMaterial, EMaterialCopyFlags::MTL_COPY_DEFAULT); // We can also copy the material and store it, newMaterial is material we want to copy, and currentMaterial is now the copy of it

	float newAlpha = opacity;

	// apply changes
	currentMaterial->GetSubMtl(materialIndex)->SetGetMaterialParamFloat("opacity", newAlpha, false);

	character->GetIAttachmentManager()->GetInterfaceByName(attachmentName.c_str())->GetIAttachmentObject()->SetReplacementMaterial(currentMaterial);
}

void CPlayerComponent::SetCharacterThirdPerson(bool thirdperson)
{
	if (!thirdperson)
	{
		if (ICharacterInstance* pCharInstance = m_pAnimationComponent3P->GetCharacter())
		{
			if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
			{
				pAttachmentMgr->GetInterfaceByName("head")->HideAttachment(1);
				pAttachmentMgr->GetInterfaceByName("head")->HideInShadow(0);
				pAttachmentMgr->GetInterfaceByName("jacket")->HideAttachment(1);
				pAttachmentMgr->GetInterfaceByName("jacket")->HideInShadow(0);
				pAttachmentMgr->GetInterfaceByName("upperbody")->HideAttachment(1);
				pAttachmentMgr->GetInterfaceByName("upperbody")->HideInShadow(0);
				pAttachmentMgr->GetInterfaceByName("weapon")->HideAttachment(1);
				pAttachmentMgr->GetInterfaceByName("weapon")->HideInShadow(0);
			}
		}

		m_pAnimationComponent1P->SetType(Cry::DefaultComponents::EMeshType::Render);

		/*SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 0, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 1, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 2, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 3, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 4, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 5, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 6, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 7, 0.0f);

		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "jacket", 0, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "jacket", 1, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "jacket", 2, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "jacket", 3, 0.0f);

		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "upperbody", 0, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "upperbody", 1, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "upperbody", 2, 0.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "upperbody", 3, 0.0f);*/
	}
	else
	{
		if (ICharacterInstance* pCharInstance = m_pAnimationComponent3P->GetCharacter())
		{
			if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
			{
				pAttachmentMgr->GetInterfaceByName("head")->HideAttachment(0);
				pAttachmentMgr->GetInterfaceByName("jacket")->HideAttachment(0);
				pAttachmentMgr->GetInterfaceByName("upperbody")->HideAttachment(0);
				pAttachmentMgr->GetInterfaceByName("weapon")->HideAttachment(0);
			}
		}

		m_pAnimationComponent1P->SetType(Cry::DefaultComponents::EMeshType::None);

		/*SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 0, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 1, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 2, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 3, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 4, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 5, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 6, 0.99f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "head", 7, 0.99f);

		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "jacket", 0, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "jacket", 1, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "jacket", 2, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "jacket", 3, 1.0f);

		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "upperbody", 0, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "upperbody", 1, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "upperbody", 2, 1.0f);
		SetAttachmentOpacity(m_pAnimationComponent3P->GetCharacter(), "upperbody", 3, 1.0f);*/
	}
}

void CPlayerComponent::SpawnDefaultWeapon()
{
	IEntityClass* pClass = gEnv->pEntitySystem->GetClassRegistry()->FindClass(m_defaultWeapon.value);

	// Don't try to spawn the weapon if we can't find the class
	if (!pClass)
		return;

	SEntitySpawnParams spawnParams;
	spawnParams.pClass = pClass;
	spawnParams.sName = m_defaultWeapon.value;
	spawnParams.vPosition = GetWorldTransformMatrix().GetTranslation();

	// Spawn the weapon on the server
	if (IEntity* pEntity = gEnv->pEntitySystem->SpawnEntity(spawnParams))
	{
		m_pInventoryComponent->AddItem(Schematyc::ExplicitEntityId(pEntity->GetId()));

		// Tell other clients to add the item to inventory
		if (auto* pWeaponComponent = pEntity->GetComponent<CWeaponComponent>())
		{
			pWeaponComponent->NetMarkAspectsDirty(CItemComponent::ItemAspect);
		}

		m_pActiveWeapon = pEntity->GetId();

		CryLogAlways("MY ENTITY SPAWNED ID %u", pEntity->GetId());

		// Equip the player's weapon on the server, NetSerialize will handle it for clients
		if (IEntity* pWeaponEntity = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
		{
			pWeaponEntity->GetComponent<CWeaponComponent>()->Equip();
		}
	}

	IEntityClass* pClass2 = gEnv->pEntitySystem->GetClassRegistry()->FindClass(m_defaultWeapon2.value);

	if (!pClass2)
		return;

	SEntitySpawnParams spawnParams2;
	spawnParams2.pClass = pClass2;
	spawnParams2.sName = m_defaultWeapon2.value;
	spawnParams2.vPosition = GetWorldTransformMatrix().GetTranslation();

	// Spawn the weapon on the server
	if (IEntity* pEntity = gEnv->pEntitySystem->SpawnEntity(spawnParams2))
	{
		m_pInventoryComponent->AddItem(Schematyc::ExplicitEntityId(pEntity->GetId()));

		CryLogAlways("MY SECOND ENTITY SPAWNED ID %u", pEntity->GetId());
	}
}

void CPlayerComponent::OnReadyForGameplayOnServer(bool firstSpawn)
{
	CRY_ASSERT(gEnv->bServer, "This function should only be called on the server!");

	const Matrix34 newTransform = CSpawnPointComponent::GetFirstSpawnPointTransform();
	
	Revive(newTransform);
	
	// Invoke the RemoteReviveOnClient function on all remote clients, to ensure that Revive is called across the network
	SRmi<RMI_WRAP(&CPlayerComponent::RemoteReviveOnClient)>::InvokeOnOtherClients(this, RemoteReviveParams{ newTransform.GetTranslation(), Quat(newTransform) });

	if (firstSpawn)
	{
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

	if (gEnv->IsEditor())
	{
		if (gEnv->IsEditorGameMode())
		{
			// Have to use delay or else animations won't play properly
			SetTimer(1, 50);
		}
	}
	else
	{
		// Have to use delay or else animations won't play properly
		SetTimer(1, 50);
	}
}

bool CPlayerComponent::RemoteDieOnServer(RemoteBlankParams&& params, INetChannel* pNetChannel)
{
	if (IEntity* pWeaponEntity = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
	{
		if (ICharacterInstance* pCharInstance = m_pAnimationComponent1P->GetCharacter())
		{
			if (IAttachmentManager* pAttachmentMgr = pCharInstance->GetIAttachmentManager())
			{
				pAttachmentMgr->GetInterfaceByName("weapon")->ClearBinding();
			}
		}
	}

	for (EntityId id : m_pInventoryComponent->m_pItems)
	{
		if (gEnv->pEntitySystem->GetEntity(id))
		{
			gEnv->pEntitySystem->RemoveEntity(id);

			CryLogAlways("REMOVED ALL WEAPONS");
		}
	}

	m_pInventoryComponent->m_pItems.clear();

	SRmi<RMI_WRAP(&CPlayerComponent::RemoteDieOnClients)>::InvokeOnAllClients(this, std::move(params));

	return true;
}
bool CPlayerComponent::RemoteDieOnClients(RemoteBlankParams&& params, INetChannel* pNetChannel)
{
	if (!IsRagdoll())
	{
		Ragdollize();

		m_pInventoryComponent->m_pItems.clear();
	}

	return true;
}

bool CPlayerComponent::RemoteStartShoot(RemoteShootParams&& params, INetChannel* pNetChannel)
{
	if (!IsLocalClient())
	{
		if (IEntity* weapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
		{
			weapon->GetComponent<CWeaponComponent>()->StartFire();
		}
	}

	if (gEnv->bServer)
	{
		SRmi<RMI_WRAP(&CPlayerComponent::RemoteStartShoot)>::InvokeOnRemoteClients(this, std::move(params), GetEntityId());
	}

	return true;
}
bool CPlayerComponent::RemoteStopShoot(RemoteShootParams&& params, INetChannel* pNetChannel)
{
	if (!IsLocalClient())
	{
		if (IEntity* weapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
		{
			weapon->GetComponent<CWeaponComponent>()->StopFire();
		}
	}

	if (gEnv->bServer)
	{
		SRmi<RMI_WRAP(&CPlayerComponent::RemoteStopShoot)>::InvokeOnRemoteClients(this, std::move(params), GetEntityId());
	}

	return true;
}

bool CPlayerComponent::RemoteStartShoot2(RemoteShootParams&& params, INetChannel* pNetChannel)
{
	if (!IsLocalClient())
	{
		if (IEntity* weapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
		{
			weapon->GetComponent<CWeaponComponent>()->StartAltFire();
		}
	}

	if (gEnv->bServer)
	{
		SRmi<RMI_WRAP(&CPlayerComponent::RemoteStartShoot2)>::InvokeOnRemoteClients(this, std::move(params), GetEntityId());
	}

	return true;
}
bool CPlayerComponent::RemoteStopShoot2(RemoteShootParams&& params, INetChannel* pNetChannel)
{
	if (!IsLocalClient())
	{
		if (IEntity* weapon = gEnv->pEntitySystem->GetEntity(m_pActiveWeapon))
		{
			weapon->GetComponent<CWeaponComponent>()->StopAltFire();
		}
	}

	if (gEnv->bServer)
	{
		SRmi<RMI_WRAP(&CPlayerComponent::RemoteStopShoot2)>::InvokeOnRemoteClients(this, std::move(params), GetEntityId());
	}

	return true;
}

bool CPlayerComponent::RemoteReviveOnServer(RemoteBlankParams && params, INetChannel * pNetChannel)
{
	if (IsRagdoll())
		OnReadyForGameplayOnServer(false);

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
	m_pAnimationComponent1P->ResetCharacter();
	m_pAnimationComponent3P->ResetCharacter();
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
	
	m_movementDelta = ZERO;

	m_mouseDeltaRotation = ZERO;
	m_lookOrientation = m_pEntity->GetRotation();

	m_mouseDeltaSmoothingFilter.Reset();

	/*m_pFullBody1PAction = nullptr;
	m_pTorso1PAction = nullptr;
	m_pFullBody3PAction = nullptr;*/

	m_pActiveFragmentFullBody1P.clear();
	m_pActiveFragmentTorso1P.clear();
	m_pActiveFragmentMotion1P.clear();
	m_pActiveFragmentFullBody3P.clear();
	m_pActiveFragmentAimPose.clear();
	m_pActiveFragmentTorso3P.clear();

	m_horizontalAngularVelocity = 0.0f;
	m_averagedHorizontalAngularVelocity.Reset();

	m_bIsThirdPersonCamera = false;
	m_currentMoveSpeed = m_moveSpeedWalking;
	m_currentBaseHeight = m_baseHeight;

	if (IsLocalClient())
	{
		SetCharacterThirdPerson(m_bIsThirdPersonCamera);
	}

	if (ICharacterInstance *pCharacter = m_pAnimationComponent1P->GetCharacter())
	{
		// Cache the camera joint id so that we don't need to look it up every frame in UpdateView
		m_cameraJointId1P = pCharacter->GetIDefaultSkeleton().GetJointIDByName("Bip01 Camera");
	}
	if (ICharacterInstance *pCharacter = m_pAnimationComponent3P->GetCharacter())
	{
		// Cache the camera joint id so that we don't need to look it up every frame in UpdateView
		m_cameraJointId3P = pCharacter->GetIDefaultSkeleton().GetJointIDByName("Bip01 Camera");
	}

	if (IsLocalClient())
	{
		// Create the view proxy entity
		if (!gEnv->pEntitySystem->GetEntity(m_pViewProxy))
		{
			SEntitySpawnParams spawnParams;
			spawnParams.pClass = gEnv->pEntitySystem->GetClassRegistry()->GetDefaultClass();
			spawnParams.sName = "ViewProxy";
			spawnParams.vPosition = m_pCameraComponent->GetWorldTransformMatrix().GetTranslation();
			spawnParams.qRotation = (Quat)m_pCameraComponent->GetWorldTransformMatrix();

			// Spawn the weapon on the server
			if (IEntity* pEntity = gEnv->pEntitySystem->SpawnEntity(spawnParams))
			{
				m_pViewProxy = pEntity->GetId();
			}
		}

		// Use a material effect FlowGraph to set view to the proxy entity
		TMFXEffectId fx = gEnv->pMaterialEffects->GetEffectIdByName("cameraproxy", "setviewproxy");

		SMFXRunTimeEffectParams fxParams;
		fxParams.playflags |= eMFXPF_Disable_Delay;
		fxParams.pos = m_pCameraComponent->GetWorldTransformMatrix().GetTranslation();

		gEnv->pMaterialEffects->ExecuteEffect(fx, fxParams);

		SMFXCustomParamValue fov;
		fov.fValue = m_pCameraComponent->GetFieldOfView().ToDegrees();

		// Use Intensity parameter to pass fov value
		gEnv->pMaterialEffects->SetCustomParameter(fx, "Intensity", fov);
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