<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_sth_melee_pistol_flag_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_pistol_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <melee_multipart>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="into">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0092347413"/>
     <Animation name="stand_tac_meleemp_into_pistol_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_meleemp_hit_pistol_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="miss">
    <AnimLayer>
     <Blend ExitTime="0.00014411518" StartTime="0" Duration="0.0014338568"/>
     <Animation name="stand_tac_meleemp_miss_pistol_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </melee_multipart>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+SP" FragTags="first">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_selectFirst_hammer_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_select_hammer_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_deselect_pistol_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
  <idle>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol"/>
  </idle>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+shoulder+flag">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_recoil_pistol_flag_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_recoil_pistol_iron_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoil_pistol_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </fire>
  <reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag" FragTags="ammo_empty">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadEmpty_pistol_flag_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadFull_pistol_flag_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="ammo_empty">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadempty_pistol_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadfull_pistol_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </reload>
  <enter_modify>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_toidleattach_pistol_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </enter_modify>
  <leave_modify>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_fromidleattach_pistol_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </leave_modify>
  <idlePose>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+shoulder+flag">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_pistol_flag_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+shoulder+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="stand_tac_idlePose_hammer_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+shoulder">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="stand_tac_idlePose_hammer_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="stand_tac_idlePose_pistol_iron_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idlePose>
  <FPIdle>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+shoulder+flag">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_pistol_flag_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlePose_pistol_iron_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_pistol_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </FPIdle>
  <FPSway>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_dwn_pistol_flag_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_up_pistol_flag_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_rgt_pistol_flag_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_lft_pistol_flag_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeightedList">
      <ProceduralParams CryXmlVersion="2" ParamName="SwayParams" ScopeLayer="0" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_dwn_pistol_iron_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_up_pistol_iron_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_rgt_pistol_iron_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_lft_pistol_iron_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeightedList">
      <ProceduralParams CryXmlVersion="2" ParamName="SwayParams" ScopeLayer="0" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_dwn_pistol_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_up_pistol_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_rgt_pistol_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_look_lft_pistol_shoulder_add_1p_01" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_sprint_pistol_flag_fwd_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_pistol_flag_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_pistol_iron_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_sprint_pistol_shoulder_fwd_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_pistol_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </FPMovement>
  <bump>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_land_pistol_add_1p_01"/>
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
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_tofriendly_pistol_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </friendly_enter>
  <friendly_leave>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_fromfriendly_pistol_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </friendly_leave>
  <weapon_lower_enter>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_tolowered_pistol_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </weapon_lower_enter>
  <weapon_lower_leave>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_fromlowered_pistol_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </weapon_lower_leave>
  <slide>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_loop_pistol_aim_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_aimleft_pistol_aim_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_aimright_pistol_aim_add_1p_01" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag+sprint" FragTags="vault+high">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_highvaultup_pistol_flag_sprint_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.568582"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag+sprint" FragTags="vault">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_vaultup_pistol_flag_sprint_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.57016301"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag" FragTags="vault+high">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_highvaultup_pistol_flag_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.558752"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag" FragTags="vault">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_vaultup_pistol_flag_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.562029"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_highvaultup_pistol_sprint_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.39999992"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_vaultup_pistol_sprint_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.39999992"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_highvaultup_pistol_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.39999992"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_vaultup_pistol_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.39999992"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </ledgeGrab>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="MotionMovement" to="MotionMovement">
   <Variant from="SDKPistol+MP+sprint" to="SDKPistol+MP">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.11"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="SDKPistol" to="SDKPistol+sprint">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="SDKPistol+sprint" to="SDKPistol">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>
