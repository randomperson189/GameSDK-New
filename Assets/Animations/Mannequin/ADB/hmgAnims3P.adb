<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+weaponMounted">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_recoilmounted_hmg_shoulder_add_3p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </rapid_fire>
  <melee>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_melee_hmg_add_3p_01" speed="0.83999997"/>
    </AnimLayer>
   </Fragment>
  </melee>
  <melee_multipart>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG" FragTags="into">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_melee_hmg_add_3p_01" speed="0.83999997"/>
    </AnimLayer>
   </Fragment>
  </melee_multipart>
  <drop>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_drop_hmg_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </drop>
  <rip_off>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_ripoff_hmg_3p_01"/>
    </AnimLayer>
   </Fragment>
  </rip_off>
  <MotionMounted>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG+heavy">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_rotate_hmg_rgt_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_rotate_hmg_up_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_rotate_hmg_dwn_add_3p_01" flags="Loop"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="LayerManualUpdate">
      <ProceduralParams CryXmlVersion="2" ParamName="aimMovementParam" ScopeLayer="0" Invert="false"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="LayerWeight">
      <ProceduralParams CryXmlVersion="2" LayerWeightParam="aimUpParam" ScopeLayer="1" Invert="false"/>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0"/>
     <Procedural type="LayerWeight">
      <ProceduralParams CryXmlVersion="2" LayerWeightParam="aimDownParam" ScopeLayer="2" Invert="false"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </MotionMounted>
  <select>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.1"/>
     <Animation name="stand_tac_select_hmg_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </select>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="SDKHMG">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_drop_hmg_add_3p_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
 </FragmentList>
</AnimDB>
