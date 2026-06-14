<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_shotgun_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <melee_multipart>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun" FragTags="into">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_melee_rifle_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </melee_multipart>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun" FragTags="primary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_rgt_select_shotgun_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun" FragTags="secondary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_lft_select_shotgun_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun" FragTags="primary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_rgt_deselect_shotgun_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun" FragTags="secondary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_lft_deselect_shotgun_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoil_shotgun_iron_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoil_shotgun_shoulder_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </fire>
  <begin_reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadto_shotgun_add_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1" StartTime="0" Duration="0"/>
     <Procedural type="SwapHand">
      <ProceduralParams />
     </Procedural>
    </ProcLayer>
   </Fragment>
  </begin_reload>
  <reload_shell>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_reloadloop_shotgun_add_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="SwapHand">
      <ProceduralParams />
     </Procedural>
    </ProcLayer>
   </Fragment>
  </reload_shell>
  <exit_reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun" FragTags="ammo_empty">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadfromempty_shotgun_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadfrom_shotgun_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </exit_reload>
  <change_firemode>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_modeswitchfull_rifle_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </change_firemode>
  <MotionIdle>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_idle_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifleaim_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionIdle>
  <MotionTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_steprot_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponadjustpose_shotgun_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_steprot_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponadjustpose_shotgun_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionTurn>
  <MotionMovement>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_walk_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponadjustpose_shotgun_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKShotgun">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponadjustpose_shotgun_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_shotgun_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionMovement>
 </FragmentList>
</AnimDB>
