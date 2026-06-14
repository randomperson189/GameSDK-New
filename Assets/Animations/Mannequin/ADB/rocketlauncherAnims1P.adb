<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_rpg_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_select_jaw_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_deselect_rpg_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoil_rpg_iron_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </fire>
  <drop>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_drop_rpg_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </drop>
  <idlePose>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+shoulder">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_jaw_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_rpg_iron_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idlePose>
  <FPIdle>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+shoulder">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="stand_tac_idle_proc_rifle_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_rifle_iron_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </FPIdle>
  <FPMovement>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+shoulder+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.60000002"/>
     <Animation name="stand_tac_sprint_rpg_fwd_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+shoulder">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_rpg_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="stand_tac_run_rpg_iron_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </FPMovement>
  <slide>
   <Fragment BlendOutDuration="0.2" Tags="SDKRocketLauncher">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_loop_rpg_aim_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_aimleft_rpg_aim_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_aimright_rpg_aim_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="ManualUpdateList">
      <ProceduralParams CryXmlVersion="2" ParamName="SlideFactor" ScopeLayer="1" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </slide>
 </FragmentList>
</AnimDB>
