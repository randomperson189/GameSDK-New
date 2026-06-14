<AnimDB FragDef="Animations/Mannequin/ADB/turretActions.xml" TagDef="Animations/Mannequin/ADB/turretTags.xml">
 <FragmentList>
  <Idle>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="turret_idle_01" flags="Loop" speed="0.2"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="1.63"/>
     <Procedural type="TurretAimPose">
      <ProceduralParams>
       <Animation value="turret_aimposes_01"/>
       <BlendTime value="0"/>
       <Layer value="4"/>
       <HorizontalAimSmoothTime value="0.40000001"/>
       <VerticalAimSmoothTime value="0.1"/>
       <MaxYawDegreesSecond value="180"/>
       <MaxPitchDegreesSecond value="50"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </Idle>
 </FragmentList>
</AnimDB>
