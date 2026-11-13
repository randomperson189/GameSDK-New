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
			if (gEnv->pEntitySystem->GetEntity(static_cast<EntityId>(entityId)))
			{
				return true;
			}

			return false;
		}

		int ToInt32(Schematyc::ExplicitEntityId entity)
		{
			return ((int)entity);
		}

		EntityClassName GetClass(ExplicitEntityId entityId)
		{
			if (IEntity* pEntity = gEnv->pEntitySystem->GetEntity(static_cast<EntityId>(entityId)))
			{
				if (IEntityClass* pClass = pEntity->GetClass())
				{
					return pClass->GetName();
				}
			}

			return {};
		}

		bool ClassEqual(EntityClassName a, EntityClassName b)
		{
			return a == b;
		}

		bool ClassNotEqual(EntityClassName a, EntityClassName b)
		{
			return a != b;
		}

		CSharedString ClassToString(EntityClassName inputClass)
		{
			return inputClass.value;
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
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&GetClass, "{858E9061-1A83-47EF-82B2-9F1217CDB7F1}"_cry_guid, "GetClass");
					pFunction->SetDescription("Get the Entity's Class");
					pFunction->BindOutput(0, 'clas', "Class");
					pFunction->BindInput(1, 'ent', "Entity");
					scope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&ClassEqual, "{0E6651AC-AFDB-4149-93CC-69F1700EA825}"_cry_guid, "ClassEqual");
					pFunction->SetDescription("Class Equal");
					pFunction->BindOutput(0, 'res', "Result");
					pFunction->BindInput(1, 'a', "A");
					pFunction->BindInput(2, 'b', "B");
					scope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&ClassNotEqual, "{3A74AA4C-2FA7-4A51-A981-DC31D19ABBC3}"_cry_guid, "ClassNotEqual");
					pFunction->SetDescription("Class Not Equal");
					pFunction->BindOutput(0, 'res', "Result");
					pFunction->BindInput(1, 'a', "A");
					pFunction->BindInput(2, 'b', "B");
					scope.Register(pFunction);
				}
				{
					auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&ClassToString, "{69D1D03A-1944-4F18-A2A8-B6EC034FF98E}"_cry_guid, "ClassToString");
					pFunction->SetDescription("Class to String");
					pFunction->BindOutput(0, 'strg', "String");
					pFunction->BindInput(1, 'clas', "Class");
					scope.Register(pFunction);
				}
			}
		}
	}

	namespace Vector2
	{
		Vec2 Lerp(Vec2 a, Vec2 b, float t)
		{
			return Vec2::CreateLerp(a, b, t);
		}

		static void RegisterFunctions(Schematyc::IEnvRegistrar& registrar)
		{
			Schematyc::CEnvRegistrationScope scope = registrar.Scope(GetTypeDesc<Vec2>().GetGUID());
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&Lerp, "{F79967B3-9A4E-43C0-A737-259FAC78528F}"_cry_guid, "Lerp");
				pFunction->SetDescription("Lerp a vector3");
				pFunction->BindOutput(0, 'res', "Result");
				pFunction->BindInput(1, 'a', "A");
				pFunction->BindInput(2, 'b', "B");
				pFunction->BindInput(3, 't', "T");
				scope.Register(pFunction);
			}
		}
	}

	namespace Vector3
	{
		Vec3 Lerp(Vec3 a, Vec3 b, float t)
		{
			return Vec3::CreateLerp(a, b, t);
		}

		static void RegisterFunctions(Schematyc::IEnvRegistrar& registrar)
		{
			Schematyc::CEnvRegistrationScope scope = registrar.Scope(GetTypeDesc<Vec3>().GetGUID());
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&Lerp, "{C145B960-A5A3-4B01-BB0A-F6874A7D1917}"_cry_guid, "Lerp");
				pFunction->SetDescription("Lerp a vector3");
				pFunction->BindOutput(0, 'res', "Result");
				pFunction->BindInput(1, 'a', "A");
				pFunction->BindInput(2, 'b', "B");
				pFunction->BindInput(3, 't', "T");
				scope.Register(pFunction);
			}
		}
	}

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

	namespace Float
	{
		float Lerp(float a, float b, float t)
		{
			return a + (b - a) * t;
		}

		static void RegisterFunctions(Schematyc::IEnvRegistrar& registrar)
		{
			Schematyc::CEnvRegistrationScope scope = registrar.Scope(GetTypeDesc<float>().GetGUID());
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&Lerp, "{F63BEE1B-54BA-4F33-9C7D-6102E634780B}"_cry_guid, "Lerp");
				pFunction->SetDescription("Lerp a float");
				pFunction->BindOutput(0, 'res', "Result");
				pFunction->BindInput(1, 'a', "A");
				pFunction->BindInput(2, 'b', "B");
				pFunction->BindInput(3, 't', "T");
				scope.Register(pFunction);
			}
		}
	}

	namespace Angle
	{
		CryTransform::CAngle Lerp(CryTransform::CAngle a, CryTransform::CAngle b, float t)
		{
			return a + (b - a) * t;
		}

		static void RegisterFunctions(Schematyc::IEnvRegistrar& registrar)
		{
			Schematyc::CEnvRegistrationScope scope = registrar.Scope(GetTypeDesc<CryTransform::CAngle>().GetGUID());
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&Lerp, "{2B5C3563-94E3-48F5-BC46-FC131820A064}"_cry_guid, "Lerp");
				pFunction->SetDescription("Lerp an angle");
				pFunction->BindOutput(0, 'res', "Result");
				pFunction->BindInput(1, 'a', "A");
				pFunction->BindInput(2, 'b', "B");
				pFunction->BindInput(3, 't', "T");
				scope.Register(pFunction);
			}
		}
	}

	namespace Angles3
	{
		CryTransform::CAngles3 Lerp(CryTransform::CAngles3 a, CryTransform::CAngles3 b, float t)
		{
			Quat qa(a.ToAng3());
			Quat qb(b.ToAng3());

			Quat result = Quat::CreateSlerp(qa, qb, t);

			Ang3 angles(result);

			return CryTransform::CAngles3(CryTransform::CAngle::FromRadians(angles.x), CryTransform::CAngle::FromRadians(angles.y), CryTransform::CAngle::FromRadians(angles.z));
		}

		static void RegisterFunctions(Schematyc::IEnvRegistrar& registrar)
		{
			Schematyc::CEnvRegistrationScope scope = registrar.Scope(GetTypeDesc<CryTransform::CAngles3>().GetGUID());
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&Lerp, "{6DC5B8CA-2B77-45D4-A545-4B446DFD20FA}"_cry_guid, "Lerp");
				pFunction->SetDescription("Lerp a 3D angle");
				pFunction->BindOutput(0, 'res', "Result");
				pFunction->BindInput(1, 'a', "A");
				pFunction->BindInput(2, 'b', "B");
				pFunction->BindInput(3, 't', "T");
				scope.Register(pFunction);
			}
		}
	}

	namespace Rotation
	{
		CRotation CreateFromVector(Vec3 vector)
		{
			return CRotation(Quat::CreateRotationVDir(vector));
		}

		CryTransform::CRotation Lerp(CryTransform::CRotation a, CryTransform::CRotation b, float t)
		{
			Quat qa = a.ToQuat();
			Quat qb = b.ToQuat();

			Quat result = Quat::CreateSlerp(qa, qb, t);

			return CryTransform::CRotation(result);
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
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&Lerp, "{C5134320-F963-4E39-AE52-F0B849EF3F6D}"_cry_guid, "Lerp");
				pFunction->SetDescription("Lerp a rotation");
				pFunction->BindOutput(0, 'res', "Result");
				pFunction->BindInput(1, 'a', "A");
				pFunction->BindInput(2, 'b', "B");
				pFunction->BindInput(3, 't', "T");
				scope.Register(pFunction);
			}
		}
	}

	void RegisterCustomFunctions(IEnvRegistrar& registrar)
	{
		Raycast::RegisterFunctions(registrar);
		Log::RegisterFunctions(registrar);
		Entity::RegisterFunctions(registrar);
		Vector2::RegisterFunctions(registrar);
		Vector3::RegisterFunctions(registrar);
		Int32::RegisterFunctions(registrar);
		Float::RegisterFunctions(registrar);
		Angle::RegisterFunctions(registrar);
		Angles3::RegisterFunctions(registrar);
		Rotation::RegisterFunctions(registrar);
	}
}

CRY_STATIC_AUTO_REGISTER_FUNCTION(&Schematyc::RegisterCustomFunctions)