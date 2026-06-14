<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <idlePose>
   <Fragment BlendOutDuration="0.2" Tags="swim">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_idlePose_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idlePose>
  <FPIdle>
   <Fragment BlendOutDuration="0.2" Tags="swim">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_idle_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </FPIdle>
  <FPMovement>
   <Fragment BlendOutDuration="0.2" Tags="swim+forward+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_fwdfast_underwater_nw_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim+backward">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_bwd_nw_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim+right">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_strafeunderwater_nw_rgt_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim+left">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_strafeunderwater_nw_lft_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="swim+forward">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="swim_tac_fwd_nw_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </FPMovement>
 </FragmentList>
</AnimDB>
