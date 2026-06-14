<AnimDB FragDef="animations/mannequin/adb/mannequin_workshop/workshop_setup_finished/workshop_actions.xml" TagDef="animations/mannequin/adb/mannequin_workshop/workshop_setup_finished/workshop_global_tags.xml">
 <FragmentList>
  <Idle>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_idle_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Idle>
  <Upperbody_Detail>
   <Fragment BlendOutDuration="0.2" Tags="scope_upperbody">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_lookaround_rifle_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags=""/>
  </Upperbody_Detail>
  <OfficerListen>
   <Fragment BlendOutDuration="0.2" Tags="context_slave">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="relaxed_tac_officerlistening_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </OfficerListen>
  <Synced_Animation>
   <Fragment BlendOutDuration="0.2" Tags="scope_slave+context_slave">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_salute_rifle_3p_02"/>
     <Blend ExitTime="1.9999999" StartTime="0" Duration="1.2"/>
     <Animation name="relaxed_tac_idle_look180_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="context_slave">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.89999998"/>
     <Animation name="relaxed_tac_idle_drink_rifle_3p_01"/>
    </AnimLayer>
   </Fragment>
  </Synced_Animation>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="Idle" to="OfficerListen">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.67359996"/>
      <Animation name="relaxed_tac_idle_saluteofficer_rifle_3p_01"/>
      <Blend ExitTime="2.4208002" StartTime="0" Duration="0.67359972" terminal="1"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>
