<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+weaponMounted+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilmounted_hmg_iron_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="hud recoil_1p" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+weaponMounted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilmounted_hmg_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="hud recoil_1p" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.090000004"/>
     <Animation name="stand_tac_recoilloop_hmg_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="hud recoil_1p" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </rapid_fire>
  <stop_rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+weaponMounted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.050000001"/>
     <Animation name="stand_tac_recoilendmounted_hmg_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_recoilend_hmg_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </stop_rapid_fire>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_hmg_add_1p_01" speed="1.1"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <melee_multipart>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG" FragTags="into">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0099999998"/>
     <Animation name="stand_tac_melee_hmg_add_1p_01" speed="1.2"/>
    </AnimLayer>
   </Fragment>
  </melee_multipart>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_select_hmg_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_drop_hmg_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+localClient"/>
  </fire>
  <enter_modify>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_toidleattach_hmg_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </enter_modify>
  <leave_modify>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_fromidleattach_hmg_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </leave_modify>
  <rip_off>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_ripoff_hmg_1p_01"/>
    </AnimLayer>
   </Fragment>
  </rip_off>
  <idlePose>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+weaponMounted+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idleposemounted_hmg_iron_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+weaponMounted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idleposemounted_hmg_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_hmg_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idlePose>
  <FPIdle>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+weaponDetached">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_hmg_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </FPIdle>
  <FPSway>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+weaponDetached">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_dwn_hmg_shoulder_add_1p_01" flags="Loop" weight="0.5"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_up_hmg_shoulder_add_1p_01" flags="Loop" weight="0.5"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_rgt_hmg_shoulder_add_1p_01" flags="Loop" weight="0.5"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_lft_hmg_shoulder_add_1p_01" flags="Loop" weight="0.5"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeightedList">
      <ProceduralParams CryXmlVersion="2" ParamName="SwayParams" ScopeLayer="0" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </FPSway>
  <FPMovement>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_sprint_hmg_fwd_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_hmg_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </FPMovement>
  <bump>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_land_hmg_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="LayerWeight">
      <ProceduralParams CryXmlVersion="2" LayerWeightParam="fall_factor" ScopeLayer="0" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </bump>
  <friendly_enter>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_tofriendly_rifle_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </friendly_enter>
  <weapon_lower_enter>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_tolowered_hmg_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </weapon_lower_enter>
  <weapon_lower_leave>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_fromlowered_hmg_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </weapon_lower_leave>
  <ledgeGrab>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG" FragTags="vault">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.029999999"/>
     <Animation name="stand_tac_vaultup_heavy_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </ledgeGrab>
 </FragmentList>
</AnimDB>
