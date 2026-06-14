<AnimDB FragDef="Animations/Mannequin/ADB/humanActions.xml" TagDef="Animations/Mannequin/ADB/humanTags.xml">
 <FragmentList>
  <pre_fire>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_grenadethrow_midlft_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_grenadethrow_midrgt_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </pre_fire>
  <ZZ_coverLft_AI_stepOutOfCover>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="coverhigh_tac_idletoclearcaution_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </ZZ_coverLft_AI_stepOutOfCover>
  <ZZ_coverLftThrowGrenade>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_grenadethrow_lft_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </ZZ_coverLftThrowGrenade>
  <Motion_Idle>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_idle_rifle_lft_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.10000001"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_idle_rifle_rgt_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Motion_Idle>
  <ZZ_coverRgt_AI_stepOutOfCover>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="coverhigh_tac_idletoclearcaution_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </ZZ_coverRgt_AI_stepOutOfCover>
  <ZZ_coverRgtThrowGrenade>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_grenadethrow_rgt_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </ZZ_coverRgtThrowGrenade>
  <Motion_Move>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft+Moving">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_walklft" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight+Moving">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_walkrgt" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_walklft" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_walkrgt" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Move>
  <Motion_IdleTurn>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_idle_rifle_lft_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_idle_rifle_rgt_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Motion_IdleTurn>
  <Motion_IdleTurnBig>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_idle_rifle_lft_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_idle_rifle_rgt_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Motion_IdleTurnBig>
  <hitDeath>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="CoverMidBlind+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblind_com_midlft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.55000001" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="CoverMidBlind+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblind_com_midlft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="CoverMidBlind+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblindpeekshoot_com_midrgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="CoverMidBlind+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblind_com_midrgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="CoverMidPeek+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idlepeek_com_midlft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.91000003" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="CoverMidPeek+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idlepeek_com_midlft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="CoverMidPeek+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblindpeekshoot_com_midrgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="CoverMidPeek+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idlepeek_com_midrgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="CoverMidShoot+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleshoot_com_midlft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="CoverMidShoot+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleshoot_com_midlft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="CoverMidShoot+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblindpeekshoot_com_midrgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="CoverMidShoot+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleshoot_com_midrgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverLftBlind+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblindpeek_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.14" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverLftBlind+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblind_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverLftPeek+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblindpeek_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.2" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverLftPeek+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idlepeek_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverLftShoot+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleshoot_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.46" StartTime="0" Duration="0.19000006"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverLftShoot+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleshoot_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverRgtBlind+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleshootblindpeek_com_rgt_hit_front_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverRgtBlind+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idlepeekblind_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverRgtPeek+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleshootblindpeek_com_rgt_hit_front_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverRgtPeek+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idlepeekblind_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverRgtShoot+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleshoot_com_rgt_hit_front_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverRgtShoot+so_behind+CoverStances">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleshoot_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft+NoGait" FragTags="so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblind_com_midlft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.60000002" StartTime="0" Duration="0.13"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft+NoGait" FragTags="so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblind_com_midlft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight+NoGait" FragTags="so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblindpeekshoot_com_midrgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight+NoGait" FragTags="so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblind_com_midrgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblind_com_midlft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.51999998" StartTime="0" Duration="0.22000003"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idlepeek_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idleblindpeekshoot_com_midrgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.18999994"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverlow_idlepeekblind_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </hitDeath>
  <CoverActionIn>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="ToCoverMidShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.20000003"/>
     <Animation name="coverlow_tac_toshoot_rifle_midlft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="ToCoverMidShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_toshoot_rifle_midrgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="ToCoverMidPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_topeek_rifle_midlft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="ToCoverMidPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_topeek_rifle_midrgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="ToCoverMidBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_toblind_rifle_midlft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="ToCoverMidBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_toblind_rifle_midrgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="ToCoverLftShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverLow_tac_toShoot_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="ToCoverRgtShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_toshoot_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="ToCoverLftPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_topeek_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="ToCoverRgtPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_topeek_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="ToCoverLftBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_toblind_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="ToCoverRgtBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_toblind_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CoverActionIn>
  <CoverActionOut>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="FromCoverMidShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_fromshoot_rifle_midlft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="FromCoverMidShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_fromshoot_rifle_midrgt_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.22499999" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="FromCoverMidPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_frompeek_rifle_midlft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="FromCoverMidPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_frompeek_rifle_midrgt_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="FromCoverMidBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_fromblind_rifle_midlft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="FromCoverMidBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_fromblind_rifle_midrgt_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="FromCoverLftShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverLow_tac_fromShoot_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.278528" StartTime="0" Duration="0.16723207"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="FromCoverRgtShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_fromshoot_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.270336" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="FromCoverLftPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_frompeek_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="FromCoverRgtPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_frompeek_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="FromCoverLftBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_fromblind_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="FromCoverRgtBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_fromblind_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </CoverActionOut>
  <CoverAction>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="CoverMidShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idleshoot_rifle_midlft_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="CoverMidShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idleshoot_rifle_midrgt_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="CoverMidPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idlepeek_rifle_midlft_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="CoverMidPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idlepeek_rifle_midrgt_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="CoverMidBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idleblind_rifle_midlft_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="CoverMidBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idleblind_rifle_midrgt_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverLftShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idleshoot_rifle_lft_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverRgtShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idleshoot_rifle_rgt_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverRgtPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idlepeek_rifle_rgt_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverLftPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idlepeek_rifle_lft_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverLftBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idleblind_rifle_lft_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow" FragTags="CoverRgtBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverlow_tac_idleblind_rifle_rgt_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </CoverAction>
  <CoverBodyDirectionChange>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverLeft" FragTags="ToCoverRgt">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_transidle_rifle_lft_to_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.625" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverLow+CoverRight" FragTags="ToCoverLft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverlow_tac_transidle_rifle_rgt_to_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </CoverBodyDirectionChange>
 </FragmentList>
</AnimDB>
