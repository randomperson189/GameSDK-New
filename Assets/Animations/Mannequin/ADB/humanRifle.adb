<AnimDB FragDef="Animations/Mannequin/ADB/humanActions.xml" TagDef="Animations/Mannequin/ADB/humanTags.xml">
 <FragmentList>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_rifle_3p_02" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_meleepush_fwd_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="primary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_rgt_select_rifle_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="secondary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
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
  <Motion_Idle>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NotAiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NotAiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NotAiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_shootidle_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NotAiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_shootidle_rifle_3p_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NotAiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_shootidlestressed_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_idle_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Aiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.12"/>
     <Animation name="stand_tac_idle_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Aiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Aiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_shootidle_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Aiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_shootidle_rifle_3p_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Aiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_shootidle_rifle_3p_03"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Aiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_shootidlestressed_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </Motion_Idle>
  <Motion_Move>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="crouch_tac_walk_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Run">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Move>
  <RA_audioclear>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_alert_suspectaudioclear_rifle_1p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_alert_suspectaudioclear_rifle_1p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_audioclear>
  <RA_heargunfire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_suspectcomaudio_startmid_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_suspectcomaudio_startmid_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_heargunfire>
  <RA_heargunfire1>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_suspectcomaudio_starthigh_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_suspectcomaudio_starthigh_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_heargunfire1>
  <RA_suspected>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_idle_suspectaudio_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_suspected>
  <RA_suspected1>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_idle_suspectaudio_rifle_3p_02" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_suspected1>
  <RA_hearunknown>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_suspectaudio_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_suspectaudio_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_hearunknown>
  <RA_hearunknown1>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_suspectaudio_rifle_3p_02" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_suspectaudio_rifle_3p_02" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_hearunknown1>
  <RA_hearunknown2>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_suspectaudio_rifle_3p_03" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_suspectaudio_rifle_3p_03" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_hearunknown2>
  <RA_hearunknown3>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_suspectaudio_rifle_3p_04" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_suspectaudio_rifle_3p_04" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_hearunknown3>
  <RA_flinch>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_flinch_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_flinch_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_flinch>
  <RA_signalstop>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalstop_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalstop_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_signalstop>
  <RA_surprised>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_idle_sightedsurprise_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_surprised>
  <ZZ_AI_idleBreakBored>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idle_lookaround_rifle_3p_03"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idle_stretch_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idle_checkweapon_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idle_checkweapon_rifle_3p_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idle_checkweapon_rifle_3p_03"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idle_checkweapon_rifle_3p_04"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idle_cleaningweapon_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idle_lookaround_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idle_lookaround_rifle_3p_02"/>
    </AnimLayer>
   </Fragment>
  </ZZ_AI_idleBreakBored>
  <ZZ_AI_idleBreak>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idleshift_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idleshift_rifle_3p_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idlescratchnose_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="relaxed_tac_idlerubneck_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </ZZ_AI_idleBreak>
  <CODE_MT_idleToMove>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle2move_rifle_3p_01" flags="FullRootPriority"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_idleToMove>
  <CODE_MT_walkToIdle>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run2idle_rifle_3p_01"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_walkToIdle>
  <ZZ_AI_SideStepLeft>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_reactjumplft_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_reactjumplft_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </ZZ_AI_SideStepLeft>
  <ZZ_AI_SideStepRight>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_reactjumprgt_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_reactjumprgt_rifle_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </ZZ_AI_SideStepRight>
  <CODE_MT_runToIdle>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run2idle_rifle_3p_01"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </CODE_MT_runToIdle>
  <RA_advanceleft_ub>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_lft_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_lft_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_lft_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_lft_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_lft_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_lft_3p_01"/>
    </AnimLayer>
   </Fragment>
  </RA_advanceleft_ub>
  <RA_advanceright_ub>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_rgt_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_rgt_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_rgt_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_rgt_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_rgt_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signaladvanceub_rifle_rgt_3p_01"/>
    </AnimLayer>
   </Fragment>
  </RA_advanceright_ub>
  <RA_cometome_ub>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalcometomeub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalcometomeub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalcometomeub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </RA_cometome_ub>
  <RA_fanout_ub>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfanoutub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfanoutub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfanoutub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </RA_fanout_ub>
  <AI_SignalOthersToFollow_UB>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfollowub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfollowub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfollowub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfollowub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfollowub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfollowub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </AI_SignalOthersToFollow_UB>
  <AI_SignalOthersToStop_UB>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfreezeub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfreezeub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalfreezeub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </AI_SignalOthersToStop_UB>
  <RA_getdown_ub>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalgetdownub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalgetdownub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+Walk">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalgetdownub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalgetdownub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalgetdownub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalgetdownub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </RA_getdown_ub>
  <RA_searcharound_ub>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalsearcharoundub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalsearcharoundub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalsearcharoundub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </RA_searcharound_ub>
  <RA_stop_ub>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalstopub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalstopub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_signalstopub_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </RA_stop_ub>
  <RA_heargunfire_ub>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Stand+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_suspectcomaudio_startmid_rifle_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Alerted+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_suspectcomaudio_startmid_rifle_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Crouch+NoGait">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_suspectcomaudio_startmid_rifle_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </RA_heargunfire_ub>
  <AI_NoticeDeadBodyAndTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_flinch_rifle"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_flinchbig_rifle_3p_01"/>
     <Blend ExitTime="0.31" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_steprot_rifle_3p_01"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0.31" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </AI_NoticeDeadBodyAndTurn>
  <AI_NoticeDeadBody>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_idle_sightedsurprise_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </AI_NoticeDeadBody>
  <AI_NoticeMateBeingKilled>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_idle_sightedsurprise_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </AI_NoticeMateBeingKilled>
  <AI_NoticeSoundAndTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_flinch_rifle"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_flinchbig_rifle_3p_01"/>
     <Blend ExitTime="0.31" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_steprot_rifle_3p_01"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0.31" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </AI_NoticeSoundAndTurn>
  <AI_NoticeSound>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_idle_sightedsurprise_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </AI_NoticeSound>
  <AI_NoticeVisualThreatAndTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_flinch_rifle"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_flinchbig_rifle_3p_01"/>
     <Blend ExitTime="0.31" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_steprot_rifle_3p_01"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0.31" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </AI_NoticeVisualThreatAndTurn>
  <AI_NoticeGrenade>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_idle_sightedsurprise_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </AI_NoticeGrenade>
  <AI_NoticeBulletRainAndTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_flinch_rifle"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="alerted_tac_idle_flinchbig_rifle_3p_01"/>
     <Blend ExitTime="0.31" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_steprot_rifle_3p_01"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0.31" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </AI_NoticeBulletRainAndTurn>
  <BlendRagdoll>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_standup_rifle_stomach_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_standup_rifle_back_3p_01"/>
    </AnimLayer>
   </Fragment>
  </BlendRagdoll>
 </FragmentList>
</AnimDB>
