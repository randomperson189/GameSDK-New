<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_select_gren_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <idle>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade+move">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_run_gren_weapon_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade+sprint">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_sprint_gren_weapon_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_gren_weapon_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idle>
  <prime>
   <Fragment BlendOutDuration="0.2" Tags="SDKGrenade">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_pin_gren_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </prime>
 </FragmentList>
</AnimDB>
