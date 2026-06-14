<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <SubADBs>
  <SubADB Tags="SDKPistol" File="Animations/Mannequin/ADB/pistolSounds.adb"/>
  <SubADB Tags="SDKRifle" File="Animations/Mannequin/ADB/rifleSounds.adb"/>
  <SubADB Tags="SDKShotgun" File="Animations/Mannequin/ADB/shotgunSounds.adb"/>
  <SubADB Tags="SDKGrenade" File="Animations/Mannequin/ADB/grenadeSounds.adb"/>
 </SubADBs>
 <FragmentList>
  <rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+rapid+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_hmg_fire_fire_loop_fp" StopTrigger="Play_w_hmg_fire_fire_tail_fp" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+rapid">
    <ProcLayer>
     <Blend ExitTime="0.040265322" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_hmg_fire_fire_loop_3p" StopTrigger="Play_w_hmg_fire_fire_tail_3p" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </rapid_fire>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_melee_fire_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_melee" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_melee_fire_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_melee" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </melee>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rocketlauncher_select_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <ProcLayer>
     <Blend ExitTime="0.099999905" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rocketlauncher_select_3p" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_rocketlauncher_deselect_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rocketlauncher_deselect_fp" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </deselect>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rocketlauncher_fire_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rocketlauncher_fire_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </fire>
  <empty_clip>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rocketlauncher_dryfire_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+FP">
    <ProcLayer>
     <Blend ExitTime="0.037500001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_hmg_fire_dryfire_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rocketlauncher_dryfire_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <ProcLayer>
     <Blend ExitTime="0.037500001" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_hmg_fire_dryfire_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </empty_clip>
  <pickedup>
   <Fragment BlendOutDuration="0.2" Tags="FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_pickup_weapon_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_pickup_weapon_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </pickedup>
  <pickedup_ammo>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_pickup_ammo_large_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_pickup_ammo_large_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </pickedup_ammo>
  <zoom_in>
   <Fragment BlendOutDuration="0.2" Tags="FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_ironsight_on_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_ironsight_on_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </zoom_in>
  <zoom_out>
   <Fragment BlendOutDuration="0.2" Tags="FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_ironsight_off_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_ironsight_off_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </zoom_out>
  <zoom_lean>
   <Fragment BlendOutDuration="0.2" Tags="FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_ironsight_lean_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_global_ironsight_lean_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="2" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </zoom_lean>
  <shot_last_bullet>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rocketlauncher_dryfire_fp" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_w_rocketlauncher_dryfire_3p" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </shot_last_bullet>
  <FPIdle>
   <Fragment BlendOutDuration="0.2" Tags="FP+iron">
    <ProcLayer>
     <Blend ExitTime="0.1" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_breath_focus" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </FPIdle>
  <FPMovement>
   <Fragment BlendOutDuration="0.2" Tags="FP+sprint">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_breath_run" StopTrigger="Stop_c_player_fbk_breath_run" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </FPMovement>
  <MotionJump>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fol_jump_on" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_jump" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </MotionJump>
  <slide>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fol_slide_start" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0.003377676" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_effort" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fol_slide_loop" StopTrigger="Play_c_player_fol_slide_stop" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </slide>
  <hitDeath>
   <Fragment BlendOutDuration="0.2" Tags="FP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_death" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_death" StopTrigger="" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </hitDeath>
  <throwObjectSimple>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fol_throw_generic" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="Audio">
      <ProceduralParams CryXmlVersion="2" StartTrigger="Play_c_player_fbk_throw" StopTrigger="do_nothing" AudioParameter="" AudioParameterValue="0" OcclusionType="ignore_state_name" AttachmentJoint="" Radius="0" IsVoice="false" PlayFacial="false" SoundFlags="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </throwObjectSimple>
 </FragmentList>
</AnimDB>
