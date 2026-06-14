<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_c4_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <melee_multipart>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4+outOfAmmo" FragTags="into">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_meleemp_into_c4_empty_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4+outOfAmmo" FragTags="miss">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.018874001"/>
     <Animation name="stand_tac_meleemp_miss_c4_empty_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4+outOfAmmo" FragTags="hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0049649999"/>
     <Animation name="stand_tac_meleemp_hit_c4_empty_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4" FragTags="into">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_meleemp_into_c4_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4" FragTags="miss">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.018874001"/>
     <Animation name="stand_tac_meleemp_miss_c4_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4" FragTags="hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0049649999"/>
     <Animation name="stand_tac_meleemp_hit_c4_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </melee_multipart>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4+outOfAmmo">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_select_c4_empty_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_select_c4_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_deselect_c4_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_fire_c4_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </fire>
  <intoPlant>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_intothrow_c4_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </intoPlant>
  <fromPlant>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_throwfrom_c4_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </fromPlant>
  <plant>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_throw_c4_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </plant>
  <idlePose>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4+outOfAmmo">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_c4_empty_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_c4_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idlePose>
  <FPIdle>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_c4_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </FPIdle>
  <FPSway>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4+outOfAmmo">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_dwn_c4_empty_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_up_c4_empty_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_rgt_c4_empty_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_lft_c4_empty_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeightedList">
      <ProceduralParams CryXmlVersion="2" ParamName="SwayParams" ScopeLayer="0" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_dwn_c4_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_up_c4_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_rgt_c4_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_lft_c4_shoulder_add_1p_01" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Tags="SDKC4+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_sprint_c4_fwd_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_c4_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </FPMovement>
  <bump>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_land_c4_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="LayerWeight">
      <ProceduralParams CryXmlVersion="2" LayerWeightParam="fall_factor" ScopeLayer="0" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </bump>
  <slide>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4+outOfAmmo">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_loop_c4_empty_aim_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_aimleft_gren_aim_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_aimright_gren_aim_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="ManualUpdateList">
      <ProceduralParams CryXmlVersion="2" ParamName="SlideFactor" ScopeLayer="1" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_loop_c4_aim_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_aimleft_gren_aim_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_aimright_gren_aim_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="ManualUpdateList">
      <ProceduralParams CryXmlVersion="2" ParamName="SlideFactor" ScopeLayer="1" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </slide>
  <ledgeGrab>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.029999999"/>
     <Animation name="stand_tac_vaultup_c4_sprint_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.56323498"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKC4">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.029999999"/>
     <Animation name="stand_tac_vaultup_c4_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.56651098"/>
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
