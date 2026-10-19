#include "StdAfx.h"
#include "AdvancedAnimationHelper.h"

#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/Elements/EnvFunction.h>
#include <CrySchematyc/Env/Elements/EnvSignal.h>
#include <DefaultComponents/Input/InputComponent.h>

namespace
{
	static void RegisterAdvancedAnimationHelperComponent(Schematyc::IEnvRegistrar& registrar)
	{
		Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
		{
			Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CAdvancedAnimationHelperComponent));

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CAdvancedAnimationHelperComponent::GetCharacterFile, "{B62E9F15-C6A2-4625-A363-4555555568B2}"_cry_guid, "GetCharacterFile");
				pFunction->BindOutput(0, 'char', "Character Name");
				pFunction->BindInput(1, 'aci', "Anim Component Index", "Index of the Animation Component to use", 0);
				componentScope.Register(pFunction);
			}

			{
				auto pFunction = SCHEMATYC_MAKE_ENV_FUNCTION(&CAdvancedAnimationHelperComponent::SetCharacterFile, "{079FC652-8252-4241-A7CC-6C381B04896E}"_cry_guid, "SetCharacterFile");
				pFunction->BindInput(1, 'char', "Character Name");
				pFunction->BindInput(2, 'aci', "Anim Component Index", "Index of the Animation Component to use", 0);
				componentScope.Register(pFunction);
			}

			componentScope.Register(SCHEMATYC_MAKE_ENV_SIGNAL(CAdvancedAnimationHelperComponent::SAnimationEvent));
		}
	}

	CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterAdvancedAnimationHelperComponent);
}

static void ReflectType(Schematyc::CTypeDesc<CAdvancedAnimationHelperComponent::SAnimationEvent>& desc)
{
	desc.SetGUID("{3401BA97-3514-46E4-9A20-8769B86C40E6}"_cry_guid);
	desc.SetLabel("Animation Event");
	desc.AddMember(&CAdvancedAnimationHelperComponent::SAnimationEvent::pEventName, 'evnt', "EventName", "Event Name", "Name of the animaton event that was triggered", "");
	desc.AddMember(&CAdvancedAnimationHelperComponent::SAnimationEvent::pCharacterName, 'char', "CharacterName", "Character Name", "Name of the character that executed this event", "");
}

CAdvancedAnimationHelperComponent::CAdvancedAnimationHelperComponent() 
{
}

CAdvancedAnimationHelperComponent::~CAdvancedAnimationHelperComponent()
{
}

void CAdvancedAnimationHelperComponent::Initialize()
{
}

Cry::Entity::EventFlags CAdvancedAnimationHelperComponent::GetEventMask() const
{
	return
		Cry::Entity::EEvent::AnimationEvent;
}

void CAdvancedAnimationHelperComponent::ProcessEvent(const SEntityEvent& event)
{
	switch (event.event)
	{
	case Cry::Entity::EEvent::AnimationEvent:
	{
		if (gEnv->IsEditor())
			if (!gEnv->IsEditorGameMode())
				return;

		auto* pAnimEvent = reinterpret_cast<const AnimEventInstance*>(event.nParam[0]);
		auto* pCharacter = reinterpret_cast<ICharacterInstance*>(event.nParam[1]);

		m_pEntity->GetSchematycObject()->ProcessSignal(SAnimationEvent(pAnimEvent->m_EventName, pCharacter->GetFilePath()), GetGUID());
	}
	break;
	}
}

void CAdvancedAnimationHelperComponent::QueueFragmentAdvanced(int animComponentId, Schematyc::CSharedString fragment, int scopeId, float speedMultiplier, bool noAutoBlendOut, bool overridePreviousFragment)
{
	
}

Schematyc::CSharedString CAdvancedAnimationHelperComponent::GetCharacterFile(int animComponentIndex)
{
	// Define the animation component's interface ID (from ReflectType)
	// TODO: Find a better way to get the GUID directly, just in case it changes
	const CryInterfaceID animComponentGUID = "{3CD5DDC5-EE15-437F-A997-79C2391537FE}"_cry_guid;

	// Array to store all components of this type
	DynArray<IEntityComponent*> components;
	m_pEntity->GetComponentsByTypeId(animComponentGUID, components);

	if (animComponentIndex < 0 || animComponentIndex >= components.size())
		return Schematyc::CSharedString();

	if (Cry::DefaultComponents::CAdvancedAnimationComponent* animationComponent = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[animComponentIndex]))
	{
		if (ICharacterInstance* character = animationComponent->GetCharacter())
		{
			return Schematyc::CSharedString(character->GetFilePath());
		}
	}

	return Schematyc::CSharedString();
}

void CAdvancedAnimationHelperComponent::SetCharacterFile(Schematyc::CharacterFileName characterFile, int animComponentIndex)
{
	// Define the animation component's interface ID (from ReflectType)
	// TODO: Find a better way to get the GUID directly, just in case it changes
	const CryInterfaceID animComponentGUID = "{3CD5DDC5-EE15-437F-A997-79C2391537FE}"_cry_guid;

	// Array to store all components of this type
	DynArray<IEntityComponent*> components;
	m_pEntity->GetComponentsByTypeId(animComponentGUID, components);

	if (animComponentIndex < 0 || animComponentIndex >= components.size())
		return;

	if (Cry::DefaultComponents::CAdvancedAnimationComponent* animationComponent = static_cast<Cry::DefaultComponents::CAdvancedAnimationComponent*>(components[animComponentIndex]))
	{
		animationComponent->SetCharacterFile(characterFile.value);
	}
}