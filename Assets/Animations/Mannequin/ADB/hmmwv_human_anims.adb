<AnimDB FragDef="Animations/Mannequin/ADB/hmmwv_fragments.xml" TagDef="Animations/Mannequin/ADB/hmmwv_tags.xml">
 <FragmentList>
  <EnterDoorDriver>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="hmmwv_passenger01Enter_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
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
  </EnterDoorDriver>
  <EnterDoorPassenger1>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="hmmwv_passenger02Enter_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
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
  </EnterDoorPassenger1>
  <IdleDriver>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="hmmwv_steering_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
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
  <ExitDoorDriver>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="hmmwv_passenger01Exit_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
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
  </ExitDoorDriver>
  <EnterDoorPassenger2>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="hmmwv_passenger03Enter_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
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
  </EnterDoorPassenger2>
  <EnterDoorPassenger3>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="hmmwv_passenger04Enter_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
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
  </EnterDoorPassenger3>
  <IdlePassenger1>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="hmmwv_passenger02Idle_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </IdlePassenger1>
  <IdlePassenger2>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="hmmwv_passenger03Idle_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </IdlePassenger2>
  <IdlePassenger3>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="hmmwv_passenger04Idle_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </IdlePassenger3>
  <ExitDoorPassenger1>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="hmmwv_passenger02Exit_01"/>
    </AnimLayer>
   </Fragment>
  </ExitDoorPassenger1>
  <ExitDoorPassenger2>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="hmmwv_passenger03Exit_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
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
  </ExitDoorPassenger2>
  <ExitDoorPassenger3>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="hmmwv_passenger04Exit_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
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
  </ExitDoorPassenger3>
 </FragmentList>
</AnimDB>
