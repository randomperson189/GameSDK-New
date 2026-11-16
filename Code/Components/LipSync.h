#pragma once

#include <CryEntitySystem/IEntityComponent.h>
#include <CrySerialization/IArchiveHost.h>
#include <CrySerialization/STL.h>
#include <DefaultComponents/Geometry/AdvancedAnimationComponent.h>

namespace LipSync
{
    struct SMouthCue
    {
        float start;
        float end;
        string value;

        void Serialize(Serialization::IArchive& ar)
        {
            ar(start, "start");
            ar(end, "end");
            ar(value, "value");
        }
    };

    struct SLipSyncData
    {
        std::vector<SMouthCue> mouthCues;
        void Serialize(Serialization::IArchive& ar) { ar(mouthCues, "mouthCues"); }
    };
}

class CLipSyncComponent final : public IEntityComponent
{
public:
    CLipSyncComponent() = default;
    virtual ~CLipSyncComponent() = default;

    // IEntityComponent overrides
    static void ReflectType(Schematyc::CTypeDesc<CLipSyncComponent>& desc);
    virtual void Initialize() override;
    virtual Cry::Entity::EventFlags GetEventMask() const override;
    virtual void ProcessEvent(const SEntityEvent& event) override;

    // Public API
    void StartSpeech(const char* jsonPath);
    void StopSpeech();

private:
    void UpdateFace(float deltaTime);
    const char* GetCC3MorphName(const string& rhubarbValue);

    LipSync::SLipSyncData m_data;
    float m_timer = 0.0f;
    bool m_isSpeaking = false;
    
    // Cached pointer to animation component
    Cry::DefaultComponents::CAdvancedAnimationComponent* m_pAnimComp = nullptr;
};