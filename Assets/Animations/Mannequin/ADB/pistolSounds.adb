<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+FP" FragTags="first">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_select_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_cocking_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_select_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_select_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_cocking_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_select_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_deselect_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </deselect>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+silencer+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_silencer_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+silencer">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_silencer_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_fire_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="200" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_fire_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="200" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </fire>
  <reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+FP">
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_mag_out_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.43199998" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_mag_in_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <ProcLayer>
     <Blend ExitTime="0.2" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_mag_out_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.43199998" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_mag_in_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </reload>
  <empty_clip>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_dryfire_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_dryfire_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </empty_clip>
  <pickedup_ammo>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_pickup_ammo_small_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_pickup_ammo_small_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </pickedup_ammo>
  <shot_last_bullet>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_cock_slide_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_pistol_cock_slide_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </shot_last_bullet>
 </FragmentList>
</AnimDB>
