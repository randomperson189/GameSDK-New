<AnimDB FragDef="Animations/Mannequin/ADB/itemActions.xml" TagDef="Animations/Mannequin/ADB/itemTags.xml">
 <FragmentList>
  <rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="sounds/w_turret:turret_weapon:fire_loop_3p"/>
       <StopTrigger value=""/>
       <AttachmentJoint value=""/>
       <Radius value="40"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </rapid_fire>
  <stop_rapid_fire>
   <Fragment BlendOutDuration="0.2" Tags="">
    <ProcLayer>
     <Blend ExitTime="0" StartTime="0" Duration="0.2"/>
     <Procedural type="Audio">
      <ProceduralParams>
       <StartTrigger value="sounds/w_turret:turret_weapon:fire_tail_3p"/>
       <StopTrigger value=""/>
       <AttachmentJoint value=""/>
       <Radius value="0"/>
       <IsVoice value="false"/>
       <PlayFacial value="false"/>
       <SoundFlags value="0"/>
      </ProceduralParams>
     </Procedural>
    </ProcLayer>
   </Fragment>
  </stop_rapid_fire>
 </FragmentList>
</AnimDB>
