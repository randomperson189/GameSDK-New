<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_grab_front_outof_human_1p_add_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
  <idle>
   <Fragment BlendOutDuration="0.2" Tags="slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_grab_front_loop_human_1p_add_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idle>
  <throw>
   <Fragment BlendOutDuration="0.2" Tags="slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_grab_front_outof_human_1p_add_01"/>
    </AnimLayer>
   </Fragment>
  </throw>
  <grab>
   <Fragment BlendOutDuration="0.2" Tags="slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.14"/>
     <Animation name="stand_tac_grab_front_into_human_1p_part1_01"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_grab_front_into_human_1p_part2_01"/>
    </AnimLayer>
   </Fragment>
  </grab>
  <idlePose>
   <Fragment BlendOutDuration="0.2" Tags="slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_grab_front_pose_human_1p_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idlePose>
  <hitDeath>
   <Fragment BlendOutDuration="0.2" Tags="MP+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_1p_02" speed="1.5"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams CryXmlVersion="2" ParamName="" IgnoreRotation="false" IgnorePosition="false" CollisionCheck="false" UpdateLocation="false">
       <CollisionParams MaxAdjustmentSpeed="0" HeightOffset="0" HeightMult="0" WidthMult="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="AttachProp">
      <ProceduralParams CryXmlVersion="2" ObjectFilename="objects/weapons/equipment/knife/knife.cgf" AttachmentName="knife"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_1p_03" speed="1.5"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams CryXmlVersion="2" ParamName="" IgnoreRotation="false" IgnorePosition="false" CollisionCheck="false" UpdateLocation="false">
       <CollisionParams MaxAdjustmentSpeed="0" HeightOffset="0" HeightMult="0" WidthMult="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer />
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="MP+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_1p_04" speed="1.5"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams CryXmlVersion="2" ParamName="" IgnoreRotation="false" IgnorePosition="false" CollisionCheck="false" UpdateLocation="false">
       <CollisionParams MaxAdjustmentSpeed="0" HeightOffset="0" HeightMult="0" WidthMult="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_1p_02"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams CryXmlVersion="2" ParamName="" IgnoreRotation="false" IgnorePosition="false" CollisionCheck="false" UpdateLocation="false">
       <CollisionParams MaxAdjustmentSpeed="0" HeightOffset="0" HeightMult="0" WidthMult="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="AttachProp">
      <ProceduralParams CryXmlVersion="2" ObjectFilename="objects/weapons/equipment/knife/knife.cgf" AttachmentName="knife"/>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_1p_03"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams CryXmlVersion="2" ParamName="" IgnoreRotation="false" IgnorePosition="false" CollisionCheck="false" UpdateLocation="false">
       <CollisionParams MaxAdjustmentSpeed="0" HeightOffset="0" HeightMult="0" WidthMult="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
   <Fragment BlendOutDuration="0.2" Tags="slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_1p_04"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="PositionAdjustAnimPos">
      <ProceduralParams CryXmlVersion="2" ParamName="" IgnoreRotation="false" IgnorePosition="false" CollisionCheck="false" UpdateLocation="false">
       <CollisionParams MaxAdjustmentSpeed="0" HeightOffset="0" HeightMult="0" WidthMult="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </hitDeath>
  <grabNPCKill>
   <Fragment BlendOutDuration="0.2" Tags="slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_grab_front_kill_human_1p_add_01"/>
    </AnimLayer>
   </Fragment>
  </grabNPCKill>
 </FragmentList>
</AnimDB>
