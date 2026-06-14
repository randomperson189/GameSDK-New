<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+shoulder">
    <AnimLayer />
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="WeaponRecoil">
      <ProceduralParams CryXmlVersion="2" DampStrength="7.5" FireRecoilTime="0.050000001" FireRecoilStrengthFirst="3" FireRecoilStrength="0.5" AngleRecoilStrength="0" Randomness="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer />
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0099999998"/>
     <Procedural type="WeaponRecoil">
      <ProceduralParams CryXmlVersion="2" DampStrength="7.5" FireRecoilTime="0.050000001" FireRecoilStrengthFirst="0.5" FireRecoilStrength="0.1" AngleRecoilStrength="0" Randomness="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </rapid_fire>
  <stop_rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilEnd_proc_rifle_iron_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+assault">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilEnd_proc_rifle_iron_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+sniper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilEnd_proc_rifle_iron_add_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilEnd_proc_rifle_shoulder_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </stop_rapid_fire>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_rifle_shoulder_add_1p_01" speed="1.25"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_select_rifle_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_deselect_rifle_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
  <idle>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle"/>
  </idle>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+shoulder">
    <AnimLayer />
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="WeaponRecoil">
      <ProceduralParams CryXmlVersion="2" DampStrength="25" FireRecoilTime="0.050000001" FireRecoilStrengthFirst="2" FireRecoilStrength="0.5" AngleRecoilStrength="0" Randomness="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+iron">
    <AnimLayer />
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="WeaponRecoil">
      <ProceduralParams CryXmlVersion="2" DampStrength="7.5" FireRecoilTime="0.050000001" FireRecoilStrengthFirst="0.5" FireRecoilStrength="0.1" AngleRecoilStrength="0" Randomness="0"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </fire>
  <reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="ammo_empty">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadempty_rifle_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.36000001"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="2" zoomTransitionAngle="0">
       <Position x="0" y="0" z="0"/>
       <Rotation>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="3.01" StartTime="0" Duration="0.2"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadfull_rifle_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.32999998"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="2" zoomTransitionAngle="0">
       <Position x="0" y="0" z="0"/>
       <Rotation>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="1.58" StartTime="0" Duration="0.34000003"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </reload>
  <begin_reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadto_rifle_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </begin_reload>
  <reload_shell>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadloop_rifle_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.32999998"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="2" zoomTransitionAngle="0">
       <Position x="0" y="0" z="0"/>
       <Rotation>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.88" StartTime="0" Duration="0.34000003"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </reload_shell>
  <exit_reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadfromempty_rifle_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.32999998"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="2" zoomTransitionAngle="0">
       <Position x="0" y="0" z="0"/>
       <Rotation>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0.69999999" StartTime="0" Duration="0.34000003"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadfrom_rifle_add_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.32999998"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="2" zoomTransitionAngle="0">
       <Position x="0" y="0" z="0"/>
       <Rotation>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
     <Blend ExitTime="0" StartTime="0" Duration="0.14000003"/>
     <Procedural type=""/>
    </ProcLayer>
   </Fragment>
  </exit_reload>
  <enter_modify>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer />
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="0" zoomTransitionAngle="0">
       <Position x="0.034076001" y="0.18106399" z="-0.0079739997"/>
       <Rotation>
        <element element="35.12455"/>
        <element element="29.920429"/>
        <element element="55.013981"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.31"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="2" zoomTransitionAngle="0">
       <Position x="-0.050000001" y="-0.2" z="-0.5"/>
       <Rotation>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </enter_modify>
  <change_firemode>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_modeswitchfull_proc_rifle_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </change_firemode>
  <idlePose>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+shoulder+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_rifle_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.0051199999" StartTime="0" Duration="0.40000001"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="0" zoomTransitionAngle="0">
       <Position x="0" y="0.15000001" z="-0.059999999"/>
       <Rotation>
        <element element="-11"/>
        <element element="5"/>
        <element element="20"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.21999997"/>
     <Procedural type="WeaponSway">
      <ProceduralParams CryXmlVersion="2" EaseFactorInc="5.25" EaseFactorDec="10" StrafeScopeFactor="0" RotateScopeFactor="0" VelocityInterpolationMultiplier="0" VelocityLowPassFilter="5" AccelerationSmoothing="1.2" AccelerationFrontAugmentation="6" VerticalVelocityScale="0.80000001" SprintCameraAnimation="0">
       <LookOffset x="0" y="0"/>
       <HorizLookRot>
        <element element="0"/>
        <element element="5"/>
        <element element="0"/>
       </HorizLookRot>
       <VertLookRot>
        <element element="0"/>
        <element element="1"/>
        <element element="1"/>
       </VertLookRot>
       <StrafeOffset x="0.5" y="0" z="6"/>
       <SideStrafeRot>
        <element element="0"/>
        <element element="1.75"/>
        <element element="0"/>
       </SideStrafeRot>
       <FrontStrafeRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </FrontStrafeRot>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+shoulder">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     <Animation name="stand_tac_idlepose_rifle_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.0051199999" StartTime="0" Duration="0.2"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="0" zoomTransitionAngle="0">
       <Position x="0.0075869998" y="0.0060669999" z="-0.0034950001"/>
       <Rotation>
        <element element="0.87414497"/>
        <element element="-5.269012"/>
        <element element="0.037645001"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.21999997"/>
     <Procedural type="WeaponSway">
      <ProceduralParams CryXmlVersion="2" EaseFactorInc="5.25" EaseFactorDec="10" StrafeScopeFactor="0" RotateScopeFactor="0" VelocityInterpolationMultiplier="0" VelocityLowPassFilter="5" AccelerationSmoothing="1.2" AccelerationFrontAugmentation="6" VerticalVelocityScale="0.80000001" SprintCameraAnimation="0">
       <LookOffset x="0" y="0"/>
       <HorizLookRot>
        <element element="0"/>
        <element element="5"/>
        <element element="0"/>
       </HorizLookRot>
       <VertLookRot>
        <element element="0"/>
        <element element="1"/>
        <element element="1"/>
       </VertLookRot>
       <StrafeOffset x="0.5" y="0" z="6"/>
       <SideStrafeRot>
        <element element="0"/>
        <element element="1.75"/>
        <element element="0"/>
       </SideStrafeRot>
       <FrontStrafeRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </FrontStrafeRot>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_rifle_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="1" zoomTransitionAngle="28.64789">
       <Position x="-0.059959002" y="-0.044241" z="-0.000114"/>
       <Rotation>
        <element element="1.052796"/>
        <element element="1.910136"/>
        <element element="0.130417"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeaponSway">
      <ProceduralParams CryXmlVersion="2" EaseFactorInc="5.25" EaseFactorDec="10" StrafeScopeFactor="0" RotateScopeFactor="0" VelocityInterpolationMultiplier="0" VelocityLowPassFilter="5" AccelerationSmoothing="1.2" AccelerationFrontAugmentation="6" VerticalVelocityScale="0.80000001" SprintCameraAnimation="0">
       <LookOffset x="0" y="0"/>
       <HorizLookRot>
        <element element="-1.5"/>
        <element element="0.1"/>
        <element element="0"/>
       </HorizLookRot>
       <VertLookRot>
        <element element="0"/>
        <element element="0.2"/>
        <element element="0.2"/>
       </VertLookRot>
       <StrafeOffset x="0.1" y="0" z="0.5"/>
       <SideStrafeRot>
        <element element="0"/>
        <element element="0.5"/>
        <element element="0"/>
       </SideStrafeRot>
       <FrontStrafeRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </FrontStrafeRot>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+assault">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_rifle_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="1" zoomTransitionAngle="0">
       <Position x="-0.061000001" y="0" z="-0.0037499999"/>
       <Rotation>
        <element element="0"/>
        <element element="2.25"/>
        <element element="0.075000003"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeaponSway">
      <ProceduralParams CryXmlVersion="2" EaseFactorInc="0" EaseFactorDec="0" StrafeScopeFactor="0" RotateScopeFactor="0" VelocityInterpolationMultiplier="0" VelocityLowPassFilter="0" AccelerationSmoothing="0" AccelerationFrontAugmentation="0" VerticalVelocityScale="0" SprintCameraAnimation="0">
       <LookOffset x="0" y="0"/>
       <HorizLookRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </HorizLookRot>
       <VertLookRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </VertLookRot>
       <StrafeOffset x="0" y="0" z="0"/>
       <SideStrafeRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </SideStrafeRot>
       <FrontStrafeRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </FrontStrafeRot>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+sniper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_rifle_shoulder_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="1" zoomTransitionAngle="0">
       <Position x="-0.0612" y="-0.025" z="-0.0085000005"/>
       <Rotation>
        <element element="1"/>
        <element element="2.25"/>
        <element element="0.075000003"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeaponSway">
      <ProceduralParams CryXmlVersion="2" EaseFactorInc="0" EaseFactorDec="0" StrafeScopeFactor="0" RotateScopeFactor="0" VelocityInterpolationMultiplier="0" VelocityLowPassFilter="0" AccelerationSmoothing="0" AccelerationFrontAugmentation="0" VerticalVelocityScale="0" SprintCameraAnimation="0">
       <LookOffset x="0" y="0"/>
       <HorizLookRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </HorizLookRot>
       <VertLookRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </VertLookRot>
       <StrafeOffset x="0" y="0" z="0"/>
       <SideStrafeRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </SideStrafeRot>
       <FrontStrafeRot>
        <element element="0"/>
        <element element="0"/>
        <element element="0"/>
       </FrontStrafeRot>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </idlePose>
  <FPIdle>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+shoulder">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_proc_rifle_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_proc_rifle_shoulder_add_1p_01" flags="Loop" speed="0.5" weight="0.2"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+assault">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_proc_rifle_shoulder_add_1p_01" flags="Loop" speed="0.80000001" weight="0.30000001"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+sniper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_proc_rifle_shoulder_add_1p_01" flags="Loop" speed="0.60000002" weight="0.2"/>
    </AnimLayer>
   </Fragment>
  </FPIdle>
  <FPMovement>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+shoulder+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_sprint_rifle_fwd_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+shoulder">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_proc_rifle_shoulder_add_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_proc_rifle_shoulder_add_1p_01" flags="Loop" speed="0.75" weight="0.1"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+assault">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_proc_rifle_shoulder_add_1p_01" flags="Loop" speed="0.69999999" weight="0.2"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+sniper">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_proc_rifle_shoulder_add_1p_01" flags="Loop" speed="0.60000002" weight="0.2"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_proc_rifle_shoulder_add_1p_01" flags="Loop" speed="0.75" weight="0.2"/>
    </AnimLayer>
   </Fragment>
  </FPMovement>
  <bump>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.029999981"/>
     <Procedural type="WeaponBump">
      <ProceduralParams CryXmlVersion="2" Time="0.69999999" Shift="0.029999999" Rotation="3"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </bump>
  <friendly_enter>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer />
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="0" zoomTransitionAngle="0">
       <Position x="0.015" y="0" z="-0.029999999"/>
       <Rotation>
        <element element="-5.739583"/>
        <element element="2.665035"/>
        <element element="2.364306"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </friendly_enter>
  <weapon_lower_enter>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer />
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.55000001"/>
     <Procedural type="WeaponPose">
      <ProceduralParams CryXmlVersion="2" poseType="0" zoomTransitionAngle="0">
       <Position x="0.136756" y="0.047456998" z="0.016938999"/>
       <Rotation>
        <element element="-24.560255"/>
        <element element="-9.3542099"/>
        <element element="54.48159"/>
       </Rotation>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </weapon_lower_enter>
  <slide>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_loop_rifle_aim_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_aimleft_rifle_aim_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="slide_tac_aimright_rifle_aim_add_1p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="ManualUpdateList">
      <ProceduralParams CryXmlVersion="2" ParamName="SlideFactor" ScopeLayer="1" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </slide>
  <ledgeGrab>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_vaultup_rifle_sprint_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.39999992"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.039999999"/>
     <Animation name="stand_tac_highvaultup_rifle_sprint_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.39999992"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_vaultup_rifle_sprint_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.39999992"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.039999999"/>
     <Animation name="stand_tac_highvaultup_rifle_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.39999992"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_vaultup_rifle_1p_add_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.15000001" StartTime="0" Duration="0.39999992"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </ledgeGrab>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="enter_modify" to="leave_modify">
   <Variant from="SDKRifle" to="SDKRifle">
    <Fragment BlendOutDuration="0.2" selectTime="0.1500001" enterTime="1.0570698e+33">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.31000006"/>
      <Procedural type=""/>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.29999995"/>
      <Procedural type=""/>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="weapon_lower_enter" to="weapon_lower_leave">
   <Variant from="SDKRifle" to="SDKRifle">
    <Fragment BlendOutDuration="0.2" selectTime="0.079999924" enterTime="1.0570698e+33">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.68000007"/>
      <Procedural type=""/>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Procedural type=""/>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="MotionMovement" to="MotionMovement">
   <Variant from="SDKRifle+MP+sprint" to="SDKRifle+MP">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="SDKRifle" to="SDKRifle+sprint">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.30000001"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="SDKRifle+sprint" to="SDKRifle">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.40000001"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>
