<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+weaponMounted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilmounted_hmg_shoulder_weapon_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilloop_hmg_shoulder_weapon_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </rapid_fire>
  <stop_rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+weaponMounted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.079999998"/>
     <Animation name="stand_tac_recoilendmounted_hmg_shoulder_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.029999999"/>
     <Animation name="stand_tac_recoilend_hmg_shoulder_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </stop_rapid_fire>
  <idle>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_hmg_weapon_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idle>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+localClient+forceFeedback">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="ForceFeedback">
      <ProceduralParams CryXmlVersion="2" ForceFeedbackID="weaponfiresingleheavy" Scale="1" Delay="0" OnlyLocal="true"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </fire>
  <rip_off>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_ripoff_hmg_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </rip_off>
 </FragmentList>
</AnimDB>
