<AnimDB FragDef="Animations/Mannequin/ADB/playerActions.xml" TagDef="Animations/Mannequin/ADB/playerTags.xml">
 <FragmentList>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_selectclosed_pistol_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol+iron">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_recoilend_pistol_iron_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="SDKPistol">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_recoilend_pistol_shoulder_weapon_1p_01"/>
    </AnimLayer>
   </Fragment>
  </fire>
 </FragmentList>
</AnimDB>
