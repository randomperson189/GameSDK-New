<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+rapid+silencer+FP">
    <ProcLayer>
     <Blend ExitTime="0.0099999905" StartTime="0" Duration="0.049676195"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_silencer_loop_fp" StopTrigger="Play_w_rifle_silencer_loop_tail_fp" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+rapid+silencer">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_silencer_loop_3p" StopTrigger="Play_w_rifle_silencer_loop_tail_3p" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+rapid+FP">
    <ProcLayer>
     <Blend ExitTime="0.0099999905" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_fire_loop_fp" StopTrigger="Play_w_rifle_fire_loop_tail_fp" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+rapid">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_fire_loop_3p" StopTrigger="Play_w_rifle_fire_loop_tail_3p" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </rapid_fire>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_select_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_hand_on_gun_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_select_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_hand_on_gun_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_select_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_deselect_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </deselect>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+single+silencer+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_silencer_single_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+single+silencer">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_silencer_single_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+single+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_fire_single_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="200" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+single">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_fire_single_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="200" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </fire>
  <reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+FP" FragTags="ammo_empty">
    <ProcLayer>
     <Blend ExitTime="0.23991416" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_rifle_grab_clip_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.30408579" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_clip_out_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.71199995" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_clip_in_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.57400012" StartTime="0" Duration="0.15999985"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_cock_forward_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.28025925" StartTime="0" Duration="0.1500001"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_cock_back_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="2.2602594" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_hand_on_gun_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+FP">
    <ProcLayer>
     <Blend ExitTime="0.23991416" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_rifle_grab_clip_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.30408579" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_clip_out_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.71199995" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_clip_in_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="1.9200001" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_hand_on_gun_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="ammo_empty">
    <ProcLayer>
     <Blend ExitTime="0.23991416" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_rifle_grab_clip_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.30408579" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_clip_out_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.71199995" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_clip_in_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.57400012" StartTime="0" Duration="0.15999985"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_cock_forward_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.28025925" StartTime="0" Duration="0.1500001"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_cock_back_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="2.2602594" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_hand_on_gun_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <ProcLayer>
     <Blend ExitTime="0.23152556" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_rifle_grab_clip_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.31247443" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_clip_out_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
     <Blend ExitTime="0.71199995" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_clip_in_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </reload>
  <change_firemode>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_switch_firemode_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_switch_firemode_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </change_firemode>
  <empty_clip>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_dryfire_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_dryfire_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </empty_clip>
  <pickedup_ammo>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_pickup_ammo_medium_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_pickup_ammo_medium_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="1" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </pickedup_ammo>
  <shot_last_bullet>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_dryfire_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rifle_dryfire_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </shot_last_bullet>
 </FragmentList>
</AnimDB>
