#include "StdAfx.h"
#include "CameraHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>

#include <DefaultComponents/Cameras/CameraComponent.h>

namespace
{
	static void RegisterCameraHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CCameraHelperComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CCameraHelperComponent::SetFOV, "{DBF8136B-A116-40AF-9737-7F2E9616B203}"_cry_guid, "SetFOV");
				pFunction->BindInput(1, 'fov', "FOV", "Field Of View", CryTransform::CAngle::FromDegrees(70));
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterCameraHelperComponent);
}

CCameraHelperComponent::CCameraHelperComponent() 
{
}

CCameraHelperComponent::~CCameraHelperComponent()
{
}

void CCameraHelperComponent::Initialize()
{
}

void CCameraHelperComponent::SetFOV(CryTransform::CAngle fov)
{
	if (Cry::DefaultComponents::CCameraComponent* pCamera = m_pEntity->GetOrCreateComponent<Cry::DefaultComponents::CCameraComponent>())
	{
		pCamera->SetFieldOfView(fov);
	}
}