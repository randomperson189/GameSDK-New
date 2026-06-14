<AnimDB FragDef="Animations/Mannequin/ADB/humanActions.xml" TagDef="Animations/Mannequin/ADB/humanTags.xml">
 <FragmentList>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_pistol_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_pistol_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="primary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_rgt_select_pistol_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="secondary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_lft_select_pistol_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="primary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_rgt_deselect_pistol_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="secondary">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_lft_deselect_pistol_stowing_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
  <Motion_Idle>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Alerted+NotAiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_pistol_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Stand+NotAiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_pistol_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Aiming">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.12"/>
     <Animation name="stand_tac_idle_pistol_3p_01"/>
    </AnimLayer>
   </Fragment>
  </Motion_Idle>
  <Motion_Move>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Crouch">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="crouch_tac_walk_pistol_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Animation name="stand_tac_weaponpose_pistol_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_move_pistol_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_pistol_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Move>
  <RA_flinch>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_flinch_pistol_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_flinch_pistol_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_flinch>
  <RA_surprised>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+AlertedOrStand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_idle_sightedsurprise_pistol_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </RA_surprised>
  <ZZ_AI_SideStepLeft>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_reactjumplft_pistol_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_reactjumplft_pistol_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </ZZ_AI_SideStepLeft>
  <ZZ_AI_SideStepRight>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Stand">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_reactjumprgt_pistol_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+Alerted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_reactjumprgt_pistol_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </ZZ_AI_SideStepRight>
  <BlendRagdoll>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_standup_pistol_back_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="blendOut+standup">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_standup_pistol_stomach_3p_01"/>
    </AnimLayer>
   </Fragment>
  </BlendRagdoll>
 </FragmentList>
</AnimDB>
