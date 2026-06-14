<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <SubADBs>
  <SubADB Tags="SDKRifle+forceFeedback" File="Animations/Mannequin/ADB/rifleFFEvents.adb"/>
 </SubADBs>
 <FragmentList>
  <rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+rapid">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilshot_rifle_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle+shoulder">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_recoilshot_rifle_weapon_1p_01" flags="Loop" speed="2"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilshot_rifle_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </rapid_fire>
  <stop_rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer />
   </Fragment>
  </stop_rapid_fire>
  <idle>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idlepose_rifle_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </idle>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilshot_rifle_weapon_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </fire>
  <reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle" FragTags="ammo_empty">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadempty_rifle_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadfull_rifle_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </reload>
  <leave_modify>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle"/>
  </leave_modify>
  <change_firemode>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle">
    <AnimLayer />
   </Fragment>
  </change_firemode>
  <friendly_leave>
   <Fragment BlendOutDuration="0.2" Tags="SDKRifle"/>
  </friendly_leave>
  <weapon_lower_leave>
   <Fragment BlendOutDuration="0.2" Tags=""/>
  </weapon_lower_leave>
 </FragmentList>
 <FragmentBlendList>
  <Blend from="melee_multipart" to="idle">
   <Variant from="SDKRifle" to="SDKRifle">
    <Fragment BlendOutDuration="0.2" selectTime="0.66509211" enterTime="0">
     <AnimLayer>
      <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
      <Animation name="stand_tac_idlePose_rifle_weapon_1p_01" flags="Loop"/>
      <Blend ExitTime="0.14470351" StartTime="0" Duration="0.2"/>
     </AnimLayer>
    </Fragment>
   </Variant>
  </Blend>
 </FragmentBlendList>
</AnimDB>
