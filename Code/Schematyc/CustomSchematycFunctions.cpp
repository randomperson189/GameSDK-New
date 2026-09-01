#include "StdAfx.h"

#include <CrySerialization/Forward.h>
#include <CrySerialization/Math.h>
#include <CryMath/Cry_Math.h>
#include <CryMath/Random.h>
#include <CryMath/Angle.h>
#include <CryMath/Rotation.h>

#include <CrySchematyc/CoreAPI.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CrySchematyc/Utils/Transform.h>
#include <CrySchematyc/Utils/AnyArray.h>
#include <CryPhysics/physinterface.h>
#include <CryCore/StaticInstanceList.h>
#include <CryAction/IMaterialEffects.h>

void ReflectType(Schematyc::CTypeDesc<ray_hit>& desc)
{
	desc.SetGUID("{6691FDBE-13A2-46D9-8601-103C85CC1DEE}"_cry_guid);
	desc.SetLabel("Raycast");
}

namespace Schematyc
{
	namespace Int32
	{
		Schematyc::ExplicitEntityId ToEntity(int integer)
		{
			return (Schematyc::ExplicitEntityId(integer));
		}

		static void RegisterFunctions(IEnvRegistrar& registrar)
		{
			CEnvRegistrationScope scope = registrar.Scope(GetTypeDesc<int32>().GetGUID());
			{
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&ToEntity, "{4E0E90B2-C3B9-439C-8CA7-9414CA223859}"_cry_guid, "ToEntity");
					pFunction->SetDescription("Converts an integer to an entity id");
					pFunction->BindOutput(0, 'ent', "Entity");
					pFunction->BindInput(1, 'int', "Value");
					scope.Register(pFunction);
				}
			}
		}
	}

	namespace Raycast
	{
		bool RayCastAdvanced(const Vec3& origin, const Vec3& direction, Vec3& hitPt, Vec3& hitNormal, const ExplicitEntityId& ignoredEntity, ExplicitEntityId& hitEntityId)
		{
			IPhysicalEntity* pPhysEnt = nullptr;

			if (IEntity* pIgnoredEntity = gEnv->pEntitySystem->GetEntity((EntityId)ignoredEntity))
			{
				pPhysEnt = pIgnoredEntity->GetPhysics();
			}

			ray_hit hit;
			if (gEnv->pPhysicalWorld->RayWorldIntersection(origin, direction, ent_all, rwi_stop_at_pierceable | rwi_colltype_any, &hit, 1, pPhysEnt, 0))
			{
				hitPt = hit.pt;
				hitNormal = hit.n;

				if (IEntity* pEntity = gEnv->pEntitySystem->GetEntityFromPhysics(hit.pCollider))
				{
					hitEntityId = ExplicitEntityId(pEntity->GetId());
				}
				else
				{
					hitEntityId = ExplicitEntityId(INVALID_ENTITYID);
				}

				return true;
			}

			return false;
		}

		bool CylinderCast(const Vec3& origin, const Vec3& direction, const float& radius, const float& height, Vec3& hitPt, Vec3& hitNormal, const ExplicitEntityId& ignoredEntity, ExplicitEntityId& hitEntityId)
		{
			IPhysicalEntity* pPhysEnt = nullptr;

			if (IEntity* pIgnoredEntity = gEnv->pEntitySystem->GetEntity((EntityId)ignoredEntity))
			{
				pPhysEnt = pIgnoredEntity->GetPhysics();
			}

			// Create the cylinder
			primitives::cylinder cylinder;
			cylinder.center = origin;
			cylinder.axis = Vec3(0, 0, 1);
			cylinder.r = radius;
			cylinder.hh = height / 2;

			IPhysicalWorld::SPWIParams pwiparams;

			geom_contact* pContacts = nullptr;

			intersection_params intersectionParams;
			intersectionParams.bSweepTest = false;

			pwiparams.pprim = &cylinder;
			pwiparams.itype = cylinder.type;
			pwiparams.sweepDir = direction;
			pwiparams.entTypes = ent_all;

			pwiparams.pSkipEnts = &pPhysEnt;
			pwiparams.nSkipEnts = 1;

			pwiparams.ppcontact = &pContacts;
			pwiparams.pip = &intersectionParams;

			if (gEnv->pPhysicalWorld->PrimitiveWorldIntersection(pwiparams))
			{
				// First contact
				hitPt = pContacts[0].pt;
				hitNormal = pContacts[0].n;

				const int physicsEntityId = pContacts[0].iPrim[0];

				if (IPhysicalEntity* pHitPhysEnt = gEnv->pPhysicalWorld->GetPhysicalEntityById(physicsEntityId))
				{
					if (IEntity* pEntity = gEnv->pEntitySystem->GetEntityFromPhysics(pHitPhysEnt))
					{
						hitEntityId = ExplicitEntityId(pEntity->GetId());
					}
				}

				return true;
			}

			return false;
		}

		static void RegisterFunctions(IEnvRegistrar& registrar)
		{
			CEnvRegistrationScope scope = registrar.Scope(GetTypeDesc<ray_hit>().GetGUID());
			{
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&RayCastAdvanced, "{11C536CD-C889-43CB-BC26-47CA5D41809D}"_cry_guid, "RayCastAdvanced");
					pFunction->BindInput(1, 'orig', "Origin", "The source position to cast from");
					pFunction->BindInput(2, 'dir', "Direction", "The direction and magnitude to cast to");
					pFunction->BindInput(5, 'iid', "Ignored Entity Id", "The id of the entity that we ignore");
					pFunction->BindOutput(0, 'hit', "Hit", "Whether or not the ray hit");
					pFunction->BindOutput(3, 'pt', "Position", "The position that we hit");
					pFunction->BindOutput(4, 'norm', "Normal", "The normal of the object that we hit");
					pFunction->BindOutput(6, 'eid', "Entity Id", "The id of the entity that we hit");
					pFunction->SetDescription("Casts a ray through the world's physical grid");
					scope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CylinderCast, "{D79DD7AA-56C5-4BD7-9854-21E4D5E2F230}"_cry_guid, "CylinderCast");
					pFunction->BindInput(1, 'orig', "Origin", "The source position to cast from");
					pFunction->BindInput(2, 'dir', "Direction", "The direction and magnitude to cast to");
					pFunction->BindInput(3, 'rad', "Radius", "Radius of the cylinder");
					pFunction->BindInput(4, 'hgt', "Height", "Height of the cylinder");
					pFunction->BindInput(7, 'iid', "Ignored Entity Id", "The id of the entity that we ignore");
					pFunction->BindOutput(0, 'hit', "Hit", "Whether or not the ray hit");
					pFunction->BindOutput(5, 'pt', "Position", "The position that we hit");
					pFunction->BindOutput(6, 'norm', "Normal", "The normal of the object that we hit");
					pFunction->BindOutput(8, 'eid', "Entity Id", "The id of the entity that we hit");
					pFunction->SetDescription("Casts a cylinder through the world's physical grid");
					scope.Register(pFunction);
				}
			}
		}
	}

	namespace Log
	{
		void Console(const CSharedString& message)
		{
			CryLogAlways(message.c_str());
		}

		static void RegisterFunctions(IEnvRegistrar& registrar)
		{
			CEnvRegistrationScope scope = registrar.Scope("a2cbae18-2114-4c0f-8fc0-58988affca7e"_cry_guid);
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&Console, "{97751A7E-D2A5-43C4-9E72-1008B1E864C1}"_cry_guid, "Console");
				pFunction->BindInput(1, 'msg', "Message");
				pFunction->SetDescription("Logs a message to the console");
				scope.Register(pFunction);
			}
		}
	}

	namespace Entity
	{
		bool IsValid(ExplicitEntityId entityId)
		{
			return gEnv->pEntitySystem->GetEntity(static_cast<EntityId>(entityId)) != nullptr;
		}

		int ToInt32(Schematyc::ExplicitEntityId entity)
		{
			return ((int)entity);
		}

		void ExecuteMaterialEffectFlowGraph(Schematyc::CSharedString libName, Schematyc::CSharedString effectName, Schematyc::ExplicitEntityId entity, Vec3 position, float intensity, float blendOutTime)
		{
			TMFXEffectId fx = gEnv->pMaterialEffects->GetEffectIdByName(libName.c_str(), effectName.c_str());

			SMFXRunTimeEffectParams fxParams;
			fxParams.trg = (EntityId)entity;
			fxParams.pos = position;

			gEnv->pMaterialEffects->ExecuteEffect(fx, fxParams);

			SMFXCustomParamValue intensityValue;
			intensityValue.fValue = intensity;
			SMFXCustomParamValue blendOutTimeValue;
			blendOutTimeValue.fValue = blendOutTime;

			gEnv->pMaterialEffects->SetCustomParameter(fx, "Intensity", intensityValue);
			gEnv->pMaterialEffects->SetCustomParameter(fx, "BlendOutTime", blendOutTimeValue);
		}

		static void RegisterFunctions(IEnvRegistrar& registrar)
		{
			CEnvRegistrationScope scope = registrar.Scope(GetTypeDesc<ExplicitEntityId>().GetGUID());
			{
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&IsValid, "{04BE5FFF-7268-4226-B2D3-7BEAE042C614}"_cry_guid, "IsValid");
					pFunction->SetDescription("Check if this Entity is valid");
					pFunction->BindOutput(0, 'vald', "IsValid");
					pFunction->BindInput(1, 'ent', "Entity");
					scope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&ToInt32, "{7E07B1E6-E19D-44E2-BDDE-D03396D635C0}"_cry_guid, "ToInt32");
					pFunction->SetDescription("Converts an entity id to an integer");
					pFunction->BindOutput(0, 'int', "Int32");
					pFunction->BindInput(1, 'ent', "Value");
					scope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&ExecuteMaterialEffectFlowGraph, "{F8839B1F-1980-4C84-A26E-3A175AE99657}"_cry_guid, "ExecuteMaterialEffectFlowGraph");
					pFunction->SetDescription("Executes a material effect");
					pFunction->BindInput(1, 'lib', "Lib Name");
					pFunction->BindInput(2, 'fx', "Effect Name");
					pFunction->BindInput(3, 'ent', "Entity");
					pFunction->BindInput(4, 'pos', "Position");
					pFunction->BindInput(5, 'int', "Intensity");
					pFunction->BindInput(6, 'bot', "Blend Out Time");
					scope.Register(pFunction);
				}
			}
		}
	}

	namespace Rotation
	{
		CRotation CreateFromVector(Vec3 vector)
		{
			return CRotation(Quat::CreateRotationVDir(vector));
		}

		static void RegisterFunctions(Schematyc::IEnvRegistrar& registrar)
		{
			Schematyc::CEnvRegistrationScope scope = registrar.Scope(GetTypeDesc<CRotation>().GetGUID());
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CreateFromVector, "{56797261-F891-449D-A21A-90E5091AB5A0}"_cry_guid, "CreateFromVector");
				pFunction->SetDescription("Create rotation");
				pFunction->BindInput(1, 'vec', "Vector", nullptr, Vec3(ZERO));
				pFunction->BindOutput(0, 'res', "Result");
				scope.Register(pFunction);
			}
		}
	}

	void RegisterCustomFunctions(IEnvRegistrar& registrar)
	{
		Int32::RegisterFunctions(registrar);
		Raycast::RegisterFunctions(registrar);
		Log::RegisterFunctions(registrar);
		Entity::RegisterFunctions(registrar);
		Rotation::RegisterFunctions(registrar);
	}
}

CRY_STATIC_AUTO_REGISTER_FUNCTION(&Schematyc::RegisterCustomFunctions)