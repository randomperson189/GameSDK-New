#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

class CNetworkHelperComponent final : public IEntityComponent
{
public:
	CNetworkHelperComponent();
	virtual ~CNetworkHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	static void ReflectType(Schematyc::CTypeDesc<CNetworkHelperComponent>& desc);
	// ~IEntityComponent

	bool IsServer();
};