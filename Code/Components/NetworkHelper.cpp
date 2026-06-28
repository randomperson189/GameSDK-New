#include "StdAfx.h"
#include "NetworkHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <DefaultComponents/Input/InputComponent.h>
#include <CryNetwork/Rmi.h>

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

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CNetworkHelperComponent::SendToServer, "{6EAEF9E3-48D9-42CA-AFDB-1872D811A83E}"_cry_guid, "Send Remote Event To Server");
				pFunction->BindInput(1, 'enam', "Event Name");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CNetworkHelperComponent::SendToClients, "{DBE8F0EA-F6C6-4FF5-AC14-97A0571AC3EC}"_cry_guid, "Send Remote Event To Clients");
				pFunction->BindInput(1, 'enam', "Event Name");
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CNetworkHelperComponent::ServerMarkNetAspectDirty, "{C441B1D6-8906-48EF-8D67-AF6FDE86E3EF}"_cry_guid, "Server Mark Net Aspect Dirty");
				pFunction->BindInput(1, 'sbl1', "Server Bool 1");
				componentScope.Register(pFunction);
			}
			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CNetworkHelperComponent::ClientMarkNetAspectDirty, "{A1B4D4C1-3E9E-41B5-A561-4168BDB73DE6}"_cry_guid, "Client Mark Net Aspect Dirty");
				pFunction->BindInput(1, 'cbl1', "Client Bool 1");
				componentScope.Register(pFunction);
			}

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CNetworkHelperComponent::SServerReceiveRemoteEvent));
			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CNetworkHelperComponent::SClientReceiveRemoteEvent));

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CNetworkHelperComponent::SServerReceiveNetVariables));
			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CNetworkHelperComponent::SClientReceiveNetVariables));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterNetworkHelperComponent);
}

static void ReflectType(Schematyc::CTypeDesc<CNetworkHelperComponent::SServerReceiveRemoteEvent>& desc)
{
	desc.SetGUID("{DE6B4D1F-F07D-42DB-B313-E40FB7433CBC}"_cry_guid);
	desc.SetLabel("Server Receive Remote Event");
	desc.AddMember(&CNetworkHelperComponent::SServerReceiveRemoteEvent::eventName, 'enam', "EventName", "Event Name", "Name of the Event that was received", "");
}

static void ReflectType(Schematyc::CTypeDesc<CNetworkHelperComponent::SClientReceiveRemoteEvent>& desc)
{
	desc.SetGUID("{CD6D1D98-9311-4BAE-AC4E-C3CFBD318711}"_cry_guid);
	desc.SetLabel("Client Receive Remote Event");
	desc.AddMember(&CNetworkHelperComponent::SClientReceiveRemoteEvent::eventName, 'enam', "EventName", "Event Name", "Name of the Event that was received", "");
}

static void ReflectType(Schematyc::CTypeDesc<CNetworkHelperComponent::SServerReceiveNetVariables>& desc)
{
	desc.SetGUID("{37FEB61F-19E0-49FF-94FE-85031ED97BCD}"_cry_guid);
	desc.SetLabel("Server Receive Net Variables");
	desc.AddMember(&CNetworkHelperComponent::SServerReceiveNetVariables::bClientBool1, 'bcb1', "ClientBool1", "Client Bool 1", "", "");
	desc.AddMember(&CNetworkHelperComponent::SServerReceiveNetVariables::bPrevClientBool1, 'pcb1', "PrevClientBool1", "Prev Client Bool 1", "", "");
}

static void ReflectType(Schematyc::CTypeDesc<CNetworkHelperComponent::SClientReceiveNetVariables>& desc)
{
	desc.SetGUID("{9F64427C-7326-4B85-9C18-E5A313C25BBF}"_cry_guid);
	desc.SetLabel("Client Receive Net Variables");
	desc.AddMember(&CNetworkHelperComponent::SClientReceiveNetVariables::bServerBool1, 'bcb1', "ServerBool1", "Server Bool 1", "", "");
	desc.AddMember(&CNetworkHelperComponent::SClientReceiveNetVariables::bPrevServerBool1, 'pcb1', "PrevServerBool1", "Prev Server Bool 1", "", "");
}

CNetworkHelperComponent::CNetworkHelperComponent()
{
}

CNetworkHelperComponent::~CNetworkHelperComponent()
{
}

void CNetworkHelperComponent::Initialize()
{
	if (m_bIsNetworked)
	{
		m_pEntity->GetNetEntity()->BindToNetwork();
	}

	SRmi<RMI_WRAP(&CNetworkHelperComponent::RemoteSendToServer)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);
	SRmi<RMI_WRAP(&CNetworkHelperComponent::RemoteSendToClients)>::Register(this, eRAT_NoAttach, false, eNRT_ReliableOrdered);
	// TODO: Maybe add reliability options instead of just eNRT_ReliableOrdered
}

bool CNetworkHelperComponent::NetSerialize(TSerialize ser, EEntityAspects aspect, uint8 profile, int flags)
{
	if (aspect == NetworkServerAspect)
	{
		ser.BeginGroup("NetworkServer");

		bool bPrevServerBool1 = bServerBool1;

		ser.Value("bServerBool1", bServerBool1, 'bool');

		if (ser.IsReading())
		{
			if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
			{
				m_pEntity->GetSchematycObject()->ProcessSignal(SClientReceiveNetVariables(bServerBool1, bPrevServerBool1), GetGUID());
			}
		}

		ser.EndGroup();
	}
	if (aspect == NetworkClientAspect)
	{
		ser.BeginGroup("NetworkClient");

		bool bPrevClientBool1 = bClientBool1;

		ser.Value("bClientBool1", bClientBool1, 'bool');

		if (ser.IsReading())
		{
			if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
			{
				m_pEntity->GetSchematycObject()->ProcessSignal(SServerReceiveNetVariables(bClientBool1, bPrevClientBool1), GetGUID());
			}
		}

		ser.EndGroup();
	}

	return true;
}

void CNetworkHelperComponent::SendToServer(Schematyc::CSharedString eventName)
{
	RemoteParams params;
	params.eventName = eventName.c_str();

	SRmi<RMI_WRAP(&CNetworkHelperComponent::RemoteSendToServer)>::InvokeOnServer(this, std::move(params), GetEntityId());
}

void CNetworkHelperComponent::SendToClients(Schematyc::CSharedString eventName)
{
	RemoteParams params;
	params.eventName = eventName.c_str();

	SRmi<RMI_WRAP(&CNetworkHelperComponent::RemoteSendToClients)>::InvokeOnAllClients(this, std::move(params), GetEntityId());
}

bool CNetworkHelperComponent::RemoteSendToServer(RemoteParams && params, INetChannel * pNetChannel)
{
	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		m_pEntity->GetSchematycObject()->ProcessSignal(SServerReceiveRemoteEvent(params.eventName), GetGUID());
	}

	return true;
}

bool CNetworkHelperComponent::RemoteSendToClients(RemoteParams && params, INetChannel * pNetChannel)
{
	if (Schematyc::IObject* const pSchematycObject = m_pEntity->GetSchematycObject())
	{
		m_pEntity->GetSchematycObject()->ProcessSignal(SClientReceiveRemoteEvent(params.eventName), GetGUID());
	}

	return true;
}

