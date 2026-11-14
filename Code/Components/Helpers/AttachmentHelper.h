#pragma once

#include <CryCore/StaticInstanceList.h>
#include <CryEntitySystem/IEntitySystem.h>
#include <CrySchematyc/Utils/SharedString.h>

////////////////////////////////////////////////////////
// Physicalized bullet shot from weaponry, expires on collision with another object
////////////////////////////////////////////////////////
class CAttachmentHelperComponent final : public IEntityComponent
{
public:
	CAttachmentHelperComponent();
	virtual ~CAttachmentHelperComponent();

	// IEntityComponent
	virtual void Initialize() override;

	// Reflect type to set a unique identifier for this component
	static void ReflectType(Schematyc::CTypeDesc<CAttachmentHelperComponent>& desc)
	{
		desc.SetGUID("{5F753867-3CC6-47C2-80E6-769EE6ECA27E}"_cry_guid);

		desc.SetEditorCategory("Helpers");
		desc.SetLabel("Attachment Helper");
		desc.SetDescription("Component to manage attachments");
		desc.SetComponentFlags({ IEntityComponent::EFlags::Singleton });
	}
	// ~IEntityComponent

	void CreateEntityAttachment(Schematyc::ExplicitEntityId id, int animComponentIndex, Schematyc::CSharedString attachmentName, Vec3 scale = Vec3(1.f, 1.f, 1.f));
	void CreateSkinAttachment(Schematyc::SkinName characterFile, int animComponentIndex, Schematyc::CSharedString attachmentName);
	void RemoveAttachment(int animComponentIndex, Schematyc::CSharedString attachmentName);

	void SetAttachmentHidden(int animComponentIndex, Schematyc::CSharedString attachmentName, bool hide);
	void SetAttachmentHiddenShadow(int animComponentIndex, Schematyc::CSharedString attachmentName, bool hide);

	CryTransform::CTransform GetAttachmentTransform(int animComponentIndex, Schematyc::CSharedString attachmentName);

protected:
	// Define the animation component's interface ID (from ReflectType)
	// TODO: Find a better way to get the GUID directly, just in case it changes
	const CryInterfaceID animComponentGUID = "{3CD5DDC5-EE15-437F-A997-79C2391537FE}"_cry_guid;
};