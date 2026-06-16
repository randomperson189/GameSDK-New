#include "StdAfx.h"
#include "NetworkHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <DefaultComponents/Input/InputComponent.h>

namespace
{
	static void RegisterNetworkHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CNetworkHelperComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CNetworkHelperComponent::IsServer, "{24648B9E-0859-4E36-BDC2-657A043989BB}"_cry_guid, "Is Server");
				pFunction->BindOutput(0, 'srv', "Is Server");
				componentScope.Register(pFunction);
			}
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterNetworkHelperComponent);
}

// Reflect type to set a unique identifier for this component
void CNetworkHelperComponent::ReflectType(Schematyc::CTypeDesc<CNetworkHelperComponent>& desc)
{
	desc.SetGUID("{B65F8780-FD47-49D7-AD6F-02DF006F322A}"_cry_guid);

	desc.SetEditorCategory("Utilities");
	desc.SetLabel("Network Helper");
	desc.SetDescription("Component to help with networking");
}

CNetworkHelperComponent::CNetworkHelperComponent()
{
}

CNetworkHelperComponent::~CNetworkHelperComponent()
{
}

void CNetworkHelperComponent::Initialize()
{
}

bool CNetworkHelperComponent::IsServer()
{
	return gEnv->bServer;
}