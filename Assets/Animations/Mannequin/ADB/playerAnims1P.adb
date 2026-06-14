<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <SubADBs>
  <SubADB Tags="SDKPistol" File="Animations/Mannequin/ADB/pistolAnims1P.adb"/>
  <SubADB Tags="SDKRifle" File="Animations/Mannequin/ADB/rifleAnims1P.adb"/>
  <SubADB Tags="SDKShotgun" File="Animations/Mannequin/ADB/shotgunAnims1P.adb"/>
  <SubADB Tags="SDKGrenade" File="Animations/Mannequin/ADB/grenadeAnims1P.adb"/>
  <SubADB Tags="SDKRocketLauncher" File="Animations/Mannequin/ADB/rocketlauncherAnims1P.adb"/>
  <SubADB Tags="SDKHMG" File="Animations/Mannequin/ADB/hmgAnims1P.adb"/>
  <SubADB Tags="SDKC4" File="Animations/Mannequin/ADB/c4Anims1P.adb"/>
  <SubADB Tags="slaveHuman" File="Animations/Mannequin/ADB/humanSlaveAnims1P.adb"/>
  <SubADB File="Animations/Mannequin/ADB/ladderAnims1P.adb">
   <FragmentID Name="LadderClimb"/>
   <FragmentID Name="LadderGetOff"/>
   <FragmentID Name="LadderGetOn"/>
  </SubADB>
  <SubADB Tags="swim" File="Animations/Mannequin/ADB/swimAnims1P.adb"/>
  <SubADB File="Animations/Mannequin/ADB/interactAnims1P.adb">
   <FragmentID Name="interact"/>
  </SubADB>
  <SubADB File="Animations/Mannequin/ADB/animcontrolAnims1P.adb">
   <FragmentID Name="animationControlled"/>
  </SubADB>
 </SubADBs>
 <FragmentList>
  <idle_break>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlebreak_rifle_shoulder_add_1p_02"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlebreak_rifle_shoulder_add_1p_03"/>
    </AnimLayer>
   </Fragment>
  </idle_break>
  <idlePose>
   <Fragment BlendOutDuration="0.2" Tags="nw">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_idle_nw_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idlePose>
  <FPNone>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
   </Fragment>
  </FPNone>
  <friendly_leave>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_fromfriendly_rifle_add_1p_01"/>
    </AnimLayer>
   </Fragment>
  </friendly_leave>
  <weapon_lower_leave>
   <Fragment BlendOutDuration="0.2" Tags=""/>
  </weapon_lower_leave>
  <ledgeGrab>
   <Fragment BlendOutDuration="0.2" Tags="sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_highvaultup_frag_sprint_1p_add_01"/>
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
   <Fragment BlendOutDuration="0.2" Tags="sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_vaultup_frag_sprint_1p_add_01"/>
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
   <Fragment BlendOutDuration="0.2" Tags="MP">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.0099999998"/>
     <Animation name="ledge_tac_pullup_jump_1p_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.25999996"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0.48500001" z="1.829"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_highvaultup_frag_1p_add_01"/>
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
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.02"/>
     <Animation name="stand_tac_vaultup_frag_1p_add_01"/>
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
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ledge_tac_pullup_jump_crouched_1p_sp_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.25999996"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0.48500001" z="1.329"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="ledge_tac_pullup_jump_1p_sp_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.25999996"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="0" y="0.48500001" z="1.829"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </ledgeGrab>
  <hitDeath>
   <Fragment BlendOutDuration="0.2" Tags="SP+FP">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_death_front_1p_01"/>
    </AnimLayer>
   </Fragment>
  </hitDeath>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="" to="idlePose">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="select" to="deselect">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="deselect" to="select">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="idlePose" to="">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="idlePose" to="idlePose">
   <Variant from="" to="iron">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="iron" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="reflex">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="reflex" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="assault">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="assault" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="sniper">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="sniper" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="idlePose" to="slide">
   <Variant from="" to="SDKRifle">
    <Fragment BlendOutDuration="0.2" selectTime="1.8" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="stand_tac_toslide_rifle_aim_1p_01"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="" to="SDKPistol">
    <Fragment BlendOutDuration="0.2" selectTime="1.8" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="stand_tac_toslide_pistol_aim_1p_01"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="slide" to="idlePose">
   <Variant from="SDKRifle" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0.96999979" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="slide_tac_torun_rifle_aim_1p_01"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
   <Variant from="SDKPistol" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0.96999979" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="slide_tac_torun_pistol_aim_1p_01"/>
      <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
  <Blend from="ledgeGrab" to="idlePose">
   <Variant from="" to="">
    <Fragment BlendOutDuration="0.2" selectTime="0" startTime="-0.15639544" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.19251198"/>
     </AnimLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
     <ProcLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     </ProcLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>
