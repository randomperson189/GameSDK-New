<AnimDB FragDef="Animations/Mannequin/ADB/SpeedBoatFragments.xml" TagDef="Animations/Mannequin/ADB/SpeedBoatTags.xml">
 <FragmentList>
  <IdleDriver>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="rib_steering_3p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="LayerManualUpdate">
      <ProceduralParams>
       <ParamName value="steeringTime"/>
       <ScopeLayer value="0"/>
       <Invert value="false"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </IdleDriver>
  <IdlePassenger1>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="hmmwv_steering_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </IdlePassenger1>
  <IdlePassenger2>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="hmmwv_steering_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </IdlePassenger2>
  <IdlePassenger3>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="hmmwv_steering_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </IdlePassenger3>
  <IdlePassenger4>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="hmmwv_steering_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </IdlePassenger4>
 </FragmentList>
</AnimDB>
