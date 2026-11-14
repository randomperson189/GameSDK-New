#include "StdAfx.h"
#include "CharacterControllerHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>

#include <DefaultComponents/Physics/CharacterControllerComponent.h>

namespace
{
	static void RegisterCharacterControllerHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CCharacterControllerHelperComponent));

			{
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::GetDimensions, "{7A4F08BD-466A-438A-987B-FAF2E1347ACC}"_cry_guid, "GetDimensions");
					pFunction->BindOutput(1, 'radi', "Collider Radius", "Radius of the capsule or cylinder");
					pFunction->BindOutput(2, 'heig', "Collider Height", "Height of the capsule or cylinder");
					pFunction->BindOutput(3, 'zoff', "Z Offset", "Offset of the capsule or cylinder on the Z axis");
					pFunction->BindOutput(4, 'caps', "Use Capsule", "Whether or not to use a capsule as the main collider, otherwise cylinder");
					pFunction->BindOutput(5, 'gce', "Ground Contact Epsilon", "The amount that the player needs to move upwards before ground contact is lost");
					componentScope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::SetDimensions, "{5E934515-4256-4431-9853-39E9001CA398}"_cry_guid, "SetDimensions");
					pFunction->BindInput(1, 'radi', "Collider Radius", "Radius of the capsule or cylinder", 0.45f);
					pFunction->BindInput(2, 'heig', "Collider Height", "Height of the capsule or cylinder", 0.935f);
					pFunction->BindInput(3, 'zoff', "Z Offset", "Offset of the capsule or cylinder on the Z axis", 1.0f);
					pFunction->BindInput(4, 'caps', "Use Capsule", "Whether or not to use a capsule as the main collider, otherwise cylinder", true);
					pFunction->BindInput(5, 'gce', "Ground Contact Epsilon", "The amount that the player needs to move upwards before ground contact is lost", 0.004f);
					componentScope.Register(pFunction);
				}

				/*{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::GetDynamics, "{344CB835-7070-4DC7-AF1E-6522D9826009}"_cry_guid, "GetDynamics");
					pFunction->BindOutput(1, 'iner', "Inertia Coefficient", "More amount gives less inertia, 0 being none");
					pFunction->BindOutput(2, 'inea', "Inertia Acceleration Coefficient", "More amount gives less inertia on acceleration, 0 being none");
					pFunction->BindOutput(3, 'airc', "Air Control Ratio", "Indicates how much the character can move in the air, 0 means no movement while 1 means full control");
					pFunction->BindOutput(4, 'airr', "Air Resistance", nullptr);
					pFunction->BindOutput(6, 'nods', "Nod Speed", "Vertical camera shake speed after landings");
					pFunction->BindOutput(8, 'mass', "Mass", "Character mass in kilograms");
					pFunction->BindOutput(9, 'mins', "Minimum Angle For Slide", "Minimum angle before the player starts sliding");
					pFunction->BindOutput(10, 'maxc', "Maximum Climb Angle", "Maximum angle the character can climb");
					pFunction->BindOutput(11, 'maxj', "Maximum Jump Angle", "Maximum angle the character can jump at");
					pFunction->BindOutput(12, 'minf', "Minimum Angle For Fall", "Minimum angle before the character starts falling");
					pFunction->BindOutput(13, 'maxg', "Maximum Surface Velocity", "Maximum velocity of the surface the character is on before they are considered airborne and slide off");
					pFunction->BindOutput(14, 'acti', "Active", "Whether the character physics simulation is active");
					componentScope.Register(pFunction);
				}*/

				// <-- setdynamics here!

				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::GetGravity, "{74967D41-AC0B-4052-BBE0-5E6E2139C0B5}"_cry_guid, "GetGravity");
					pFunction->BindOutput(1, 'grav', "Gravity", nullptr);
					componentScope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::SetGravity, "{7623CC20-C351-41AA-AEE4-C1C7970998E9}"_cry_guid, "SetGravity");
					pFunction->BindInput(1, 'grav', "Gravity", nullptr, Vec3(0, 0, -9.81f));
					componentScope.Register(pFunction);
				}

				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::GetNodSpeed, "{2C81DD79-D858-411F-82E4-6F1CE408AD88}"_cry_guid, "GetNodSpeed");
					pFunction->BindOutput(1, 'nods', "Nod Speed", "Vertical camera shake speed after landings");
					componentScope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::SetNodSpeed, "{5CC4D18F-4277-43EB-96C0-FB01D4B6A005}"_cry_guid, "SetNodSpeed");
					pFunction->BindInput(1, 'nods', "Nod Speed", "Vertical camera shake speed after landings", 60.0f);
					componentScope.Register(pFunction);
				}

				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::GetSwimming, "{2FCEFE46-A011-486A-A5D9-35DBD7585236}"_cry_guid, "GetSwimming");
					pFunction->BindOutput(1, 'swim', "Swimming", "Whether the character is swimming");
					componentScope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::SetSwimming, "{59DB1224-FEBC-4809-9217-9D186AF25346}"_cry_guid, "SetSwimming");
					pFunction->BindInput(1, 'swim', "Swimming", "Whether the character is swimming", false);
					componentScope.Register(pFunction);
				}
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterCharacterControllerHelperComponent);
}

