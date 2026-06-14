<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_gren_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <melee_multipart>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade" FragTags="into">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_melee_gren_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </melee_multipart>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade" FragTags="primary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_rgt_select_grenade_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_lft_select_grenade_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <throw>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_throw_gren_shoulder_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </throw>
  <hold>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_cook_gren_shoulder_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </hold>
  <prime>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_pin_gren_shoulder_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </prime>
  <MotionIdle>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade+nw+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_idle_gren_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_gren_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionIdle>
  <MotionTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_stepRot_gren_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stepRot_gren_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionTurn>
 </FragmentList>
</AnimDB>
