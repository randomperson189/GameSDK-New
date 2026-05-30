#include "StdAfx.h"

#include <CrySerialization/Forward.h>
#include <CryMath/Cry_Math.h>
#include <CryMath/Random.h>
#include <CryMath/Angle.h>

#include <CrySchematyc/CoreAPI.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CryPhysics/physinterface.h>
#include <CryCore/StaticInstanceList.h>

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

		static void RegisterFunctions(IEnvRegistrar& registrar)
		{
			CEnvRegistrationScope scope = registrar.Scope(GetTypeDesc<ray_hit>().GetGUID());
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&RayCastAdvanced, "{11C536CD-C889-43CB-BC26-47CA5D41809D}"_cry_guid, "RayCast Advanced");
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
		}
	}


	void RegisterCustomFunctions(IEnvRegistrar& registrar)
	{
		Raycast::RegisterFunctions(registrar);
	}
}

CRY_STATIC_AUTO_REGISTER_FUNCTION(&Schematyc::RegisterCustomFunctions)