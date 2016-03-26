.class public auto ansi beforefieldinit LaserReceptorEntity
       extends MachineEntity
       implements ILogicReciever
{
  .field private int64 mnSourceX
  .field private int64 mnSourceY
  .field private int64 mnSourceZ
  .field private uint8 mOutput
  .field private class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.OnlyOutput mLogicNode
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Segment segment,
                               int64 x,
                               int64 y,
                               int64 z,
                               uint16 cube,
                               uint8 'flags',
                               uint16 lValue) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  11
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   12
    IL_0003:  ldc.i4.s   44
    IL_0004:  ldarg.2
    IL_0005:  ldarg.3
    IL_0006:  ldarg.s    z
    IL_0008:  ldarg.s    cube
    IL_000a:  ldarg.s    'flags'
    IL_000c:  ldarg.s    lValue
    IL_000e:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::get_zero()
    IL_0013:  ldarg.1
    IL_0014:  call       instance void MachineEntity::.ctor(valuetype eSegmentEntity,
                                                            valuetype SpawnableObjectEnum,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16,
                                                            valuetype [UnityEngine]UnityEngine.Vector3,
                                                            class Segment)
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.1
    IL_001b:  stfld      bool SegmentEntity::mbNeedsLowFrequencyUpdate
	          ldarg.0
			  ldarg.s    'flags'
			  call       instance void ['Assembly-CSharp']LaserReceptorEntity::UpdateFaces(uint8)
              ldarg.0
              newobj     instance void class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.OnlyOutput::.ctor()
              stfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.OnlyOutput LaserReceptorEntity::mLogicNode
              
              ldsfld     class LogicManager LogicManager::'instance'
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph LogicManager::mGraph
              ldarg.0
              ldfld      class ['APlusMalware.ByteLogic']APlusMalware.ByteLogic.OnlyOutput LaserReceptorEntity::mLogicNode
              call       instance void [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph::AddNode(class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>)
    IL_0020:  ret
  } // end of method LaserReceptorEntity::.ctor
  
  .method public hidebysig virtual instance void
          OnDelete() cil managed
  {
              ldarg.0
              callvirt   instance void LaserReceptorEntity::ResetLogic()
              ldarg.0
              call       instance void MachineEntity::OnDelete()
              ret
  }
  
  .method public hidebysig virtual instance void
          OnUpdateRotation(uint8 newFlags) cil managed
  {
              ldarg.0
              callvirt   instance void LaserReceptorEntity::ResetLogic()
              ldarg.0
              ldarg.1
              call       instance void MachineEntity::OnUpdateRotation(uint8)
              ret
  }
  
  .method private hidebysig instance void 
          ResetLogic() cil managed
  {
              ldsfld     class LogicManager LogicManager::'instance'
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph LogicManager::mGraph
              ldarg.0
              ldfld      class ['APlusMalware.ByteLogic']APlusMalware.ByteLogic.OnlyOutput LaserReceptorEntity::mLogicNode
              callvirt   instance void [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph::RemoveNode(class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>)
              
              ldarg.0
              ldfld      class ['APlusMalware.ByteLogic']APlusMalware.ByteLogic.OnlyOutput LaserReceptorEntity::mLogicNode
              callvirt   instance void class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>::DisconnectAll()
              ret
  }

  .method public hidebysig virtual instance void 
          LowFrequencyUpdate() cil managed
  {
    // Code size       388 (0x184)
    .maxstack  4
    .locals init (class ['Assembly-CSharp']Segment segment,
             uint16 sourceCube,
             class ['Assembly-CSharp']SegmentEntity sourceEntity,
             class ['Assembly-CSharp']PowerConsumerInterface sourcePowerConsumer,
             float32 maxPower,
             float32 powerLeft,
             float32 V_6,
             int64 V_7,
             int64 V_8,
             int64 V_9,
             class ['Assembly-CSharp']Segment V_10,
             class ['Assembly-CSharp']ILogicReciever V_11,
             uint8 V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int64 LaserReceptorEntity::mnSourceX
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int64 LaserReceptorEntity::mnSourceY
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int64 LaserReceptorEntity::mnSourceZ
    IL_0013:  call       instance class ['Assembly-CSharp']Segment ['Assembly-CSharp']MachineEntity::AttemptGetSegment(int64,
                                                                                                                       int64,
                                                                                                                       int64)
    IL_0018:  stloc      segment
    IL_0019:  ldloc      segment
    IL_001a:  brtrue.s   IL_001d

    IL_001c:  ret

    IL_001d:  ldloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      int64 LaserReceptorEntity::mnSourceX
    IL_0024:  ldarg.0
    IL_0025:  ldfld      int64 LaserReceptorEntity::mnSourceY
    IL_002a:  ldarg.0
    IL_002b:  ldfld      int64 LaserReceptorEntity::mnSourceZ
    IL_0030:  callvirt   instance uint16 ['Assembly-CSharp']Segment::GetCube(int64,
                                                                             int64,
                                                                             int64)
    IL_0035:  stloc      sourceCube
    IL_0036:  ldloc      sourceCube
    IL_0037:  call       bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_003c:  brfalse    RECIEVE

    IL_003f:  ldloc.0
    IL_0040:  ldarg.0
    IL_0041:  ldfld      int64 LaserReceptorEntity::mnSourceX
    IL_0046:  ldarg.0
    IL_0047:  ldfld      int64 LaserReceptorEntity::mnSourceY
    IL_004c:  ldarg.0
    IL_004d:  ldfld      int64 LaserReceptorEntity::mnSourceZ
    IL_0052:  callvirt   instance class ['Assembly-CSharp']SegmentEntity ['Assembly-CSharp']Segment::SearchEntity(int64,
                                                                                                                  int64,
                                                                                                                  int64)
    IL_0057:  stloc      sourceEntity
    
              ldarg.0
              ldfld      uint16 MachineEntity::mValue
              switch     (POWER, CONVEYOR, STORAGE, CPH, LIFT, THREAT, TRACK, CRYSTAL)
              
              ldarg.0
              ldc.i4.0
              stfld      uint8 LaserReceptorEntity::mOutput
              br         RECIEVE
              
      POWER:  ldarg.0
              ldloc      sourceEntity
              callvirt   instance void LaserReceptorEntity::UpdateForPowerConsumer(class SegmentEntity)
              br         RECIEVE
    
    CONVEYOR: ldarg.0
              ldloc      sourceEntity
              callvirt   instance void LaserReceptorEntity::UpdateForConveyor(class SegmentEntity)
              br         RECIEVE
              
    STORAGE:  ldarg.0
              ldloc      sourceEntity
              callvirt   instance void LaserReceptorEntity::UpdateForStorage(class SegmentEntity)
              br         RECIEVE
              
        CPH:  ldarg.0
              ldloc      sourceEntity
              callvirt   instance void LaserReceptorEntity::UpdateForCentralPowerHub(class SegmentEntity)
              br         RECIEVE
              
       LIFT:  ldarg.0
              ldloc      sourceEntity
              callvirt   instance void LaserReceptorEntity::UpdateForLift(class SegmentEntity)
              br         RECIEVE
              
     THREAT:  ldarg.0
              ldloc      sourceEntity
              callvirt   instance void LaserReceptorEntity::UpdateForThreatScanner(class SegmentEntity)
              br         RECIEVE
              
      TRACK:  ldarg.0
              ldloc      sourceEntity
              callvirt   instance void LaserReceptorEntity::UpdateForMinecartTrack(class SegmentEntity)
              br         RECIEVE
              
    CRYSTAL:  ldarg.0
              ldloc      sourceEntity
              callvirt   instance void LaserReceptorEntity::UpdateForCrystal(class SegmentEntity)
              br         RECIEVE
              
    RECIEVE:  ldarg.0
              callvirt   instance void LaserReceptorEntity::UpdateReciever()
              ret
  } // end of method LaserReceptorEntity::LowFrequencyUpdate
  
  .method private hidebysig newslot instance void
          UpdateForPowerConsumer(class SegmentEntity entity) cil managed
  {
    .maxstack 4
    .locals (class ['Assembly-CSharp']PowerConsumerInterface powerConsumer)
              ldarg.1
              isinst     ['Assembly-CSharp']PowerConsumerInterface
              stloc      powerConsumer
              ldloc      powerConsumer
              brfalse    EXIT
              
              // (1 - (empty / maxPower)) * 255
              ldarg.0
              ldc.r4     1  
              ldloc      powerConsumer
              callvirt   instance float32 ['Assembly-CSharp']PowerConsumerInterface::GetRemainingPowerCapacity()
              call       float32 [UnityEngine]UnityEngine.Mathf::Round(float32)
              ldarg.1
              callvirt   instance float32 ['Assembly-CSharp']PowerConsumerInterface::GetMaxPower()
              call       float32 [UnityEngine]UnityEngine.Mathf::Round(float32)
              div
              sub
              ldc.r4     255
              mul
              conv.u1
              stfld      uint8 LaserReceptorEntity::mOutput
              ret
              
       EXIT:  ldarg.0
              ldc.i4.0
              stfld      uint8 LaserReceptorEntity::mOutput
              ret
  }
  
  .method private hidebysig newslot instance void
          UpdateForConveyor(class SegmentEntity entity) cil managed
  {
          ret
  }
  
  .method private hidebysig newslot instance void
          UpdateForStorage(class SegmentEntity entity) cil managed
  {
          ret
  }
  
  .method private hidebysig newslot instance void
          UpdateForCentralPowerHub(class SegmentEntity entity) cil managed
  {
          ret
  }
  
  .method private hidebysig newslot instance void
          UpdateForLift(class SegmentEntity entity) cil managed
  {
          ret
  }
  
  .method private hidebysig newslot instance void
          UpdateForThreatScanner(class SegmentEntity entity) cil managed
  {
    .maxstack 4
              ldarg.1
              isinst     ThreatScanner
              brfalse    EXIT
              
              // (1 - seconds / 3600) * 255
              ldarg.0
              ldc.r4     1
              ldsfld     float32 MobSpawnManager::mrTDCountDown
              ldc.r4     3600
              div
              sub
              ldc.r4     255
              mul
              conv.u1
              stfld      uint8 LaserReceptorEntity::mOutput
              ret
              
       EXIT:  ldarg.0
              ldc.i4.0
              stfld      uint8 LaserReceptorEntity::mOutput
              ret
  }
  
  .method private hidebysig newslot instance void
          UpdateForMinecartTrack(class SegmentEntity entity) cil managed
  {
          ret
  }
  
  .method private hidebysig newslot instance void
          UpdateForCrystal(class SegmentEntity entity) cil managed
  {
    .maxstack 3
    .locals (class ['Assembly-CSharp']CrystalEntity crystal)
              ldarg.1
              isinst     ['Assembly-CSharp']CrystalEntity
              stloc.s    crystal
              
              ldarg.0
              ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
              
              ldloc.s    crystal
              brfalse.s  DEFAULT
              
              ldloc.s    crystal
              ldfld      uint16 ['Assembly-CSharp']CrystalEntity::mValue
              switch     (DIAMOND, EMERALD, RUBY, SAPPHIR, TOPAZ, SUGALIT)
              
    DIAMOND:  ldc.i4.2
              br.s       CHECK
    EMERALD:  ldc.i4.3
              br.s       CHECK
       RUBY:  ldc.i4.5
              br.s       CHECK
    SAPPHIR:  ldc.i4.7
              br.s       CHECK
      TOPAZ:  ldc.i4.s   11
              br.s       CHECK
    SUGALIT:  ldc.i4.s   13
              br.s       CHECK
    DEFAULT:  ldc.i4.1
              
      CHECK:  rem
              brfalse.s  PULSE
              ldc.i4.0
              stfld      uint8 LaserReceptorEntity::mOutput
              ret
              
      PULSE:  ldc.i4     255
              stfld      uint8 LaserReceptorEntity::mOutput
              ret
  }
  
  .method private hidebysig newslot instance void
          UpdateReciever() cil managed
  {
    .maxstack 4
    .locals   (int64 recieverX, 
               int64 recieverY,
               int64 recieverZ,
               class ['Assembly-CSharp']Segment recieverEntity,
               class ['Assembly-CSharp']ILogicReciever logicReciever,
               uint8 face,
               int8  faceInputIndex
               )
              
              ldarg.0
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.OnlyOutput LaserReceptorEntity::mLogicNode
              brfalse.s  IL_008f
              
              ldarg.0
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.OnlyOutput LaserReceptorEntity::mLogicNode
              ldarg.0
              ldfld      uint8 LaserReceptorEntity::mOutput
              callvirt   instance void class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.NoInputLogicNode`1<uint8>::SetOutput(!0)
              
              ret
              
    IL_008f:  ldarg.0
    IL_0090:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0095:  ldc.i4.2
    IL_0096:  conv.i8
    IL_0097:  mul
    IL_0098:  ldarg.0
    IL_0099:  ldfld      int64 LaserReceptorEntity::mnSourceX
    IL_009e:  sub
    IL_009f:  stloc.s    recieverX
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_00a7:  ldc.i4.2
    IL_00a8:  conv.i8
    IL_00a9:  mul
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      int64 LaserReceptorEntity::mnSourceY
    IL_00b0:  sub
    IL_00b1:  stloc.s    recieverY
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_00b9:  ldc.i4.2
    IL_00ba:  conv.i8
    IL_00bb:  mul
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      int64 LaserReceptorEntity::mnSourceZ
    IL_00c2:  sub
    IL_00c3:  stloc.s    recieverZ
    IL_00c5:  ldarg.0
    IL_00c6:  ldloc.s    recieverX
    IL_00c8:  ldloc.s    recieverY
    IL_00ca:  ldloc.s    recieverZ
    IL_00cc:  call       instance class ['Assembly-CSharp']Segment ['Assembly-CSharp']MachineEntity::AttemptGetSegment(int64,
                                                                                                                       int64,
                                                                                                                       int64)
    IL_00d1:  stloc.s    recieverEntity
    IL_00d3:  ldloc.s    recieverEntity
    IL_00d5:  brtrue.s   IL_00d8

    IL_00d7:  ret

    IL_00d8:  ldloc.s    recieverEntity
    IL_00da:  ldloc.s    recieverX
    IL_00dc:  ldloc.s    recieverY
    IL_00de:  ldloc.s    recieverZ
    IL_00e0:  callvirt   instance uint16 ['Assembly-CSharp']Segment::GetCube(int64,
                                                                             int64,
                                                                             int64)
    IL_00e5:  call       bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_00ea:  brtrue.s   IL_00ed

    IL_00ec:  ret

    IL_00ed:  ldloc.s    recieverEntity
    IL_00ef:  ldloc.s    recieverX
    IL_00f1:  ldloc.s    recieverY
    IL_00f3:  ldloc.s    recieverZ
    IL_00f5:  callvirt   instance class ['Assembly-CSharp']SegmentEntity ['Assembly-CSharp']Segment::SearchEntity(int64,
                                                                                                                  int64,
                                                                                                                  int64)
    IL_00fa:  isinst     ['Assembly-CSharp']ILogicReciever
    IL_00ff:  stloc.s    logicReciever
    IL_0101:  ldloc.s    logicReciever
    IL_0103:  brtrue.s   IL_0106

    IL_0105:  ret

    IL_0106:  ldc.i4.0
    IL_0107:  stloc.s    face
    IL_0109:  ldloc.s    recieverX
    IL_010b:  ldarg.0
    IL_010c:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0111:  ble.s      IL_0119

    IL_0113:  ldc.i4.s   16
    IL_0115:  stloc.s    face
    IL_0117:  br.s       IL_0163

    IL_0119:  ldloc.s    recieverX
    IL_011b:  ldarg.0
    IL_011c:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0121:  bge.s      IL_0129

    IL_0123:  ldc.i4.s   32
    IL_0125:  stloc.s    face
    IL_0127:  br.s       IL_0163

    IL_0129:  ldloc.s    recieverY
    IL_012b:  ldarg.0
    IL_012c:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_0131:  ble.s      IL_0138

    IL_0133:  ldc.i4.2
    IL_0134:  stloc.s    face
    IL_0136:  br.s       IL_0163

    IL_0138:  ldloc.s    recieverY
    IL_013a:  ldarg.0
    IL_013b:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_0140:  bge.s      IL_0147

    IL_0142:  ldc.i4.1
    IL_0143:  stloc.s    face
    IL_0145:  br.s       IL_0163

    IL_0147:  ldloc.s    recieverZ
    IL_0149:  ldarg.0
    IL_014a:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_014f:  ble.s      IL_0156

    IL_0151:  ldc.i4.8
    IL_0152:  stloc.s    face
    IL_0154:  br.s       IL_0163

    IL_0156:  ldloc.s    recieverZ
    IL_0158:  ldarg.0
    IL_0159:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_015e:  bge.s      IL_0163

    IL_0160:  ldc.i4.4
    IL_0161:  stloc.s    face
    IL_0163:  ldloc.s    logicReciever
    IL_0165:  ldloc.s    face
    IL_0167:  callvirt   instance int8 ILogicReciever::FindFaceInputIndex(uint8)
              stloc.s    faceInputIndex
              ldloc.s    faceInputIndex
              ldc.i4.0
    IL_016c:  blt.s      IL_0183

              ldarg.0
              ldc.i4.0
    IL_016e:  ldloc.s    logicReciever
              callvirt   instance class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> ILogicReciever::GetLogicNode()
              ldloc.s    faceInputIndex
    IL_0178:  callvirt   instance void class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8>::RegisterHead(int32, class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<!0>, int32)
    
              ldarg.0
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.OnlyOutput LaserReceptorEntity::mLogicNode
              ldarg.0
              ldfld      uint8 LaserReceptorEntity::mOutput
              callvirt   instance void class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.NoInputLogicNode`1<uint8>::SetOutput(!0)
              
    IL_017d:  ldarg.0
    IL_017e:  callvirt   instance void ['Assembly-CSharp']SegmentEntity::MarkDirtyDelayed()
    IL_0183:  ret
  }
  
  .method public hidebysig newslot virtual 
          instance int8  FindFaceInputIndex(uint8 face) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  1
              ldc.i4.m1
              ret
  } // end of method LaserReceptorEntity::FindFaceInputIndex
  
  .method public hidebysig newslot virtual instance class 
          [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8>
          GetLogicNode() cil managed
  {
              ldarg.0
              ldfld     class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.OnlyOutput LaserReceptorEntity::mLogicNode
              ret
  }
  
  .method private hidebysig newslot instance void
          UpdateFaces(uint8 flag) cil managed
  {
              .maxstack 3
			  .locals init (valuetype [UnityEngine]UnityEngine.Vector3)
              ldarg.1
	          call       valuetype [UnityEngine]UnityEngine.Quaternion ['Assembly-CSharp']SegmentCustomRenderer::GetRotationQuaternion(uint8)
			  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::get_down()
			  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Quaternion::op_Multiply(valuetype [UnityEngine]UnityEngine.Quaternion, valuetype [UnityEngine]UnityEngine.Vector3)
			  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::Normalize(valuetype [UnityEngine]UnityEngine.Vector3)
			  stloc.0
			  
			  ldarg.0
			  ldarg.0
			  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
			  ldloca.s   0
			  ldfld      float32 [UnityEngine]UnityEngine.Vector3::x
			  conv.i8
			  add
			  stfld      int64 LaserReceptorEntity::mnSourceX
			  
			  ldarg.0
			  ldarg.0
			  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
			  ldloca.s   0
			  ldfld      float32 [UnityEngine]UnityEngine.Vector3::y
			  conv.i8
			  add
			  stfld      int64 LaserReceptorEntity::mnSourceY
			  
			  ldarg.0
			  ldarg.0
			  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
			  ldloca.s   0
			  ldfld      float32 [UnityEngine]UnityEngine.Vector3::z
			  conv.i8
			  add
			  stfld      int64 LaserReceptorEntity::mnSourceZ
			  
			  ret
  }
} // end of class LaserReceptorEntity
