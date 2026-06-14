<AnimDB FragDef="Animations/Mannequin/ADB/humanActions.xml" TagDef="Animations/Mannequin/ADB/humanTags.xml">
 <FragmentList>
  <ZZ_coverLft_AI_stepOutOfCover>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="coverhigh_tac_idletoclearcaution_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </ZZ_coverLft_AI_stepOutOfCover>
  <ZZ_coverLftThrowGrenade>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_grenadethrow_lft_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </ZZ_coverLftThrowGrenade>
  <Motion_Idle>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_idle_rifle_lft_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_idle_rifle_rgt_01" flags="Loop"/>
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
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="coverhigh_tac_idletoclearcaution_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </ZZ_coverRgt_AI_stepOutOfCover>
  <ZZ_coverRgtThrowGrenade>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_grenadethrow_rgt_3p_01" flags="DisableMultilayer"/>
    </AnimLayer>
   </Fragment>
  </ZZ_coverRgtThrowGrenade>
  <Motion_Move>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft+Moving">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_walklft" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight+Moving">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_walkrgt" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_walklft" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_walkrgt" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_weaponpose_rifle_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Motion_Move>
  <Motion_IdleTurn>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_idle_rifle_lft_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_idle_rifle_rgt_01"/>
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
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_idle_rifle_lft_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_idle_rifle_rgt_01"/>
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
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft" FragTags="CoverMidBlind+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.1" StartTime="0" Duration="0.30000007"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft" FragTags="CoverMidBlind+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight" FragTags="CoverMidBlind+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.3" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight" FragTags="CoverMidBlind+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft" FragTags="CoverMidPeek+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.1" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft" FragTags="CoverMidPeek+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight" FragTags="CoverMidPeek+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.3" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight" FragTags="CoverMidPeek+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft" FragTags="CoverMidShoot+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idleshoot_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.80000001" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft" FragTags="CoverMidShoot+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idleshoot_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight" FragTags="CoverMidShoot+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idleshoot_com_rgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight" FragTags="CoverMidShoot+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idleshoot_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverLftBlind+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1" StartTime="0" Duration="0.32000005"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverLftBlind+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverLftPeek+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.22" StartTime="0" Duration="0.12000012"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverLftPeek+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverLftShoot+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idleshoot_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.89999998" StartTime="0" Duration="0.11000001"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverLftShoot+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idleshoot_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverRgtBlind+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.3" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverRgtBlind+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverRgtPeek+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.27" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverRgtPeek+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverRgtShoot+so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idleshoot_com_rgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.98000002" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverRgtShoot+so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idleshoot_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft+NoGait" FragTags="so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.22" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft+NoGait" FragTags="so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight+NoGait" FragTags="so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.3" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight+NoGait" FragTags="so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft" FragTags="so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.2" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft" FragTags="so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_lft_hit_back_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="CompromiseCover">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight" FragTags="so_ahead+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_front_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="1.3" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight" FragTags="so_behind+CoverStances+hit">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="coverhigh_idlebasic_com_rgt_hit_back_01"/>
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
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="ToCoverLftShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_toshoot_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="ToCoverRgtShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_toshoot_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="ToCoverLftPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_topeek_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="ToCoverRgtPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_topeek_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="ToCoverLftBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_toblind_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="ToCoverRgtBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_toblind_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
   </Fragment>
  </CoverActionIn>
  <CoverActionOut>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="FromCoverLftShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_fromshoot_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.47104001" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="FromCoverRgtShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_fromshoot_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.47104001" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="FromCoverLftPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_frompeek_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="FromCoverRgtPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_frompeek_rifle_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="FromCoverLftBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_fromblind_rifle_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="FromCoverRgtBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_fromblind_rifle_rgt_01" flags="FullRootPriority"/>
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
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverLftShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverhigh_tac_idleshoot_rifle_lft_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverRgtShoot">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverhigh_tac_idleshoot_rifle_rgt_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverLftPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverhigh_tac_idlepeek_rifle_lft_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverRgtPeek">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverhigh_tac_idlepeek_rifle_rgt_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverLftBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverhigh_tac_idleblind_rifle_lft_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh" FragTags="CoverRgtBlind">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.69999999"/>
     <Animation name="coverhigh_tac_idleblind_rifle_rgt_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </CoverAction>
  <CoverBodyDirectionChange>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverLeft" FragTags="ToCoverRgt">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_transidle_rifle_lft_to_rgt_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.375" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="CoverHigh+CoverRight" FragTags="ToCoverLft">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="coverhigh_tac_transidle_rifle_rgt_to_lft_01" flags="FullRootPriority"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.39731199" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPosContinuously">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </CoverBodyDirectionChange>
 </FragmentList>
</AnimDB>
