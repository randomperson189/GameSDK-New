// Copyright 2017-2019 Crytek GmbH / Crytek Group. All rights reserved.
#include "StdAfx.h"
#include "SpawnPoint.h"

#include <CrySchematyc/Reflection/TypeDesc.h>
#include <CrySchematyc/Utils/EnumFlags.h>
#include <CrySchematyc/Env/IEnvRegistry.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>
#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/ResourceTypes.h>
#include <CrySchematyc/MathTypes.h>
#include <CrySchematyc/Utils/SharedString.h>
#include <CryCore/StaticInstanceList.h>

static void RegisterSpawnPointComponent(Schematyc::IEnvRegistrar& registrar)
{
	Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
	{
		Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CSpawnPointComponent));
		// Functions
		{
		}
	}
}

CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterSpawnPointComponent)

void CSpawnPointComponent::Initialize()
{
	if (gEnv->IsEditor())
	{
		// Set the model of geometry slot 0
		GetEntity()->LoadGeometry(0, "%Editor%/Objects/spawnpointhelper.cgf");
	}
}

Cry::Entity::EventFlags CSpawnPointComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::Reset;
}

void CSpawnPointComponent::ProcessEvent(const SEntityEvent& event)
{
	switch (event.event)
	{
	case Cry::Entity::EEvent::Reset:
	{
		if (event.nParam[0] != 0)
		{
			// Disable rendering of this slot
			uint32 flags = GetEntity()->GetSlotFlags(0);
			GetEntity()->SetSlotFlags(0, flags & ~ENTITY_SLOT_RENDER);
		}
		else
		{
			// Enable rendering of this slot
			uint32 flags = GetEntity()->GetSlotFlags(0);
			GetEntity()->SetSlotFlags(0, flags | ENTITY_SLOT_RENDER);
		}
	}
	break;
	}
}