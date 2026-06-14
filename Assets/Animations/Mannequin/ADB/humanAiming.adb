<AnimDB FragDef="Animations/Mannequin/ADB/humanActions.xml" TagDef="Animations/Mannequin/ADB/humanTags.xml">
 <FragmentList>
  <CODE_MT_slideIntoCoverLong>
   <Fragment BlendOutDuration="0.2" Tags="Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
     <Blend ExitTime="0.47999999" StartTime="0" Duration="0.30999967"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </CODE_MT_slideIntoCoverLong>
  <CODE_MT_slideIntoCoverLongSide>
   <Fragment BlendOutDuration="0.2" Tags="Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0099999607"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
     <Blend ExitTime="0.47999999" StartTime="0" Duration="0.30999967"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </CODE_MT_slideIntoCoverLongSide>
  <CODE_MT_slideIntoCoverShort>
   <Fragment BlendOutDuration="0.2" Tags="Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0099999607"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
     <Blend ExitTime="0.28" StartTime="0" Duration="0.20999976"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </CODE_MT_slideIntoCoverShort>
  <CODE_MT_slideIntoCoverShortSide>
   <Fragment BlendOutDuration="0.2" Tags="Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.019999966"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
     <Blend ExitTime="0.28" StartTime="0" Duration="0.20999976"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </CODE_MT_slideIntoCoverShortSide>
  <CoverAction>
   <Fragment BlendOutDuration="0.2" Tags="Scope_Aiming" FragTags="CoverMidPeek">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="Scope_Aiming" FragTags="CoverLftPeek">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="Scope_Aiming" FragTags="CoverRgtPeek">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </CoverAction>
  <AI_NoticeDeadBodyAndTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed+Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0.38000003"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand+Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0.40000001" StartTime="0" Duration="0.29999939"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </AI_NoticeDeadBodyAndTurn>
  <AI_NoticeSoundAndTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand+Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.25999999"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed+Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0.51999998" StartTime="0" Duration="0.50999999"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </AI_NoticeSoundAndTurn>
  <AI_NoticeVisualThreatAndTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed+Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0.51999998" StartTime="0" Duration="0.50999999"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand+Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0.5" StartTime="0" Duration="0.25999999"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </AI_NoticeVisualThreatAndTurn>
  <AI_NoticeBulletRainAndTurn>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+AlertedOrStand+Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0.50999999" StartTime="0" Duration="0.2"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+Relaxed+Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0.70999998" StartTime="0" Duration="0.42000002"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </AI_NoticeBulletRainAndTurn>
  <Aiming>
   <Fragment BlendOutDuration="0.2" Tags="Aiming+Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.28"/>
     <Procedural type="Aiming">
      <ProceduralParams CryXmlVersion="2"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="NotAiming+Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.34999999"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="Scope_Aiming">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </Aiming>
 </FragmentList>
</AnimDB>
