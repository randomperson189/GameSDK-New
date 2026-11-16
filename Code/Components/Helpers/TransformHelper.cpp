#include "StdAfx.h"
#include "TransformHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>

namespace
{
	static void RegisterTransformHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CTransformHelperComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CTransformHelperComponent::GetComponentTransform, "{9B5D0952-3E2E-4660-A46B-CB4D9448EB31}"_cry_guid, "GetComponentTransform");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				pFunction->BindOutput(0, 'tra', "Transform");
				pFunction->BindInput(1, 'idx', "Component Index");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CTransformHelperComponent::SetComponentTransform, "{B8D26FBB-D698-4B04-8FF2-47C8CD3B10E2}"_cry_guid, "SetComponentTransform");
				pFunction->SetFlags({ Schematyc::EEnvFunctionFlags::Construction });
				pFunction->BindInput(1, 'idx', "Component Index");
				pFunction->BindInput(2, 'tra', "Transform");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterTransformHelperComponent);
}

CTransformHelperComponent::CTransformHelperComponent()
{
}

CTransformHelperComponent::~CTransformHelperComponent()
{
}

void CTransformHelperComponent::Initialize()
{
}

CryTransform::CTransform CTransformHelperComponent::GetComponentTransform(Schematyc::CSharedString componentName)
{
	CryTransform::CTransform result;

	m_pEntity->VisitComponents([&](IEntityComponent* pComponent)
	{
		if (pComponent && strcmp(pComponent->GetName(), componentName.c_str()) == 0)
		{
			if (pComponent->GetTransform())
			{
				result = *pComponent->GetTransform();
			}
		}
	});

	return result;
}

void CTransformHelperComponent::SetComponentTransform(Schematyc::CSharedString componentName, CryTransform::CTransform transform)
{
	m_pEntity->VisitComponents([&](IEntityComponent* pComponent)
	{
		if (pComponent && strcmp(pComponent->GetName(), componentName.c_str()) == 0)
		{
			if (pComponent->GetTransform())
			{
				pComponent->SetTransformMatrix(transform.ToMatrix34());
			}
		}
	});
}

