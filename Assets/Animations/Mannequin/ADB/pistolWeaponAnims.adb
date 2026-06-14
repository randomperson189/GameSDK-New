<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <SubADBs>
  <SubADB Tags="SDKPistol+forceFeedback" File="Animations/Mannequin/ADB/pistolFFEvents.adb"/>
 </SubADBs>
 <FragmentList>
  <melee_multipart>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="into+ammo_clipRemaining">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_selectclosed_pistol_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="into+ammo_last1">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_selectclosed_pistol_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="hit"/>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="miss"/>
  </melee_multipart>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+SP+FP" FragTags="first">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_select_pistol_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="ammo_empty">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_selectopen_pistol_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_selectclosed_pistol_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <idle>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_idle_pistol_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </idle>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag" FragTags="ammo_clipRemaining">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_recoil_pistol_shoulder_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+flag">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_recoilend_pistol_shoulder_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+iron" FragTags="ammo_clipRemaining">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_recoil_pistol_iron_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_recoilend_pistol_iron_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="ammo_clipRemaining">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_recoil_pistol_shoulder_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_recoilend_pistol_shoulder_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </fire>
  <reload>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol" FragTags="ammo_empty">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadempty_pistol_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_reloadfull_pistol_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </reload>
 </FragmentList>
</AnimDB>