CCharacterControllerHelperComponent::CCharacterControllerHelperComponent()
{
}

CCharacterControllerHelperComponent::~CCharacterControllerHelperComponent()
{
}

void CCharacterControllerHelperComponent::GetDimensions(float& radius, float& height, float& zOffset, bool& bCapsule, float& groundContactEps)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		// Get the physical entity
		if (IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity())
		{
			pe_player_dimensions playerDimensions;

			pPhysEnt->GetParams(&playerDimensions);

			bCapsule = playerDimensions.bUseCapsule;
			radius = playerDimensions.sizeCollider.x / 0.5f;
			height = playerDimensions.sizeCollider.z / 0.5f;
			zOffset = pCharacterController->GetTransformMatrix().GetTranslation().z;
			groundContactEps = playerDimensions.groundContactEps;

			if (playerDimensions.bUseCapsule)
			{
				height /= 0.5f;
			}
		}
	}
}

void CCharacterControllerHelperComponent::SetDimensions(float radius, float height, float zOffset, bool bCapsule, float groundContactEps)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		// Set controller component z position to offset
		Matrix34 tm = pCharacterController->GetTransformMatrix();
		Vec3 pos = tm.GetTranslation();
		pos.z = zOffset;
		tm.SetTranslation(pos);
		pCharacterController->SetTransformMatrix(tm);

		// Get the physical entity
		if (IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity())
		{
			pe_player_dimensions playerDimensions;

			pPhysEnt->GetParams(&playerDimensions);

			// Prefer usage of a cylinder
			playerDimensions.bUseCapsule = bCapsule ? 1 : 0;

			// Specify the size of our capsule, physics treats the input as the half-size, so we multiply our value by 0.5.
			// This ensures that 1 unit = 1m for designers.
			playerDimensions.sizeCollider = Vec3(radius * 0.5f, 1.f, height * 0.5f);
			// Capsule height needs to be adjusted to match 1 unit ~= 1m.
			if (playerDimensions.bUseCapsule)
			{
				playerDimensions.sizeCollider.z *= 0.5f;
			}
			playerDimensions.groundContactEps = groundContactEps;

			// Set the collider offset to the controller component's z offset 
			playerDimensions.heightCollider = pCharacterController->GetTransformMatrix().GetTranslation().z;

			// Update the physical entity params to use our new dimensions
			pPhysEnt->SetParams(&playerDimensions);
		}
	}
}

