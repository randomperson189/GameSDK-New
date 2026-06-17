<AnimDB FragDef="Animations/Mannequin/ADB/PlayerActions.xml" TagDef="Animations/Mannequin/ADB/PlayerTags.xml">
 <FragmentList>
  <deselect>
   <Fragment BlendOutDuration="0.2" Tags="slave+slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_grab_front_outof_human_01"/>
    </AnimLayer>
   </Fragment>
  </deselect>
  <idle>
   <Fragment BlendOutDuration="0.2" Tags="slave+slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_grab_front_loop_human_01" flags="Loop"/>
    </AnimLayer>
   </Fragment>
  </idle>
  <throw>
   <Fragment BlendOutDuration="0.2" Tags="slave+slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_grab_front_outof_human_01"/>
     <Blend ExitTime="-1" StartTime="0" Duration="0.2"/>
     <Animation name=""/>
    </AnimLayer>
   </Fragment>
  </throw>
  <grab>
   <Fragment BlendOutDuration="0.2" Tags="slave+slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0.23" StartTime="0" Duration="0"/>
     <Animation name="stand_tac_grab_front_into_human_01"/>
    </AnimLayer>
    <ProcLayer>
     <Blend ExitTime="0.23" StartTime="0" Duration="0"/>
     <Procedural type=""/>
    </ProcLayer>
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.24000001"/>
     <Procedural type="PositionAdjust">
      <ProceduralParams CryXmlVersion="2" Yaw="0" IgnoreRotation="false" IgnorePosition="false">
       <Offset x="-0.1" y="1" z="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </grab>
  <hitDeath>
   <Fragment BlendOutDuration="0.2" Tags="MP+slave+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_02" speed="1.5"/>
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
   <Fragment BlendOutDuration="0.2" Tags="MP+slave+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_03" speed="1.5"/>
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
   <Fragment BlendOutDuration="0.2" Tags="MP+slave+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_04" speed="1.5"/>
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
   <Fragment BlendOutDuration="0.2" Tags="slave+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_02"/>
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
   <Fragment BlendOutDuration="0.2" Tags="slave+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_03"/>
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
   <Fragment BlendOutDuration="0.2" Tags="slave+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_04"/>
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
   <Fragment BlendOutDuration="0.2" Tags="MP+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_3p_02" speed="1.5"/>
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
   <Fragment BlendOutDuration="0.2" Tags="MP+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_3p_03" speed="1.5"/>
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
   <Fragment BlendOutDuration="0.2" Tags="MP+slaveHuman" FragTags="stealthKill">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_stealthkill_human_3p_04" speed="1.75"/>
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
     <Animation name="stand_tac_stealthkill_human_3p_02" speed="1.5"/>
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
     <Animation name="stand_tac_stealthkill_human_3p_03" speed="1.5"/>
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
     <Animation name="stand_tac_stealthkill_human_3p_04" speed="1.5"/>
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
   <Fragment BlendOutDuration="0.2" Tags="slave+slaveHuman">
    <AnimLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Animation name="stand_tac_grab_front_kill_human_01"/>
    </AnimLayer>
   </Fragment>
  </grabNPCKill>
 </FragmentList>
</AnimDB>
