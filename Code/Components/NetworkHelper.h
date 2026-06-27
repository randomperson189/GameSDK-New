#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

class CNetworkHelperComponent final : public IEntityComponent
{
	// Server owned variables (replicated from server -> clients)
	static constexpr EEntityAspects NetworkServerAspect = eEA_GameServerE;

	// Client owned variables (replicated from client -> server)
	static constexpr EEntityAspects NetworkClientAspect = eEA_GameClientP;

public:
	CNetworkHelperComponent();
	virtual ~CNetworkHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	 // Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CNetworkHelperComponent>& desc)
	{
		desc.SetGUID("{B65F8780-FD47-49D7-AD6F-02DF006F322A}"_cry_guid);

		desc.SetEditorCategory("Utilities");
		desc.SetLabel("Network Helper");
		desc.SetDescription("Component to help with networking");

		desc.AddMember(&CNetworkHelperComponent::m_bIsNetworked, 'netw', "Networked", "Network Synced", "Syncs the entity over the network, and keeps it in sync with the server", true);
	}

	virtual NetworkAspectType GetNetSerializeAspectMask() const override { return NetworkServerAspect | NetworkClientAspect; }

	virtual bool NetSerialize(TSerialize ser, EEntityAspects aspect, uint8, int flags) override;
	// ~IEntityComponent

	bool IsServer() { return gEnv->bServer; };
	int GetNetChannelId() { return m_pEntity->GetNetEntity()->GetChannelId(); };

	// RMI Functions
	void SendToServer(Schematyc::CSharedString eventId);
	void SendToClients(Schematyc::CSharedString eventId);

	struct SServerReceiveRemoteEvent
	{
		SServerReceiveRemoteEvent() = default;
		SServerReceiveRemoteEvent(Schematyc::CSharedString eventName) : eventName(Schematyc::CSharedString(eventName)) {}

		Schematyc::CSharedString eventName;
	};

	struct SClientReceiveRemoteEvent
	{
		SClientReceiveRemoteEvent() = default;
		SClientReceiveRemoteEvent(Schematyc::CSharedString eventName) : eventName(Schematyc::CSharedString(eventName)) {}

		Schematyc::CSharedString eventName;
	};

	// NetSerialize Variables
	void ServerMarkNetAspectDirty(bool _bServerBool1) { bServerBool1 = _bServerBool1; NetMarkAspectsDirty(NetworkServerAspect); };
	void ClientMarkNetAspectDirty(bool _bClientBool1) { bClientBool1 = _bClientBool1; NetMarkAspectsDirty(NetworkClientAspect); };

	struct SClientReceiveNetVariables
	{
		SClientReceiveNetVariables() = default;
		SClientReceiveNetVariables(bool bServerBool1, bool bPrevServerBool1)
			: bServerBool1(bServerBool1)
			, bPrevServerBool1(bPrevServerBool1)
		{}

		bool bServerBool1;
		bool bPrevServerBool1;
	};

	struct SServerReceiveNetVariables
	{
		SServerReceiveNetVariables() = default;
		SServerReceiveNetVariables(bool bClientBool1, bool bPrevClientBool1)
			: bClientBool1(bClientBool1)
			, bPrevClientBool1(bPrevClientBool1)
		{}

		bool bClientBool1;
		bool bPrevClientBool1;
	};
protected:
	bool m_bIsNetworked;

	// RMI Functions
	struct RemoteParams
	{
		string eventName;

		void SerializeWith(TSerialize ser)
		{
			ser.Value("eventName", eventName, 'stab');
		}
	};

	bool RemoteSendToServer(RemoteParams&& params, INetChannel* pNetChannel);
	bool RemoteSendToClients(RemoteParams&& params, INetChannel* pNetChannel);

	// NetSerialize Variables
	bool bServerBool1;

	bool bClientBool1;
};