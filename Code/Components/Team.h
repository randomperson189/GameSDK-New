#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>
#include <CrySchematyc/Reflection/TypeDesc.h>

enum ETeam : uint32
{
	None,
	Red,
	Blue
};

static void ReflectType(Schematyc::CTypeDesc<ETeam>& desc)
{
	desc.SetGUID("{CC696395-F11F-4395-9A44-FAF3CDDECCE3}"_cry_guid);
	desc.SetLabel("Team");
	desc.AddConstant(ETeam::None, "None", "None");
	desc.AddConstant(ETeam::Red, "Red", "Red");
	desc.AddConstant(ETeam::Blue, "Blue", "Blue");
}

class CTeamComponent final : public IEntityComponent
{
	static constexpr EEntityAspects TeamAspect = eEA_GameServerA;

public:
	CTeamComponent();
	virtual ~CTeamComponent();

	// IEntityComponent
	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;

	virtual bool NetSerialize(TSerialize ser, EEntityAspects aspect, uint8 profile, int flags) override;
	virtual NetworkAspectType GetNetSerializeAspectMask() const override { return TeamAspect; }

	static void ReflectType(Schematyc::CTypeDesc<CTeamComponent>& desc)
	{
		desc.SetGUID("{8CEFD02A-1E5B-4A03-90AE-5D5600CBA74D}"_cry_guid);

		desc.SetEditorCategory("Game");
		desc.SetLabel("Team");
		desc.SetDescription("Component to set entities to a team");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Singleton });

		desc.AddMember(&CTeamComponent::m_team, 'team', "Team", "Team", "Team this entity is on", ETeam::None);
	}
	// ~IEntityComponent

	ETeam GetTeam();
	void SetTeam(ETeam team);

	int GetTeamSchematyc() { return static_cast<int>(m_team); };
	void SetTeamSchematyc(int teamInt) { SetTeam(static_cast<ETeam>(teamInt)); };

	void TeamChanged();

	struct STeamChanged
	{
		STeamChanged() = default;
	};

protected:
	ETeam m_team;
};