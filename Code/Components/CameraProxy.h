// Copyright 2017-2021 Crytek GmbH / Crytek Group. All rights reserved.

#pragma once

#include <CryEntitySystem/IEntitySystem.h>

////////////////////////////////////////////////////////
// Spawn point
////////////////////////////////////////////////////////
class CCameraProxyComponent final : public IEntityComponent
{
public:
	CCameraProxyComponent() = default;
	virtual ~CCameraProxyComponent() = default;

	virtual void Initialize() override;

	virtual Cry::Entity::EventFlags GetEventMask() const override;
	virtual void ProcessEvent(const SEntityEvent& event) override;

	// Reflect type to set a unique identifier for this component
	// and provide additional information to expose it in the sandbox
	static void ReflectType(Schematyc::CTypeDesc<CCameraProxyComponent>& desc)
	{
		desc.SetGUID("{5403106F-EC17-43CB-B443-665B156F90B5}"_cry_guid);
		desc.SetEditorCategory("Game");
		desc.SetLabel("CameraProxy");
		desc.SetDescription("Camera Proxy Component");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Transform, IEntityComponent::EFlags::Socket, IEntityComponent::EFlags::Attach });
	}
};
