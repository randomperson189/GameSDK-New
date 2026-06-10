#include "StdAfx.h"
#include "Item.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <DefaultComponents/Input/InputComponent.h>

namespace
{
	static void RegisterItemComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CItemComponent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterItemComponent);
}

CItemComponent::CItemComponent() 
{
}

CItemComponent::~CItemComponent()
{
}

void CItemComponent::Initialize()
{
}