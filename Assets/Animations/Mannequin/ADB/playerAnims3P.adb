<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <SubADBs>
  <SubADB Tags="aiming" File="Animations/Mannequin/ADB/aimAnims3P.adb"/>
  <SubADB Tags="SDKPistol" File="Animations/Mannequin/ADB/pistolAnims3P.adb"/>
  <SubADB Tags="SDKRifle" File="Animations/Mannequin/ADB/rifleAnims3P.adb"/>
  <SubADB Tags="SDKShotgun" File="Animations/Mannequin/ADB/shotgunAnims3P.adb"/>
  <SubADB Tags="SDKGrenade" File="Animations/Mannequin/ADB/grenadeAnims3P.adb"/>
  <SubADB Tags="SDKRocketLauncher" File="Animations/Mannequin/ADB/rocketlauncherAnims3P.adb"/>
  <SubADB Tags="SDKHMG" File="Animations/Mannequin/ADB/hmgAnims3P.adb"/>
  <SubADB Tags="slaveHuman" File="Animations/Mannequin/ADB/humanSlaveAnims3P.adb"/>
 </SubADBs>
 <FragmentList>
  <stop_rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags=""/>
  </stop_rapid_fire>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="pick1h+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_small_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="pick2h+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_medium_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <melee_multipart>
   <Fragment BlendOutDuration="0.2" Tags="swim" FragTags="into">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_melee_nw_1p_01"/>
    </AnimLayer>
   </Fragment>
  </melee_multipart>
  <MotionIdle>
   <Fragment BlendOutDuration="0.2" Tags="nw+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_idle_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="cover_tac_idle_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="heavy+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_idle_heavy_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="cover_tac_idle_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_idle_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="pick1h+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="pick2h+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="cover_tac_idle_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="heavy">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_heavy_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="cover_tac_idle_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionIdle>
  <MotionTurn>
   <Fragment BlendOutDuration="0.2" Tags="nw+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_stepRot_nw_3p_01"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="heavy+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_stepRot_heavy_3p_01"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="cover_tac_idle_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_heavy_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_idle_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_steprot_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="heavy">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stepRot_heavy_3p_01"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="cover_tac_idle_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_heavy_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionTurn>
  <MotionMovement>
   <Fragment BlendOutDuration="0.2" Tags="swim+forward+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.63999999"/>
     <Animation name="swim_tac_fwdfast_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="pick1h+nw+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_walk_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="pick2h+nw+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_walk_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim+forward">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.63999999"/>
     <Animation name="swim_tac_fwd_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim+backward">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.65000004"/>
     <Animation name="swim_tac_bwd_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim+right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.67000008"/>
     <Animation name="swim_tac_strafeunderwater_nw_rgt_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim+left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.56999999"/>
     <Animation name="swim_tac_strafeunderwater_nw_lft_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="heavy+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_walk_heavy_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_heavy_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="nw+crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_walk_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_idle_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="pick1h+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="pick2h+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="nw+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_ow_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_nw_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="heavy">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_heavy_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_heavy_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionMovement>
  <MotionJump>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_jump_start_idle_rifle_3p_01"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_jump_fall_idle_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionJump>
  <MotionInAir>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_jump_fall_idle_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </MotionInAir>
  <slide>
   <Fragment BlendOutDuration="0.2" Tags="nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_baseloop_gren_aim_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_baseloop_rifle_aim_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </slide>
  <ledgeGrab>
   <Fragment BlendOutDuration="0.2" Tags="nw" FragTags="floor+vault+up">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_vaultup_frag_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams>
       <ParamName value=""/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
       <CollisionCheck value="false"/>
       <CollisionParams>
        <MaxAdjustmentSpeed value="0"/>
        <HeightOffset value="0"/>
        <HeightMult value="0"/>
        <WidthMult value="0"/>
       </CollisionParams>
       <UpdateLocation value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="nw" FragTags="fall+vault+over">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.5" Duration="0.1"/>
     <Animation name="stand_tac_vaultfwd_frag_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams>
       <ParamName value=""/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
       <CollisionCheck value="false"/>
       <CollisionParams>
        <MaxAdjustmentSpeed value="0"/>
        <HeightOffset value="0"/>
        <HeightMult value="0"/>
        <WidthMult value="0"/>
       </CollisionParams>
       <UpdateLocation value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="nw" FragTags="fall+vault+up">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.5" Duration="0.1"/>
     <Animation name="stand_tac_vaultup_frag_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams>
       <ParamName value=""/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
       <CollisionCheck value="false"/>
       <CollisionParams>
        <MaxAdjustmentSpeed value="0"/>
        <HeightOffset value="0"/>
        <HeightMult value="0"/>
        <WidthMult value="0"/>
       </CollisionParams>
       <UpdateLocation value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="nw" FragTags="floor+vault+over">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_vaultfwd_frag_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams>
       <ParamName value=""/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
       <CollisionCheck value="false"/>
       <CollisionParams>
        <MaxAdjustmentSpeed value="0"/>
        <HeightOffset value="0"/>
        <HeightMult value="0"/>
        <WidthMult value="0"/>
       </CollisionParams>
       <UpdateLocation value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="fall+vault+over">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.5" Duration="0.1"/>
     <Animation name="stand_tac_vaultfwd_rifle_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams>
       <ParamName value=""/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
       <CollisionCheck value="false"/>
       <CollisionParams>
        <MaxAdjustmentSpeed value="0"/>
        <HeightOffset value="0"/>
        <HeightMult value="0"/>
        <WidthMult value="0"/>
       </CollisionParams>
       <UpdateLocation value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="fall+vault+up">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0.5" Duration="0.1"/>
     <Animation name="stand_tac_vaultup_rifle_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams>
       <ParamName value=""/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
       <CollisionCheck value="false"/>
       <CollisionParams>
        <MaxAdjustmentSpeed value="0"/>
        <HeightOffset value="0"/>
        <HeightMult value="0"/>
        <WidthMult value="0"/>
       </CollisionParams>
       <UpdateLocation value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="floor+vault+up">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_vaultup_rifle_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams>
       <ParamName value=""/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
       <CollisionCheck value="false"/>
       <CollisionParams>
        <MaxAdjustmentSpeed value="0"/>
        <HeightOffset value="0"/>
        <HeightMult value="0"/>
        <WidthMult value="0"/>
       </CollisionParams>
       <UpdateLocation value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="floor+vault+over">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_vaultfwd_rifle_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.15000001"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams>
       <ParamName value=""/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
       <CollisionCheck value="false"/>
       <CollisionParams>
        <MaxAdjustmentSpeed value="0"/>
        <HeightOffset value="0"/>
        <HeightMult value="0"/>
        <WidthMult value="0"/>
       </CollisionParams>
       <UpdateLocation value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="endCrouched">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ledge_tac_pullup_jump_crouched_1p_sp_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams>
       <Offset>
        <Element value="0"/>
        <Element value="0.55500001"/>
        <Element value="1.835"/>
       </Offset>
       <Yaw value="0"/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ledge_tac_pullup_jump_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams>
       <Offset>
        <Element value="0"/>
        <Element value="0.55500001"/>
        <Element value="1.835"/>
       </Offset>
       <Yaw value="0"/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </ledgeGrab>
  <interact>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="KickDoor">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_kick_door_3p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustTargetLocator">
      <ProceduralParams>
       <TargetScopeName value="SlaveObject"/>
       <TargetJointName value="player_align"/>
       <TargetStateName value=""/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="KickDoor">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_opendoorpunch_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustTargetLocator">
      <ProceduralParams>
       <TargetScopeName value="SlaveObject"/>
       <TargetJointName value="player_align"/>
       <TargetStateName value=""/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </interact>
  <LadderClimb>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="left+up">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ladder_stand_climb_1p_up_lft_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="right+up">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ladder_stand_climb_1p_up_rgt_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="left+down">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ladder_stand_climb_1p_down_lft_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="right+down">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ladder_stand_climb_1p_down_rgt_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="loop+up">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ladder_stand_climb_1p_up_01" flags="Loop" speed="0"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LayerManualUpdate">
      <ProceduralParams>
       <ParamName value="LadderFraction"/>
       <ScopeLayer value="0"/>
       <Invert value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="leftIdle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ladder_stand_climb_1p_idle_lft_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="rightIdle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ladder_stand_climb_1p_idle_rgt_01"/>
    </AnimLayer>
   </Fragment>
  </LadderClimb>
  <LadderGetOff>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="left+up">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ladder_stand_climb_1p_off_top_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="right+up">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ladder_stand_climb_1p_off_top_rgt_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="down">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ladder_stand_climb_1p_off_01"/>
    </AnimLayer>
   </Fragment>
  </LadderGetOff>
  <LadderGetOn>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="right+down">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ladder_stand_climb_1p_on_top_rgt_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="left+down">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ladder_stand_climb_1p_on_top_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="up">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="ladder_stand_climb_1p_on_01"/>
    </AnimLayer>
   </Fragment>
  </LadderGetOn>
  <animationControlled>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="HeavyLand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_jumps_land_fwd_nw_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="KickLargeObject">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_kick_door_3p_01" speed="2"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams>
       <Offset>
        <Element value="0"/>
        <Element value="0"/>
        <Element value="0"/>
       </Offset>
       <Yaw value="0"/>
       <IgnoreRotation value="false"/>
       <IgnorePosition value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="" FragTags="KnockDown">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_hit_knockdown_1p_01" speed="0.80000001"/>
    </AnimLayer>
   </Fragment>
  </animationControlled>
  <hitDeath>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+StandingStancesAndCrouch+Legs+HighVelocityHitTypes+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_hVel_leg_any_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+StandingStancesAndCrouch+HighVelocityHitTypes+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_hVel_torso_bwd_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+StandingStancesAndCrouch+HighVelocityHitTypes+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_avel_torso_bwd_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+StandingStancesAndCrouch+HighVelocityHitTypes+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_hVel_torso_lft_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+StandingStancesAndCrouch+HighVelocityHitTypes+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_hVel_torso_rgt_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+StandingStancesAndCrouch+HighVelocityHitTypes+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_avel_torso_fwd_04"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+StandingStancesAndCrouch+HighVelocityHitTypes+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_avel_torso_fwd_11"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_back+md_forward+StandingStances+Legs+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_aVel_legs_bwd_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_left+md_forward+StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_aVel_torso_lft_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_left+md_forward+StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_aVel_torso_lft_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_right+md_forward+StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_aVel_torso_rgt_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_right+md_forward+StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_aVel_torso_rgt_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_back+md_forward+StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_aVel_torso_bwd_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+md_forward+StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_torso_bwd_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+md_forward+StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_torso_bwd_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+StandingStances+Groin+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_pelvis_bwd_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+STANCE_CROUCH+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_death_proj_mVel_torso_bwd_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_torso_bwd_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="so_behind+StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_torso_bwd_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="md_forward+mike_burn+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_micro_any_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="md_forward+mike_burn+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_micro_any_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="punishFall+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_fall_any_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="mike_burn+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_misc_micro_any_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="mike_burn+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_misc_micro_any_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="md_forward+StandingStances+Head+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_avel_head_any_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="md_forward+StandingStances+Head+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_avel_head_any_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="md_forward+StandingStances+Legs+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_aVel_legs_any_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="md_forward+StandingStances+Legs+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_aVel_legs_any_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="md_forward+StandingStances+Legs+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_aVel_legs_any_03"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="md_forward+StandingStances+Legs+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_loco_aVel_legs_any_04"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+LeftLeg+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_legL_any_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+RightLeg+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_legR_any_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+Head+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_head_any_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+Head+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_head_any_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+Head+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_head_any_03"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+Groin+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_pelvis_any_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_torso_fwd_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_torso_fwd_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_torso_fwd_03"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_torso_fwd_04"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP" FragTags="StandingStances+death">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_proj_mVel_torso_fwd_05"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SP">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Ragdoll">
      <ProceduralParams>
       <Sleep value="0"/>
       <Stiffness value="2"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </hitDeath>
  <grabObjectSimple>
   <Fragment BlendOutDuration="0.2" Tags="pick1h+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_select_small_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="pick2h+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_select_medium_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </grabObjectSimple>
  <throwObjectSimple>
   <Fragment BlendOutDuration="0.2" Tags="pick1h+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_throw_small_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="pick2h+nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_throw_medium_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </throwObjectSimple>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="MotionIdle" to="MotionMovement">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="MotionTurn" to="MotionTurn">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" startTime="-0.30000001" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="MotionTurn" to="MotionMovement">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="-0.1" startTime="-0.96000004" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.26999998" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="MotionMovement" to="MotionIdle">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="MotionMovement" to="MotionMovement">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.5" flags="TimeWarping"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="ledgeGrab" to="MotionIdle">
   <Variant from="" to="SDKRifle+crouch">
    <Fragment BlendOutDuration="0.2" selectTime="0.77999997" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="SDKRifle">
    <Fragment BlendOutDuration="0.2" selectTime="0.77999997" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="-1" StartTime="0" Duration="0.38000011"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>
