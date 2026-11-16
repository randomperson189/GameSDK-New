#include "StdAfx.h"
#include "LipSyncComponent.h"

#include <CryAnimation/IFacialAnimation.h>
#include <CryCore/StaticInstanceList.h>
#include <CrySchematyc/Env/Elements/EnvComponent.h>
#include <CrySchematyc/Env/IEnvRegistrar.h>

namespace
{
    void ClearFacialWeights(IFacialInstance& facialInstance)
    {
        IFaceState* pFaceState = facialInstance.GetFaceState();
        IFacialModel* pFacialModel = facialInstance.GetFacialModel();
        if (pFaceState == nullptr || pFacialModel == nullptr)
        {
            return;
        }

        const int effectorCount = pFacialModel->GetEffectorCount();
        for (int i = 0; i < effectorCount; ++i)
        {
            if (IFacialEffector* pEffector = pFacialModel->GetEffector(i))
            {
                const int stateIndex = pEffector->GetIndexInState();
                if (stateIndex >= 0)
                {
                    pFaceState->SetEffectorWeight(stateIndex, 0.0f);
                }
            }
        }
    }

    void SetMorphWeight(IFacialInstance& facialInstance, const char* morphName, const float weight)
    {
        IFaceState* pFaceState = facialInstance.GetFaceState();
        IFacialModel* pFacialModel = facialInstance.GetFacialModel();
        if (pFaceState == nullptr || pFacialModel == nullptr || morphName == nullptr)
        {
            return;
        }

        IFacialEffectorsLibrary* pLibrary = pFacialModel->GetLibrary();
        if (pLibrary == nullptr)
        {
            return;
        }

        IFacialEffector* pEffector = pLibrary->Find(morphName);
        if (pEffector == nullptr)
        {
            return;
        }

        const int stateIndex = pEffector->GetIndexInState();
        if (stateIndex >= 0)
        {
            pFaceState->SetEffectorWeight(stateIndex, weight);
        }
    }

    static void RegisterLipSyncComponent(Schematyc::IEnvRegistrar& registrar)
    {
        Schematyc::CEnvRegistrationScope scope = registrar.Scope(IEntity::GetEntityScopeGUID());
        {
            Schematyc::CEnvRegistrationScope componentScope = scope.Register(SCHEMATYC_MAKE_ENV_COMPONENT(CLipSyncComponent));
        }
    }

    CRY_STATIC_AUTO_REGISTER_FUNCTION(&RegisterLipSyncComponent);
}

void CLipSyncComponent::ReflectType(Schematyc::CTypeDesc<CLipSyncComponent>& desc)
{
    desc.SetGUID("{A1B2C3D4-E5F6-47A8-9B0C-1D2E3F4A5B6C}"_cry_guid);
    desc.SetEditorCategory("AI");
    desc.SetLabel("Lip Sync Component (Rhubarb)");
    desc.SetDescription("Drives CC3 morph targets based on Rhubarb Lip Sync JSON data.");
}

void CLipSyncComponent::Initialize()
{
    m_pAnimComp = GetEntity()->GetComponent<Cry::DefaultComponents::CAdvancedAnimationComponent>();

    if (!m_pAnimComp)
    {
        CryWarning(VALIDATOR_MODULE_GAME, VALIDATOR_WARNING, "CLipSyncComponent: Entity %s is missing CAdvancedAnimationComponent!", GetEntity()->GetName());
    }
}

Cry::Entity::EventFlags CLipSyncComponent::GetEventMask() const
{
    return Cry::Entity::EEvent::Update;
}

void CLipSyncComponent::ProcessEvent(const SEntityEvent& event)
{
    if (event.event == Cry::Entity::EEvent::Update)
    {
        UpdateFace(event.fParam[0]);
    }
}

void CLipSyncComponent::StartSpeech(const char* jsonPath)
{
    const string fullPath = string("Animations/LipSync/") + jsonPath;

    if (Serialization::LoadJsonFile(m_data, fullPath.c_str()))
    {
        m_timer = 0.0f;
        m_isSpeaking = true;
        CryLogAlways("[LipSync] Started speech from: %s", fullPath.c_str());
    }
    else
    {
        CryWarning(VALIDATOR_MODULE_GAME, VALIDATOR_ERROR, "[LipSync] Failed to load JSON: %s", fullPath.c_str());
        m_isSpeaking = false;
    }
}

void CLipSyncComponent::StopSpeech()
{
    m_isSpeaking = false;
    m_timer = 0.0f;

    if (m_pAnimComp)
    {
        if (ICharacterInstance* pChar = m_pAnimComp->GetCharacter())
        {
            if (IFacialInstance* pFacial = pChar->GetFacialInstance())
            {
                ClearFacialWeights(*pFacial);
            }
        }
    }
}

void CLipSyncComponent::UpdateFace(float deltaTime)
{
    if (!m_isSpeaking || !m_pAnimComp)
    {
        return;
    }

    m_timer += deltaTime;
    string currentViseme = "X";

    for (const auto& cue : m_data.mouthCues)
    {
        if (m_timer >= cue.start && m_timer <= cue.end)
        {
            currentViseme = cue.value;
            break;
        }
    }

    if (ICharacterInstance* pChar = m_pAnimComp->GetCharacter())
    {
        if (IFacialInstance* pFacial = pChar->GetFacialInstance())
        {
            ClearFacialWeights(*pFacial);

            if (const char* morphName = GetCC3MorphName(currentViseme))
            {
                SetMorphWeight(*pFacial, morphName, 1.0f);
            }
        }
    }

    if (!m_data.mouthCues.empty() && m_timer > m_data.mouthCues.back().end)
    {
        StopSpeech();
    }
}

const char* CLipSyncComponent::GetCC3MorphName(const string& val)
{
    if (val == "B") return "Vowel_EE";
    if (val == "C") return "Vowel_AH";
    if (val == "D") return "Vowel_OH";
    if (val == "E") return "Vowel_ER";
    if (val == "F") return "Vowel_U";
    if (val == "G") return "Mouth_Lip_Bite_Lower";
    if (val == "H") return "Vowel_L";

    return nullptr;
}
