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
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::GetTransform, "{7F1171B3-5ABB-46E3-91D0-01F033A85977}"_cry_guid, "GetControllerTransform");
					pFunction->BindOutput(0, 'tsfm', "Transform", "Transform");
					componentScope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCharacterControllerHelperComponent::SetTransform, "{1A406F28-447B-436D-8688-A9D2B17581FC}"_cry_guid, "SetControllerTransform");
					pFunction->BindInput(1, 'tsfm', "Transform", "Transform");
					componentScope.Register(pFunction);
				}*/
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
		IPhysicalEntity* pPhysEnt = pCharacterController->GetEntity()->GetPhysicalEntity();

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

void CCharacterControllerHelperComponent::SetDimensions(/*float mass, */float radius, float height, float zOffset, bool bCapsule, float groundContactEps)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		// Create a new SPhysics struct and get it's values from the Character Controller
		Cry::DefaultComponents::CCharacterControllerComponent::SPhysics pPhysics = pCharacterController->GetPhysicsParameters();

		// Set the values to our new ones
		//pPhysics.m_mass = mass;
		pPhysics.m_radius = radius;
		pPhysics.m_height = height;
		pPhysics.m_bCapsule = bCapsule;
		pPhysics.m_groundContactEps = groundContactEps;

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
			playerDimensions.bUseCapsule = pPhysics.m_bCapsule ? 1 : 0;

			// Specify the size of our capsule, physics treats the input as the half-size, so we multiply our value by 0.5.
			// This ensures that 1 unit = 1m for designers.
			playerDimensions.sizeCollider = Vec3(pPhysics.m_radius * 0.5f, 1.f, pPhysics.m_height * 0.5f);
			// Capsule height needs to be adjusted to match 1 unit ~= 1m.
			if (playerDimensions.bUseCapsule)
			{
				playerDimensions.sizeCollider.z *= 0.5f;
			}
			playerDimensions.groundContactEps = pPhysics.m_groundContactEps;

			// Set the collider offset to the controller component's z offset 
			playerDimensions.heightCollider = pCharacterController->GetTransformMatrix().GetTranslation().z;

			// Update the physical entity params to use our new dimensions
			pPhysEnt->SetParams(&playerDimensions);
		}
	}
}

/*CryTransform::CTransform CCharacterControllerHelperComponent::GetTransform()
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		return CryTransform::CTransform(pCharacterController->GetTransformMatrix());
	}

	return CryTransform::CTransform();
}

void CCharacterControllerHelperComponent::SetTransform(CryTransform::CTransform transform)
{
	if (auto* pCharacterController = m_pEntity->GetComponent<Cry::DefaultComponents::CCharacterControllerComponent>())
	{
		pCharacterController->SetTransformMatrix(transform.ToMatrix34());

		if (IPhysicalEntity* pPhysEnt = GetEntity()->GetPhysicalEntity())
		{
			pe_player_dimensions playerDimensions;
			pPhysEnt->GetParams(&playerDimensions);
			playerDimensions.heightCollider = pCharacterController->GetTransformMatrix().GetTranslation().z;
			pPhysEnt->SetParams(&playerDimensions);
		}
	}
}*/
