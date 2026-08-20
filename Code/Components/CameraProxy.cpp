// Copyright 2017-2019 Crytek GmbH / Crytek Group. All rights reserved.
#include "StdAfx.h"
#include "CameraProxy.h"

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

static void RegisterCameraProxyComponent(Schematyc::IEnvRegistrar& registrar)
{
	Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
	{
		Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CCameraProxyComponent));
		// Functions
		{
		}
	}
}

CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterCameraProxyComponent)

void CCameraProxyComponent::Initialize()
{
	if (gEnv->IsEditor())
	{
		// Set the model of geometry slot 0
		GetEntity()->LoadGeometry(0, "%Editor%/Objects/CameraProxyhelper.cgf");
	}
}

Cry::Entity::EventFlags CCameraProxyComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::Reset;
}

void CCameraProxyComponent::ProcessEvent(const SEntityEvent& event)
{
	
}