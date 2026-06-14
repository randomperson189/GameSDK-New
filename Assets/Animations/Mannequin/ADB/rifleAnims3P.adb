<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_melee_rifle_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <melee_multipart>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="into">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_melee_rifle_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </melee_multipart>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="primary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_rgt_select_rifle_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="secondary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_lft_select_rifle_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="primary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_rgt_deselect_rifle_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="secondary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_lft_deselect_rifle_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
  <reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="ammo_empty">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadempty_rifle_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadfull_rifle_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </reload>
  <change_firemode>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_modeswitchfull_rifle_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </change_firemode>
  <MotionIdle>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_idle_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponPose_rifleAim_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+assault">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="stand_tac_idle_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="stand_tac_combatpose_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+sniper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="stand_tac_idle_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="stand_tac_combatpose_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionIdle>
  <MotionTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_steprot_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_steprot_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponPose_rifleAim_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+assault">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_steprot_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_combatpose_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+sniper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_steprot_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponPose_rifleAim_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stepRot_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionTurn>
  <MotionMovement>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_walk_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponPose_rifleAim_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+sniper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="1"/>
     <Animation name="stand_tac_combatpose_walk_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+assault">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="1"/>
     <Animation name="stand_tac_combatpose_walk_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionMovement>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="MotionMovement" to="slide">
   <Variant from="SDKRifle" to="SDKRifle">
    <Fragment BlendOutDuration="0.2" selectTime="1.5232" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="stand_tac_toslide_rifle_3p_01"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="slide" to="MotionIdle">
   <Variant from="SDKRifle" to="SDKRifle">
    <Fragment BlendOutDuration="0.2" selectTime="0.75" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="slide_tac_torun_rifle_aim_3p_01"/>
      <Blend ExitTime="0.34759998" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>