void CCharacterControllerHelperComponent::GetDynamics(float & kInertia, float & kInertiaAccel, float & kAirControl, float & kAirResistance, float & minSlideAngle, float & maxClimbAngle, float & maxJumpAngle, float & minFallAngle, float & maxVelGround)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		if (IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity())
		{
			pe_player_dynamics playerDynamics;

			pPhysEnt->GetParams(&playerDynamics);

			//mass = playerDynamics.mass;
			kAirControl = playerDynamics.kAirControl;
			kAirResistance = playerDynamics.kAirResistance;
			kInertia = playerDynamics.kInertia;
			kInertiaAccel = playerDynamics.kInertiaAccel;

			maxClimbAngle = playerDynamics.maxClimbAngle;
			maxJumpAngle = playerDynamics.maxJumpAngle;
			minFallAngle = playerDynamics.minFallAngle;
			minSlideAngle = playerDynamics.minSlideAngle;

			maxVelGround = playerDynamics.maxVelGround;
		}
	}
}

void CCharacterControllerHelperComponent::SetDynamics(float kInertia, float kInertiaAccel, float kAirControl, float kAirResistance, float minSlideAngle, float maxClimbAngle, float maxJumpAngle, float minFallAngle, float maxVelGround)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		if (IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity())
		{
			pe_player_dynamics playerDynamics;

			pPhysEnt->GetParams(&playerDynamics);

			//playerDynamics.mass = mass;
			playerDynamics.kAirControl = kAirControl;
			playerDynamics.kAirResistance = kAirResistance;
			playerDynamics.kInertia = kInertia;
			playerDynamics.kInertiaAccel = kInertiaAccel;

			playerDynamics.maxClimbAngle = maxClimbAngle;
			playerDynamics.maxJumpAngle = maxJumpAngle;
			playerDynamics.minFallAngle = minFallAngle;
			playerDynamics.minSlideAngle = minSlideAngle;

			playerDynamics.maxVelGround = maxVelGround;

			pPhysEnt->SetParams(&playerDynamics);
		}
	}
}

void CCharacterControllerHelperComponent::GetGravity(Vec3& gravity)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		if (IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity())
		{
			pe_player_dynamics playerDynamics;

			pPhysEnt->GetParams(&playerDynamics);

			gravity = playerDynamics.gravity;
		}
	}
}

void CCharacterControllerHelperComponent::SetGravity(Vec3 gravity)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		if (IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity())
		{
			pe_player_dynamics playerDynamics;

			pPhysEnt->GetParams(&playerDynamics);

			playerDynamics.gravity = gravity;

			pPhysEnt->SetParams(&playerDynamics);
		}
	}
}

void CCharacterControllerHelperComponent::GetNodSpeed(float& nodSpeed)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		if (IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity())
		{
			pe_player_dynamics playerDynamics;

			pPhysEnt->GetParams(&playerDynamics);

			nodSpeed = playerDynamics.nodSpeed;
		}
	}
}

void CCharacterControllerHelperComponent::SetNodSpeed(float nodSpeed)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		if (IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity())
		{
			pe_player_dynamics playerDynamics;

			pPhysEnt->GetParams(&playerDynamics);

			playerDynamics.nodSpeed = nodSpeed;

			pPhysEnt->SetParams(&playerDynamics);
		}
	}
}

void CCharacterControllerHelperComponent::GetSwimming(bool& bSwimming)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		if (IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity())
		{
			pe_player_dynamics playerDynamics;

			pPhysEnt->GetParams(&playerDynamics);

			bSwimming = playerDynamics.bSwimming != 0;
		}
	}
}

void CCharacterControllerHelperComponent::SetSwimming(bool bSwimming)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		if (IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity())
		{
			pe_player_dynamics playerDynamics;

			pPhysEnt->GetParams(&playerDynamics);

			playerDynamics.bSwimming = bSwimming ? 1 : 0;

			pPhysEnt->SetParams(&playerDynamics);
		}
	}
}

