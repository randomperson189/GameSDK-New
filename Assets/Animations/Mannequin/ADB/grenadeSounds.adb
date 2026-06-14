<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade+FP">
    <ProcLayer>
     <Blend ExitTime="0.044564486" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_grenade_select_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_grenade_select_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </select>
  <throw>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade+FP">
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_grenade_throw_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.10000002" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_throw" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_grenade_throw_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.099999905" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_throw" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </throw>
  <prime>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_grenade_unlock_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fol_gear" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <ProcLayer>
     <Blend ExitTime="0.20000005" StartTime="0" Duration="1.4901161e-08"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_grenade_unlock_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </prime>
  <pickedup>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_pickup_explosive_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_pickup_explosive_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </pickedup>
 </FragmentList>
</AnimDB>
