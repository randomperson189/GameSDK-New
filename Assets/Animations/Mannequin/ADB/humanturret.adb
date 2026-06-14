<AnimDB FragDef="Animations/Mannequin/ADB/turretActions.xml" TagDef="Animations/Mannequin/ADB/turretTags.xml">
 <FragmentList>
  <Idle>
   <Fragment BlendOutDuration="0.2" Tags="Hacked_InProgress+Scope_TurretUpper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.39999998"/>
     <Animation name="stand_com_hack_add_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="Hacked_InProgress">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="Scope_TurretAim">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="TurretAimPose">
      <ProceduralParams>
       <Animation value="stand_tac_aimposes_01"/>
       <BlendTime value="0"/>
       <Layer value="3"/>
       <HorizontalAimSmoothTime value="0.1"/>
       <VerticalAimSmoothTime value="0.1"/>
       <MaxYawDegreesSecond value="180"/>
       <MaxPitchDegreesSecond value="180"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Idle>
  <Dead>
   <Fragment BlendOutDuration="0.2" Tags="Scope_TurretAim">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="TurretAimPose">
      <ProceduralParams>
       <Animation value=""/>
       <BlendTime value="0"/>
       <Layer value="3"/>
       <HorizontalAimSmoothTime value="0.1"/>
       <VerticalAimSmoothTime value="0.1"/>
       <MaxYawDegreesSecond value="90"/>
       <MaxPitchDegreesSecond value="90"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="Scope_TurretUpper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.50999999"/>
     <Animation name="stand_com_hack_add_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Dead>
  <Undeployed>
   <Fragment BlendOutDuration="0.2" Tags="Scope_TurretAim">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="TurretAimPose">
      <ProceduralParams>
       <Animation value="stand_tac_aimposes_01"/>
       <BlendTime value="0"/>
       <Layer value="3"/>
       <HorizontalAimSmoothTime value="0.1"/>
       <VerticalAimSmoothTime value="0.1"/>
       <MaxYawDegreesSecond value="180"/>
       <MaxPitchDegreesSecond value="180"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="Scope_TurretUpper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.50999999"/>
     <Animation name="stand_com_hack_add_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </Undeployed>
  <PartiallyDeployed>
   <Fragment BlendOutDuration="0.2" Tags="Scope_TurretAim">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="TurretAimPose">
      <ProceduralParams>
       <Animation value="stand_tac_aimposes_01"/>
       <BlendTime value="0"/>
       <Layer value="3"/>
       <HorizontalAimSmoothTime value="0.1"/>
       <VerticalAimSmoothTime value="0.1"/>
       <MaxYawDegreesSecond value="180"/>
       <MaxPitchDegreesSecond value="180"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="Scope_TurretUpper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.50999999"/>
     <Animation name="stand_com_hack_add_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </PartiallyDeployed>
  <PrimaryWeapon>
   <Fragment BlendOutDuration="0.2" Tags="PrimaryWeapon_Firing+Scope_TurretPrimaryWeapon">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoil_add_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_beltfeed_add_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </PrimaryWeapon>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="Idle" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2" terminal="1"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type="Audio">
       <ProceduralParams>
        <StartTrigger value="sounds/w_turret:turret_functionality:deactivate"/>
        <StopTrigger value=""/>
        <AttachmentJoint value=""/>
        <Radius value="0"/>
        <IsVoice value="false"/>
        <PlayFacial value="false"/>
        <SoundFlags value="0"/>
       </ProceduralParams>
      </Procedural>
      <Blend ExitTime="0.6099999" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>
