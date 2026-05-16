<CharacterDefinition>
 <Model File="objects/characters/human/generic/skeleton_player_generic.chr"/>
 <AttachmentList>
  <Attachment Type="CA_BONE" AName="hand" RelRotation="0.99015695,0.023486897,-0.12311293,0.062295474" RelPosition="-1.4781952e-005,7.6293945e-006,-0.011837006" BoneName="Bip01 R Hand" PA_PendulumType="1" PA_Redirect="1" PA_Damping="5" PA_Stiffness="10" PA_SimulationAxis="0.5,0,0" Flags="0"/>
  <Attachment Type="CA_BONE" AName="elbow" RelRotation="0.86074239,-1.8084753e-015,3.0579706e-015,0.50904065" RelPosition="0,0,-1.9073486e-006" BoneName="Bip01 R Forearm" PA_PendulumType="2" PA_MaxAngle="60" PA_Redirect="1" PA_Damping="5" PA_Stiffness="5" PA_SimulationAxis="0.5,0,0" PA_StiffnessTarget="-0.42325729,0,0" Flags="0"/>
  <Attachment Type="CA_BONE" AName="shoulder" RelRotation="0.99360853,0.062412806,-0.093867555,0.0059598093" RelPosition="-0.00030899048,0.00032043457,-0.00022315979" BoneName="Bip01 R UpperArm" PA_PendulumType="3" PA_MaxAngle="70" PA_Redirect="1" PA_Damping="6" PA_Stiffness="5" PA_SimulationAxis="0.5,0,0" Flags="0"/>
  <Attachment Type="CA_PROX" AName="Right_leg_proxy" RelRotation="0.99999994,0,0,0" RelPosition="0.21625453,0.026602071,-0.017186463" BoneName="Bip01 R Thigh" ProxyParams="0.16190052,0,0,0.1" ProxyPurpose="0"/>
  <Attachment Type="CA_FACE" AName="pendulum" Binding="objects/weapons/attachments/sniper/sniper_scope_a_tp.cgf" Rotation="0.72753042,-0.68319601,-0.042983018,-0.045772284" Position="0.24060056,0.01322479,0.80309266" PA_PendulumType="1" PA_PivotOffset="-0.00044118566,0.1,-0.025" PA_SimulationAxis="0,0.5,0" PA_CapsuleX="0.16711064" PA_CapsuleY="0.020882906" PA_ProjectionType="1" PA_Proxy00="Right_leg_proxy" Flags="0"/>
  <Attachment Type="CA_SKIN" AName="fullbodymesh" Binding="objects/characters/human/sdk_attachment_tutorial/rebels/bodymesh.skin" Flags="0"/>
  <Attachment Type="CA_SKIN" AName="GlottSkull" Binding="objects/characters/human/sdk_attachment_tutorial/glottskull/glottskull.skin" Material="objects/characters/human/sdk_attachment_tutorial/glottskull/glottskull.mtl" Flags="0"/>
  <Attachment Type="CA_BONE" AName="weapon" Binding="objects/weapons/rifle/rifle_tp.cgf" RelRotation="0.99999994,0,0,0" RelPosition="0.028502941,-7.6293945e-006,0.0014152527" BoneName="weapon_bone" Flags="0"/>
  <Attachment Type="CA_BONE" AName="SniperScope" Binding="objects/weapons/attachments/sniper/sniper_scope_a_tp.cgf" Rotation="0.48678637,-0.46520686,-0.47810182,0.56395048" Position="-0.2254287,0.0078266161,0.93589026" BoneName="Bip01 L Thigh" Flags="0"/>
 </AttachmentList>
</CharacterDefinition>
