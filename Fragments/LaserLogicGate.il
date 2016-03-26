.class public auto ansi abstract beforefieldinit LaserLogicGate
       extends MachineEntity
       implements ILogicReciever
{
  .class auto ansi sealed nested public eState
         extends [mscorlib]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype LaserLogicGate/eState SearchingForEntity = int32(0x00000000)
    .field public static literal valuetype LaserLogicGate/eState ImpactedWall = int32(0x00000001)
    .field public static literal valuetype LaserLogicGate/eState NothingFound = int32(0x00000002)
    .field public static literal valuetype LaserLogicGate/eState FoundEntity = int32(0x00000003)
  } // end of class eState

  .field public bool mbBeamActive
  .field public int32 mnBeamDistance
  .field private int64 mEntityX
  .field private int64 mEntityY
  .field private int64 mEntityZ
  .field private int32 mnStrokeDist
  .field private int32 mnUpdates
  .field public valuetype [UnityEngine]UnityEngine.Vector3 mForwards
  .field public int32 mnBeamStrokeLength
  .field public int32 mnBeamMax
  .field public float32 mrVisualBeamLength
  .field private bool mbLinkedToGO
  .field private class [UnityEngine]UnityEngine.Light ImpactLight
  .field private class [UnityEngine]UnityEngine.GameObject Beam
  .field private class [UnityEngine]UnityEngine.GameObject BeamImpact
  .field public valuetype LaserLogicGate/eState meState
  .field public int32 mnNumTransfers
  .field private float32 mrStateTimer
  .field private valuetype [UnityEngine]UnityEngine.Vector3 mImpactPos
  .field private bool mbIsBehindPlayer
  .field family uint8 mbOutput
  .field private class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> mLogicNode
  
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype eSegmentEntity segmentEntity,
                               valuetype SpawnableObjectEnum spawnableObject,
                               int64 x,
                               int64 y,
                               int64 z,
                               uint16 cube,
                               uint8 'flags',
                               uint16 lValue,
                               class Segment segment,
                               class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> logicNode) cil managed
  {
    // Code size       93 (0x5d)
    .maxstack  11
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    y
    IL_0006:  ldarg.s    z
    IL_0008:  ldarg.s    cube
    IL_000a:  ldarg.s    'flags'
    IL_000c:  ldarg.s    lValue
    IL_000e:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::get_zero()
    IL_0013:  ldarg.s    segment
    IL_0015:  call       instance void ['Assembly-CSharp']MachineEntity::.ctor(valuetype ['Assembly-CSharp']eSegmentEntity,
                                                                               valuetype ['Assembly-CSharp']SpawnableObjectEnum,
                                                                               int64,
                                                                               int64,
                                                                               int64,
                                                                               uint16,
                                                                               uint8,
                                                                               uint16,
                                                                               valuetype [UnityEngine]UnityEngine.Vector3,
                                                                               class ['Assembly-CSharp']Segment)
    IL_001a:  ldarg.0
    IL_001b:  ldc.i4.1
    IL_001c:  stfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4     0x40
    IL_0027:  stfld      int32 LaserLogicGate::mnBeamMax
    IL_002c:  ldarg.0
    IL_002d:  ldc.i4.1
    IL_002e:  stfld      bool ['Assembly-CSharp']SegmentEntity::mbNeedsLowFrequencyUpdate
    IL_0033:  ldarg.0
    IL_0034:  ldc.i4.1
    IL_0035:  stfld      bool ['Assembly-CSharp']SegmentEntity::mbNeedsUnityUpdate
    IL_003a:  ldarg.0
    IL_003b:  ldarg.s    'flags'
    IL_003d:  call       valuetype [UnityEngine]UnityEngine.Quaternion ['Assembly-CSharp']SegmentCustomRenderer::GetRotationQuaternion(uint8)
    IL_0042:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::get_forward()
    IL_0047:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Quaternion::op_Multiply(valuetype [UnityEngine]UnityEngine.Quaternion,
                                                                                                                     valuetype [UnityEngine]UnityEngine.Vector3)
    IL_004c:  stfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_0051:  ldarg.0
    IL_0052:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_0057:  call       instance void [UnityEngine]UnityEngine.Vector3::Normalize()
              ldarg.0
              ldarg.s    logicNode
              stfld      class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8> LaserLogicGate::mLogicNode
              
              ldsfld     class LogicManager LogicManager::'instance'
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph LogicManager::mGraph
              ldarg.0
              ldfld      class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8> LaserLogicGate::mLogicNode
              call       instance void [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph::AddNode(class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>)
              
    IL_005c:  ret
  } // end of method LaserLogicGate::.ctor
  
  .method public hidebysig virtual instance void
          OnDelete() cil managed
  {
              ldarg.0
              callvirt   instance void LaserLogicGate::ResetLogic()
              ldarg.0
              call       instance void MachineEntity::OnDelete()
              ret
              ret
  }
  
  .method public hidebysig virtual instance void 
          DropGameObject() cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void ['Assembly-CSharp']SegmentEntity::DropGameObject()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.0
    IL_0008:  stfld      bool LaserLogicGate::mbLinkedToGO
    IL_000d:  ret
  } // end of method LaserLogicGate::DropGameObject

  .method private hidebysig instance void 
          SearchForEntity() cil managed
  {
    // Code size       560 (0x230)
    .maxstack  5
    .locals init (int64 V_0,
             int64 V_1,
             int64 V_2,
             class ['Assembly-CSharp']Segment V_3,
             uint16 V_4,
             bool V_5,
             object[] V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0006:  brtrue.s   IL_0010

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  stfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  ldfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_0016:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::get_zero()
    IL_001b:  call       bool [UnityEngine]UnityEngine.Vector3::op_Equality(valuetype [UnityEngine]UnityEngine.Vector3,
                                                                            valuetype [UnityEngine]UnityEngine.Vector3)
    IL_0020:  brfalse.s  IL_0051

    IL_0022:  ldarg.0
    IL_0023:  ldfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_0028:  box        [UnityEngine]UnityEngine.Vector3
    IL_002d:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_0032:  ldstr      "Error, Laser Emitter has mForwards of zero!"
    IL_0037:  ldarg.0
    IL_0038:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_003d:  call       instance float32 [UnityEngine]UnityEngine.Vector3::get_magnitude()
    IL_0042:  box        [mscorlib]System.Single
    IL_0047:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_004c:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_0051:  ldarg.0
    IL_0052:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_0057:  call       instance float32 [UnityEngine]UnityEngine.Vector3::get_sqrMagnitude()
    IL_005c:  ldc.r4     1.
    IL_0061:  bge.un.s   IL_0092

    IL_0063:  ldarg.0
    IL_0064:  ldfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_0069:  box        [UnityEngine]UnityEngine.Vector3
    IL_006e:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_0073:  ldstr      "Error, Laser Emitter has mForwards of length <1!"
    IL_0078:  ldarg.0
    IL_0079:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_007e:  call       instance float32 [UnityEngine]UnityEngine.Vector3::get_magnitude()
    IL_0083:  box        [mscorlib]System.Single
    IL_0088:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_008d:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0098:  stloc.0
    IL_0099:  ldarg.0
    IL_009a:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_009f:  stloc.1
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_00a6:  stloc.2
    IL_00a7:  ldloc.0
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_00ae:  conv.r4
    IL_00af:  ldarg.0
    IL_00b0:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_00b5:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_00ba:  mul
    IL_00bb:  conv.i8
    IL_00bc:  add
    IL_00bd:  stloc.0
    IL_00be:  ldloc.1
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_00c5:  conv.r4
    IL_00c6:  ldarg.0
    IL_00c7:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_00cc:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::y
    IL_00d1:  mul
    IL_00d2:  conv.i8
    IL_00d3:  add
    IL_00d4:  stloc.1
    IL_00d5:  ldloc.2
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_00dc:  conv.r4
    IL_00dd:  ldarg.0
    IL_00de:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_00e3:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::z
    IL_00e8:  mul
    IL_00e9:  conv.i8
    IL_00ea:  add
    IL_00eb:  stloc.2
    IL_00ec:  ldloc.0
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_00f3:  bne.un.s   IL_015a

    IL_00f5:  ldloc.1
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_00fc:  bne.un.s   IL_015a

    IL_00fe:  ldloc.2
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_0105:  bne.un.s   IL_015a

    IL_0107:  ldc.i4.4
    IL_0108:  newarr     [mscorlib]System.Object
    IL_010d:  stloc.s    V_6
    IL_010f:  ldloc.s    V_6
    IL_0111:  ldc.i4.0
    IL_0112:  ldstr      "Found ourselves at length "
    IL_0117:  stelem.ref
    IL_0118:  ldloc.s    V_6
    IL_011a:  ldc.i4.1
    IL_011b:  ldarg.0
    IL_011c:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0121:  box        [mscorlib]System.Int32
    IL_0126:  stelem.ref
    IL_0127:  ldloc.s    V_6
    IL_0129:  ldc.i4.2
    IL_012a:  ldstr      ":"
    IL_012f:  stelem.ref
    IL_0130:  ldloc.s    V_6
    IL_0132:  ldc.i4.3
    IL_0133:  ldarg.0
    IL_0134:  ldfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_0139:  box        [UnityEngine]UnityEngine.Vector3
    IL_013e:  stelem.ref
    IL_013f:  ldloc.s    V_6
    IL_0141:  call       string [mscorlib]System.String::Concat(object[])
    IL_0146:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_014b:  ldarg.0
    IL_014c:  dup
    IL_014d:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0152:  ldc.i4.1
    IL_0153:  add
    IL_0154:  stfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0159:  ret

    IL_015a:  ldarg.0
    IL_015b:  ldloc.0
    IL_015c:  ldloc.1
    IL_015d:  ldloc.2
    IL_015e:  call       instance class ['Assembly-CSharp']Segment ['Assembly-CSharp']MachineEntity::AttemptGetSegment(int64,
                                                                                                                       int64,
                                                                                                                       int64)
    IL_0163:  stloc.3
    IL_0164:  ldloc.3
    IL_0165:  brtrue.s   IL_0168

    IL_0167:  ret

    IL_0168:  ldloc.3
    IL_0169:  ldloc.0
    IL_016a:  ldloc.1
    IL_016b:  ldloc.2
    IL_016c:  callvirt   instance uint16 ['Assembly-CSharp']Segment::GetCube(int64,
                                                                             int64,
                                                                             int64)
    IL_0171:  stloc.s    V_4
    IL_0173:  ldc.i4.0
    IL_0174:  stloc.s    V_5
    IL_0176:  ldloc.s    V_4
    IL_0178:  call       bool ['Assembly-CSharp']CubeHelper::IsCubeSolid(int32)
    IL_017d:  brfalse.s  IL_018b

    IL_017f:  ldloc.s    V_4
    IL_0181:  call       bool ['Assembly-CSharp']CubeHelper::IsCubeGlass(int32)
    IL_0186:  brtrue.s   IL_018b

    IL_0188:  ldc.i4.1
    IL_0189:  stloc.s    V_5
    IL_018b:  ldloc.s    V_4
    IL_018d:  call       bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_0192:  brfalse.s  IL_0197

    IL_0194:  ldc.i4.1
    IL_0195:  stloc.s    V_5
    IL_0197:  ldloc.s    V_5
    IL_0199:  brfalse.s  IL_020b

    IL_019b:  ldloc.s    V_4
    IL_019d:  call       bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_01a2:  brfalse.s  IL_01c1

    IL_01a4:  ldarg.0
    IL_01a5:  ldc.i4.3
    IL_01a6:  stfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_01ab:  ldarg.0
    IL_01ac:  ldloc.0
    IL_01ad:  stfld      int64 LaserLogicGate::mEntityX
    IL_01b2:  ldarg.0
    IL_01b3:  ldloc.1
    IL_01b4:  stfld      int64 LaserLogicGate::mEntityY
    IL_01b9:  ldarg.0
    IL_01ba:  ldloc.2
    IL_01bb:  stfld      int64 LaserLogicGate::mEntityZ
    IL_01c0:  ret

    IL_01c1:  ldloc.s    V_4
    IL_01c3:  call       bool ['Assembly-CSharp']CubeHelper::IsCubeSolid(int32)
    IL_01c8:  brfalse.s  IL_022f

    IL_01ca:  ldarg.0
    IL_01cb:  ldc.i4.1
    IL_01cc:  stfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_01d1:  ldarg.0
    IL_01d2:  ldsfld     class ['Assembly-CSharp']WorldScript ['Assembly-CSharp']WorldScript::'instance'
    IL_01d7:  ldfld      class ['Assembly-CSharp']WorldFrustrum ['Assembly-CSharp']WorldScript::mPlayerFrustrum
    IL_01dc:  ldloc.0
    IL_01dd:  ldloc.1
    IL_01de:  ldloc.2
    IL_01df:  callvirt   instance valuetype [UnityEngine]UnityEngine.Vector3 ['Assembly-CSharp']WorldFrustrum::GetCoordsToUnity(int64,
                                                                                                                                int64,
                                                                                                                                int64)
    IL_01e4:  stfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_01e9:  ldarg.0
    IL_01ea:  dup
    IL_01eb:  ldfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_01f0:  ldarg.0
    IL_01f1:  ldfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_01f6:  ldc.r4     0.5
    IL_01fb:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::op_Multiply(valuetype [UnityEngine]UnityEngine.Vector3,
                                                                                                                  float32)
    IL_0200:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::op_Subtraction(valuetype [UnityEngine]UnityEngine.Vector3,
                                                                                                                     valuetype [UnityEngine]UnityEngine.Vector3)
    IL_0205:  stfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_020a:  ret

    IL_020b:  ldarg.0
    IL_020c:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0211:  ldarg.0
    IL_0212:  ldfld      int32 LaserLogicGate::mnBeamMax
    IL_0217:  bge.s      IL_0228

    IL_0219:  ldarg.0
    IL_021a:  dup
    IL_021b:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0220:  ldc.i4.1
    IL_0221:  add
    IL_0222:  stfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0227:  ret

    IL_0228:  ldarg.0
    IL_0229:  ldc.i4.2
    IL_022a:  call       instance void LaserLogicGate::SetNewState(valuetype LaserLogicGate/eState)
    IL_022f:  ret
  } // end of method LaserLogicGate::SearchForEntity

  .method public hidebysig virtual instance void 
          LowFrequencyUpdate() cil managed
  {
    // Code size       89 (0x59)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance void LaserLogicGate::UpdateLaser()
    IL_0006:  ret
  } // end of method LaserLogicGate::LowFrequencyUpdate

  .method public hidebysig instance void 
          SetNewState(valuetype LaserLogicGate/eState leNewState) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 LaserLogicGate::mrStateTimer
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  stfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_0012:  ret
  } // end of method LaserLogicGate::SetNewState

  .method family hidebysig newslot virtual 
          instance void  UpdateLaser() cil managed
  {
    // Code size       912 (0x390)
    .maxstack  5
    .locals init (int64 V_0,
             int64 V_1,
             int64 V_2,
             class ['Assembly-CSharp']Segment V_3,
             uint16 V_4,
             class ['Assembly-CSharp']Segment V_5,
             uint16 V_6,
             class ILogicReciever V_7,
             uint8 V_8,
             int64 V_9,
             int64 V_10,
             int64 V_11,
             class ['Assembly-CSharp']Segment V_12,
             uint16 V_13,
             bool V_14,
             int8 faceInputIndex)
    IL_0000:  ldarg.0
    IL_0001:  dup
    IL_0002:  dup
    IL_0003:  call       instance void MachineEntity::UpdatePlayerDistanceInfo()
    IL_0008:  ldfld      float32 LaserLogicGate::mrStateTimer
    IL_000d:  ldsfld     float32 ['Assembly-CSharp']LowFrequencyThread::mrPreviousUpdateTimeStep
    IL_0012:  add
    IL_0013:  stfld      float32 LaserLogicGate::mrStateTimer
    IL_0018:  ldarg.0
    IL_0019:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_001e:  ldc.i4.2
    IL_001f:  bne.un.s   IL_003c

    IL_0021:  ldarg.0
    IL_0022:  ldfld      float32 LaserLogicGate::mrStateTimer
    IL_0027:  ldc.r4     5.
    IL_002c:  ble.un.s   IL_003c

    IL_002e:  ldarg.0
    IL_002f:  ldc.i4.1
    IL_0030:  stfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0035:  ldarg.0
    IL_0036:  ldc.i4.0
    IL_0037:  call       instance void LaserLogicGate::SetNewState(valuetype LaserLogicGate/eState)
    IL_003c:  ldarg.0
    IL_003d:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_0042:  brtrue.s   IL_007e

    IL_0044:  ldarg.0
    IL_0045:  call       instance void LaserLogicGate::SearchForEntity()
    IL_004a:  ldarg.0
    IL_004b:  call       instance void LaserLogicGate::SearchForEntity()
    IL_0050:  ldarg.0
    IL_0051:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_0056:  brtrue.s   IL_0067

    IL_0058:  ldarg.0
    IL_0059:  ldfld      uint16 ['Assembly-CSharp']MachineEntity::mValue
    IL_005e:  ldc.i4.0
    IL_005f:  ble.s      IL_0067

    IL_0061:  ldarg.0
    IL_0062:  call       instance void LaserLogicGate::SearchForEntity()
    IL_0067:  ldarg.0
    IL_0068:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_006d:  brtrue.s   IL_007e

    IL_006f:  ldarg.0
    IL_0070:  ldfld      uint16 ['Assembly-CSharp']MachineEntity::mValue
    IL_0075:  ldc.i4.1
    IL_0076:  ble.s      IL_007e

    IL_0078:  ldarg.0
    IL_0079:  call       instance void LaserLogicGate::SearchForEntity()
    IL_007e:  ldarg.0
    IL_007f:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_0084:  ldc.i4.1
    IL_0085:  bne.un     IL_0133

    IL_008a:  ldarg.0
    IL_008b:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0090:  stloc.0
    IL_0091:  ldarg.0
    IL_0092:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_0097:  stloc.1
    IL_0098:  ldarg.0
    IL_0099:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_009e:  stloc.2
    IL_009f:  ldloc.0
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_00a6:  conv.r4
    IL_00a7:  ldarg.0
    IL_00a8:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_00ad:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_00b2:  mul
    IL_00b3:  conv.i8
    IL_00b4:  add
    IL_00b5:  stloc.0
    IL_00b6:  ldloc.1
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_00bd:  conv.r4
    IL_00be:  ldarg.0
    IL_00bf:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_00c4:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::y
    IL_00c9:  mul
    IL_00ca:  conv.i8
    IL_00cb:  add
    IL_00cc:  stloc.1
    IL_00cd:  ldloc.2
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_00d4:  conv.r4
    IL_00d5:  ldarg.0
    IL_00d6:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_00db:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::z
    IL_00e0:  mul
    IL_00e1:  conv.i8
    IL_00e2:  add
    IL_00e3:  stloc.2
    IL_00e4:  ldarg.0
    IL_00e5:  ldloc.0
    IL_00e6:  ldloc.1
    IL_00e7:  ldloc.2
    IL_00e8:  call       instance class ['Assembly-CSharp']Segment ['Assembly-CSharp']MachineEntity::AttemptGetSegment(int64,
                                                                                                                       int64,
                                                                                                                       int64)
    IL_00ed:  stloc.3
    IL_00ee:  ldloc.3
    IL_00ef:  brtrue.s   IL_00f2

    IL_00f1:  ret

    IL_00f2:  ldloc.3
    IL_00f3:  ldloc.0
    IL_00f4:  ldloc.1
    IL_00f5:  ldloc.2
    IL_00f6:  callvirt   instance uint16 ['Assembly-CSharp']Segment::GetCube(int64,
                                                                             int64,
                                                                             int64)
    IL_00fb:  stloc.s    V_4
    IL_00fd:  ldloc.s    V_4
    IL_00ff:  call       bool ['Assembly-CSharp']CubeHelper::IsCubeTransparent(int32)
    IL_0104:  brtrue.s   IL_010f

    IL_0106:  ldloc.s    V_4
    IL_0108:  call       bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_010d:  brfalse.s  IL_0118

    IL_010f:  ldarg.0
    IL_0110:  ldc.i4.0
    IL_0111:  call       instance void LaserLogicGate::SetNewState(valuetype LaserLogicGate/eState)
    IL_0116:  br.s       IL_0133

    IL_0118:  ldarg.0
    IL_0119:  ldfld      float32 LaserLogicGate::mrStateTimer
    IL_011e:  ldc.r4     3.
    IL_0123:  ble.un.s   IL_0133

    IL_0125:  ldarg.0
    IL_0126:  ldc.i4.1
    IL_0127:  stfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_012c:  ldarg.0
    IL_012d:  ldc.i4.0
    IL_012e:  call       instance void LaserLogicGate::SetNewState(valuetype LaserLogicGate/eState)
    IL_0133:  ldarg.0
    IL_0134:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_0139:  ldc.i4.3
    IL_013a:  bne.un     IL_0269

    IL_013f:  ldarg.0
    IL_0140:  ldarg.0
    IL_0141:  ldfld      int64 LaserLogicGate::mEntityX
    IL_0146:  ldarg.0
    IL_0147:  ldfld      int64 LaserLogicGate::mEntityY
    IL_014c:  ldarg.0
    IL_014d:  ldfld      int64 LaserLogicGate::mEntityZ
    IL_0152:  call       instance class ['Assembly-CSharp']Segment ['Assembly-CSharp']MachineEntity::AttemptGetSegment(int64,
                                                                                                                       int64,
                                                                                                                       int64)
    IL_0157:  stloc.s    V_5
    IL_0159:  ldloc.s    V_5
    IL_015b:  brtrue.s   IL_015e

    IL_015d:  ret

    IL_015e:  ldloc.s    V_5
    IL_0160:  ldarg.0
    IL_0161:  ldfld      int64 LaserLogicGate::mEntityX
    IL_0166:  ldarg.0
    IL_0167:  ldfld      int64 LaserLogicGate::mEntityY
    IL_016c:  ldarg.0
    IL_016d:  ldfld      int64 LaserLogicGate::mEntityZ
    IL_0172:  callvirt   instance uint16 ['Assembly-CSharp']Segment::GetCube(int64,
                                                                             int64,
                                                                             int64)
    IL_0177:  stloc.s    V_6
    IL_0179:  ldloc.s    V_6
    IL_017b:  call       bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_0180:  brfalse    IL_0251

    IL_0185:  ldloc.s    V_5
    IL_0187:  ldarg.0
    IL_0188:  ldfld      int64 LaserLogicGate::mEntityX
    IL_018d:  ldarg.0
    IL_018e:  ldfld      int64 LaserLogicGate::mEntityY
    IL_0193:  ldarg.0
    IL_0194:  ldfld      int64 LaserLogicGate::mEntityZ
    IL_0199:  callvirt   instance class ['Assembly-CSharp']SegmentEntity ['Assembly-CSharp']Segment::SearchEntity(int64,
                                                                                                                  int64,
                                                                                                                  int64)
    IL_019e:  isinst     ILogicReciever
    IL_01a3:  stloc.s    V_7
    IL_01a5:  ldloc.s    V_7
    IL_01a7:  brfalse    IL_0269

    IL_01ac:  ldc.i4.0
    IL_01ad:  stloc.s    V_8
    IL_01af:  ldarg.0
    IL_01b0:  ldfld      int64 LaserLogicGate::mEntityX
    IL_01b5:  ldarg.0
    IL_01b6:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_01bb:  ble.s      IL_01c3

    IL_01bd:  ldc.i4.s   16
    IL_01bf:  stloc.s    V_8
    IL_01c1:  br.s       IL_0221

    IL_01c3:  ldarg.0
    IL_01c4:  ldfld      int64 LaserLogicGate::mEntityX
    IL_01c9:  ldarg.0
    IL_01ca:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_01cf:  bge.s      IL_01d7

    IL_01d1:  ldc.i4.s   32
    IL_01d3:  stloc.s    V_8
    IL_01d5:  br.s       IL_0221

    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      int64 LaserLogicGate::mEntityY
    IL_01dd:  ldarg.0
    IL_01de:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_01e3:  ble.s      IL_01ea

    IL_01e5:  ldc.i4.2
    IL_01e6:  stloc.s    V_8
    IL_01e8:  br.s       IL_0221

    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      int64 LaserLogicGate::mEntityY
    IL_01f0:  ldarg.0
    IL_01f1:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_01f6:  bge.s      IL_01fd

    IL_01f8:  ldc.i4.1
    IL_01f9:  stloc.s    V_8
    IL_01fb:  br.s       IL_0221

    IL_01fd:  ldarg.0
    IL_01fe:  ldfld      int64 LaserLogicGate::mEntityZ
    IL_0203:  ldarg.0
    IL_0204:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_0209:  ble.s      IL_0210

    IL_020b:  ldc.i4.8
    IL_020c:  stloc.s    V_8
    IL_020e:  br.s       IL_0221

    IL_0210:  ldarg.0
    IL_0211:  ldfld      int64 LaserLogicGate::mEntityZ
    IL_0216:  ldarg.0
    IL_0217:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_021c:  bge.s      IL_0221

    IL_021e:  ldc.i4.4
    IL_021f:  stloc.s    V_8
    IL_0221:  ldloc.s    V_7
    IL_0223:  ldloc.s    V_8
    IL_0225:  callvirt   instance int8 ILogicReciever::FindFaceInputIndex(uint8)
              stloc.s    faceInputIndex
              ldloc.s    faceInputIndex
              ldc.i4.0
    IL_022a:  blt.s      IL_0269
    
              ldarg.0
              ldfld      class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> LaserLogicGate::mLogicNode
              ldc.i4.0
              ldloc.s    V_7
              callvirt   instance class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> ILogicReciever::GetLogicNode()
              ldloc      faceInputIndex
              callvirt   instance void class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8>::RegisterHead(int32, class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<!0>, int32)

    IL_023b:  ldarg.0
    IL_023c:  dup
    IL_023d:  ldfld      int32 LaserLogicGate::mnNumTransfers
    IL_0242:  ldc.i4.1
    IL_0243:  add
    IL_0244:  stfld      int32 LaserLogicGate::mnNumTransfers
    IL_0249:  ldarg.0
    IL_024a:  callvirt   instance void ['Assembly-CSharp']SegmentEntity::MarkDirtyDelayed()
    IL_024f:  br.s       IL_0269

    IL_0251:  ldstr      "Laser can no longer find an entity - what happened\?"
    IL_0256:  call       void [UnityEngine]UnityEngine.Debug::LogWarning(object)
    
              ldarg.0
              ldfld      class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> LaserLogicGate::mLogicNode
              ldc.i4.0
              callvirt   instance void class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8>::DeregisterHead(int32)
              
    IL_025b:  ldarg.0
    IL_025c:  ldc.i4.1
    IL_025d:  stfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0262:  ldarg.0
    IL_0263:  ldc.i4.0
    IL_0264:  stfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_0269:  ldarg.0
    IL_026a:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_026f:  brfalse    IL_038f

    IL_0274:  ldarg.0
    IL_0275:  dup
    IL_0276:  ldfld      int32 LaserLogicGate::mnStrokeDist
    IL_027b:  ldc.i4.1
    IL_027c:  add
    IL_027d:  stfld      int32 LaserLogicGate::mnStrokeDist
    IL_0282:  ldarg.0
    IL_0283:  dup
    IL_0284:  ldfld      int32 LaserLogicGate::mnStrokeDist
    IL_0289:  ldarg.0
    IL_028a:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_028f:  rem
    IL_0290:  stfld      int32 LaserLogicGate::mnStrokeDist
    IL_0295:  ldarg.0
    IL_0296:  ldfld      int32 LaserLogicGate::mnStrokeDist
    IL_029b:  ldc.i4.1
    IL_029c:  blt        IL_038f

    IL_02a1:  ldarg.0
    IL_02a2:  ldfld      int32 LaserLogicGate::mnStrokeDist
    IL_02a7:  ldarg.0
    IL_02a8:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_02ad:  bge        IL_038f

    IL_02b2:  ldarg.0
    IL_02b3:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_02b8:  stloc.s    V_9
    IL_02ba:  ldarg.0
    IL_02bb:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_02c0:  stloc.s    V_10
    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_02c8:  stloc.s    V_11
    IL_02ca:  ldloc.s    V_9
    IL_02cc:  ldarg.0
    IL_02cd:  ldfld      int32 LaserLogicGate::mnStrokeDist
    IL_02d2:  conv.r4
    IL_02d3:  ldarg.0
    IL_02d4:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_02d9:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_02de:  mul
    IL_02df:  conv.i8
    IL_02e0:  add
    IL_02e1:  stloc.s    V_9
    IL_02e3:  ldloc.s    V_10
    IL_02e5:  ldarg.0
    IL_02e6:  ldfld      int32 LaserLogicGate::mnStrokeDist
    IL_02eb:  conv.r4
    IL_02ec:  ldarg.0
    IL_02ed:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_02f2:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::y
    IL_02f7:  mul
    IL_02f8:  conv.i8
    IL_02f9:  add
    IL_02fa:  stloc.s    V_10
    IL_02fc:  ldloc.s    V_11
    IL_02fe:  ldarg.0
    IL_02ff:  ldfld      int32 LaserLogicGate::mnStrokeDist
    IL_0304:  conv.r4
    IL_0305:  ldarg.0
    IL_0306:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_030b:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::z
    IL_0310:  mul
    IL_0311:  conv.i8
    IL_0312:  add
    IL_0313:  stloc.s    V_11
    IL_0315:  ldarg.0
    IL_0316:  ldloc.s    V_9
    IL_0318:  ldloc.s    V_10
    IL_031a:  ldloc.s    V_11
    IL_031c:  call       instance class ['Assembly-CSharp']Segment ['Assembly-CSharp']MachineEntity::AttemptGetSegment(int64,
                                                                                                                       int64,
                                                                                                                       int64)
    IL_0321:  stloc.s    V_12
    IL_0323:  ldloc.s    V_12
    IL_0325:  brtrue.s   IL_0328

    IL_0327:  ret

    IL_0328:  ldloc.s    V_12
    IL_032a:  ldloc.s    V_9
    IL_032c:  ldloc.s    V_10
    IL_032e:  ldloc.s    V_11
    IL_0330:  callvirt   instance uint16 ['Assembly-CSharp']Segment::GetCube(int64,
                                                                             int64,
                                                                             int64)
    IL_0335:  stloc.s    V_13
    IL_0337:  ldc.i4.0
    IL_0338:  stloc.s    V_14
    IL_033a:  ldloc.s    V_13
    IL_033c:  call       bool ['Assembly-CSharp']CubeHelper::IsCubeSolid(int32)
    IL_0341:  brfalse.s  IL_034f

    IL_0343:  ldloc.s    V_13
    IL_0345:  call       bool ['Assembly-CSharp']CubeHelper::IsCubeGlass(int32)
    IL_034a:  brtrue.s   IL_034f

    IL_034c:  ldc.i4.1
    IL_034d:  stloc.s    V_14
    IL_034f:  ldloc.s    V_13
    IL_0351:  call       bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_0356:  brfalse.s  IL_035b

    IL_0358:  ldc.i4.1
    IL_0359:  stloc.s    V_14
    IL_035b:  ldloc.s    V_14
    IL_035d:  brfalse.s  IL_038f

    IL_035f:  ldarg.0
    IL_0360:  ldsfld     class ['Assembly-CSharp']WorldScript ['Assembly-CSharp']WorldScript::'instance'
    IL_0365:  ldfld      class ['Assembly-CSharp']WorldFrustrum ['Assembly-CSharp']WorldScript::mPlayerFrustrum
    IL_036a:  ldloc.s    V_9
    IL_036c:  ldloc.s    V_10
    IL_036e:  ldloc.s    V_11
    IL_0370:  callvirt   instance valuetype [UnityEngine]UnityEngine.Vector3 ['Assembly-CSharp']WorldFrustrum::GetCoordsToUnity(int64,
                                                                                                                                int64,
                                                                                                                                int64)
    IL_0375:  stfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_037a:  ldarg.0
    IL_037b:  ldarg.0
    IL_037c:  ldfld      int32 LaserLogicGate::mnStrokeDist
    IL_0381:  ldc.i4.1
    IL_0382:  sub
    IL_0383:  stfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0388:  ldarg.0
    IL_0389:  ldc.i4.0
    IL_038a:  stfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_038f:  ret
  } // end of method LaserLogicGate::UpdateLaser

  .method public hidebysig virtual instance void 
          UnitySuspended() cil managed
  {
    // Code size       36 (0x24)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_000e:  ldarg.0
    IL_000f:  ldnull
    IL_0010:  stfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_0015:  ldarg.0
    IL_0016:  ldnull
    IL_0017:  stfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_0023:  ret
  } // end of method LaserLogicGate::UnitySuspended

  .method public hidebysig virtual instance void 
          UnityUpdate() cil managed
  {
    // Code size       1084 (0x43c)
    .maxstack  6
    .locals init (bool V_0,
             class [UnityEngine]UnityEngine.Transform V_1,
             bool V_2,
             class Segment V_3,
             class Segment V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 beamWidth)
    IL_0000:  ldarg.0
    IL_0001:  dup
    IL_0002:  ldfld      int32 LaserLogicGate::mnUpdates
    IL_0007:  ldc.i4.1
    IL_0008:  add
    IL_0009:  stfld      int32 LaserLogicGate::mnUpdates
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      bool LaserLogicGate::mbLinkedToGO
    IL_0016:  brtrue     IL_01c3

    IL_001b:  ldarg.0
    IL_001c:  ldfld      class GameObjectWrapper SegmentEntity::mWrapper
    IL_0021:  brfalse    IL_0036

    IL_0026:  ldarg.0
    IL_0027:  ldfld      class GameObjectWrapper SegmentEntity::mWrapper
    IL_002c:  ldfld      bool GameObjectWrapper::mbHasGameObject
    IL_0031:  brtrue     IL_0037

    IL_0036:  ret

    IL_0037:  ldarg.0
    IL_0038:  ldfld      class GameObjectWrapper SegmentEntity::mWrapper
    IL_003d:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> GameObjectWrapper::mGameObjectList
    IL_0042:  brtrue     IL_0051

    IL_0047:  ldstr      "Ore Extractor missing game object #0\?"
    IL_004c:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class GameObjectWrapper SegmentEntity::mWrapper
    IL_0057:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> GameObjectWrapper::mGameObjectList
    IL_005c:  ldc.i4.0
    IL_005d:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject>::get_Item(int32)
    IL_0062:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.GameObject::get_gameObject()
    IL_0067:  ldnull
    IL_0068:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_006d:  brfalse    IL_007c

    IL_0072:  ldstr      "Ore Extractor missing game object #0 (GO)\?"
    IL_0077:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class GameObjectWrapper SegmentEntity::mWrapper
    IL_0083:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> GameObjectWrapper::mGameObjectList
    IL_0088:  ldc.i4.0
    IL_0089:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject>::get_Item(int32)
    IL_008e:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.GameObject::get_gameObject()
    IL_0093:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_0098:  ldstr      "Laser Impact"
    IL_009d:  call       class [UnityEngine]UnityEngine.Transform Extensions::Search(class [UnityEngine]UnityEngine.Transform,
                                                                                     string)
    IL_00a2:  callvirt   instance !!0 [UnityEngine]UnityEngine.Component::GetComponent<class [UnityEngine]UnityEngine.Light>()
    IL_00a7:  stfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class GameObjectWrapper SegmentEntity::mWrapper
    IL_00e2:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> GameObjectWrapper::mGameObjectList
    IL_00e7:  ldc.i4.0
    IL_00e8:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject>::get_Item(int32)
    IL_00ed:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.GameObject::get_gameObject()
    IL_00f2:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_00f7:  ldstr      "Laser"
    IL_00fc:  call       class [UnityEngine]UnityEngine.Transform Extensions::Search(class [UnityEngine]UnityEngine.Transform,
                                                                                     string)
    IL_0101:  stloc.1
    IL_0102:  ldloc.1
    IL_0103:  ldnull
    IL_0104:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_0109:  brfalse    IL_0118

    IL_010e:  ldstr      "Laser emitter can't find Trans-form!"
    IL_0113:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_0118:  ldarg.0
    IL_0119:  ldloc.1
    IL_011a:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.Component::get_gameObject()
    IL_011f:  stfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_0124:  ldarg.0
    IL_0125:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_012a:  ldnull
    IL_012b:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_0130:  brfalse    IL_013f

    IL_0135:  ldstr      "Laser emitter can't find La-ser!"
    IL_013a:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_013f:  ldarg.0
    IL_0140:  ldarg.0
    IL_0141:  ldfld      class GameObjectWrapper SegmentEntity::mWrapper
    IL_0146:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> GameObjectWrapper::mGameObjectList
    IL_014b:  ldc.i4.0
    IL_014c:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject>::get_Item(int32)
    IL_0151:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.GameObject::get_gameObject()
    IL_0156:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_015b:  ldstr      "Laser Impact"
    IL_0160:  call       class [UnityEngine]UnityEngine.Transform Extensions::Search(class [UnityEngine]UnityEngine.Transform,
                                                                                     string)
    IL_0165:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.Component::get_gameObject()
    IL_016a:  stfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_016f:  ldarg.0
    IL_0170:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_0175:  ldnull
    IL_0176:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_017b:  brfalse    IL_018a

    IL_0180:  ldstr      "Laser emitter can't find Beam Impact!"
    IL_0185:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_018a:  
    IL_01ba:  ldarg.0
    IL_01bb:  ldc.i4.1
    IL_01bc:  stfld      bool LaserLogicGate::mbLinkedToGO
    IL_01c1:  ldc.i4.1
    IL_01c2:  stloc.0
    IL_01c3:  ldarg.0
    IL_01c4:  call       instance void LaserLogicGate::ConfigLOD()
    IL_01c9:  ldarg.0
    IL_01ca:  ldfld      float32 SegmentEntity::mDistanceToPlayer
    IL_01cf:  ldc.r4     32.
    IL_01d4:  bge.un     IL_01f6

    IL_01e5:  ldarg.0
    IL_01e6:  ldfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_01eb:  ldc.i4.1
    IL_01ec:  callvirt   instance void [UnityEngine]UnityEngine.Behaviour::set_enabled(bool)
    IL_01f1:  br         IL_020e

    IL_01f6:  
    IL_0202:  ldarg.0
    IL_0203:  ldfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_0208:  ldc.i4.0
    IL_0209:  callvirt   instance void [UnityEngine]UnityEngine.Behaviour::set_enabled(bool)
    IL_020e:  ldc.i4.1
    IL_020f:  stloc.2
    IL_0210:  ldarg.0
    IL_0211:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 SegmentEntity::mVectorToPlayer
    IL_0216:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::y
    IL_021b:  ldc.r4     128.
    IL_0220:  bgt        IL_023a

    IL_0225:  ldarg.0
    IL_0226:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 SegmentEntity::mVectorToPlayer
    IL_022b:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::y
    IL_0230:  ldc.r4     -128.
    IL_0235:  bge.un     IL_023c

    IL_023a:  ldc.i4.0
    IL_023b:  stloc.2
    IL_023c:  ldarg.0
    IL_023d:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_0242:  ldc.i4.3
    IL_0243:  bne.un     IL_02df

    IL_0248:  ldarg.0
    IL_0249:  ldfld      class Segment SegmentEntity::mSegment
    IL_024e:  ldfld      bool Segment::mbOutOfView
    IL_0253:  brfalse    IL_02df

    IL_0258:  ldarg.0
    IL_0259:  ldarg.0
    IL_025a:  ldfld      int64 LaserLogicGate::mEntityX
    IL_025f:  ldarg.0
    IL_0260:  ldfld      int64 LaserLogicGate::mEntityY
    IL_0265:  ldarg.0
    IL_0266:  ldfld      int64 LaserLogicGate::mEntityZ
    IL_026b:  call       instance class Segment MachineEntity::AttemptGetSegment(int64,
                                                                                 int64,
                                                                                 int64)
    IL_0270:  stloc.3
    IL_0271:  ldarg.0
    IL_0272:  ldarg.0
    IL_0273:  ldfld      int64 LaserLogicGate::mEntityX
    IL_0278:  ldc.i4.2
    IL_0279:  conv.i8
    IL_027a:  div
    IL_027b:  ldarg.0
    IL_027c:  ldfld      int64 SegmentEntity::mnX
    IL_0281:  ldc.i4.2
    IL_0282:  conv.i8
    IL_0283:  div
    IL_0284:  add
    IL_0285:  ldarg.0
    IL_0286:  ldfld      int64 LaserLogicGate::mEntityY
    IL_028b:  ldc.i4.2
    IL_028c:  conv.i8
    IL_028d:  div
    IL_028e:  ldarg.0
    IL_028f:  ldfld      int64 SegmentEntity::mnY
    IL_0294:  ldc.i4.2
    IL_0295:  conv.i8
    IL_0296:  div
    IL_0297:  add
    IL_0298:  ldarg.0
    IL_0299:  ldfld      int64 LaserLogicGate::mEntityZ
    IL_029e:  ldc.i4.2
    IL_029f:  conv.i8
    IL_02a0:  div
    IL_02a1:  ldarg.0
    IL_02a2:  ldfld      int64 SegmentEntity::mnZ
    IL_02a7:  ldc.i4.2
    IL_02a8:  conv.i8
    IL_02a9:  div
    IL_02aa:  add
    IL_02ab:  call       instance class Segment MachineEntity::AttemptGetSegment(int64,
                                                                                 int64,
                                                                                 int64)
    IL_02b0:  stloc.s    V_4
    IL_02b2:  ldloc.3
    IL_02b3:  brfalse    IL_02bf

    IL_02b8:  ldloc.s    V_4
    IL_02ba:  brtrue     IL_02c6

    IL_02bf:  ldc.i4.0
    IL_02c0:  stloc.2
    IL_02c1:  br         IL_02df

    IL_02c6:  ldloc.3
    IL_02c7:  ldfld      bool Segment::mbOutOfView
    IL_02cc:  brfalse    IL_02df

    IL_02d1:  ldloc.s    V_4
    IL_02d3:  ldfld      bool Segment::mbOutOfView
    IL_02d8:  brfalse    IL_02df

    IL_02dd:  ldc.i4.0
    IL_02de:  stloc.2
    IL_02df:  ldloc.2
    IL_02e0:  ldarg.0
    IL_02e1:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_02e6:  callvirt   instance bool [UnityEngine]UnityEngine.GameObject::get_activeSelf()
    IL_02eb:  beq        IL_02fc

    IL_02f0:  ldarg.0
    IL_02f1:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_02f6:  ldloc.2
    IL_02f7:  callvirt   instance void [UnityEngine]UnityEngine.GameObject::SetActive(bool)
    IL_02fc:  ldarg.0
    IL_02fd:  ldfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_0302:  ldarg.0
    IL_0303:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0308:  conv.r4
    IL_0309:  bne.un     IL_0314

    IL_030e:  ldloc.0
    IL_030f:  brfalse    IL_03cb

    IL_0314:  ldarg.0
    IL_0315:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_031a:  conv.r4
    IL_031b:  ldarg.0
    IL_031c:  ldfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_0321:  sub
    IL_0322:  stloc.s    V_5
    IL_0324:  ldloc.s    V_5
    IL_0326:  ldc.r4     0.1
    IL_032b:  bge.un     IL_0342

    IL_0330:  ldarg.0
    IL_0331:  ldarg.0
    IL_0332:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0337:  conv.r4
    IL_0338:  stfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_033d:  br         IL_0365

    IL_0342:  ldarg.0
    IL_0343:  dup
    IL_0344:  ldfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_0349:  ldloc.s    V_5
    IL_034b:  call       float32 [UnityEngine]UnityEngine.Time::get_deltaTime()
    IL_0350:  mul
    IL_0351:  ldarg.0
    IL_0352:  ldfld      uint16 MachineEntity::mValue
    IL_0357:  conv.r4
    IL_0358:  ldc.r4     8.
    IL_035d:  add
    IL_035e:  mul
    IL_035f:  add
    IL_0360:  stfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_0365:  ldarg.0
    IL_0366:  ldfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_036b:  ldc.r4     1.
    IL_0370:  sub
    IL_0371:  stloc.s    V_6
    IL_0373:  ldarg.0
    IL_0374:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_0379:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_037e:  ldloc.s    V_6
    IL_0380:  ldc.r4     1.
    IL_0385:  ldc.r4     1.
    IL_038a:  newobj     instance void [UnityEngine]UnityEngine.Vector3::.ctor(float32,
                                                                               float32,
                                                                               float32)
    IL_038f:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_localScale(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_0394:  ldarg.0
    IL_0395:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_039a:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_039f:  ldarg.0
    IL_03a0:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_03a5:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_03aa:  callvirt   instance valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Transform::get_position()
    IL_03af:  ldarg.0
    IL_03b0:  ldfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_03b5:  ldloc.s    V_6
    IL_03b7:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::op_Multiply(valuetype [UnityEngine]UnityEngine.Vector3,
                                                                                                                  float32)
    IL_03bc:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::op_Addition(valuetype [UnityEngine]UnityEngine.Vector3,
                                                                                                                  valuetype [UnityEngine]UnityEngine.Vector3)
    IL_03c1:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_position(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_03c6:  br         IL_04e4

    IL_03cb:  ldarg.0
    IL_03cc:  ldfld      float32 SegmentEntity::mDistanceToPlayer
    IL_03d1:  ldc.r4     68.
    IL_03d6:  bge.un     IL_0448

    IL_03db:  ldarg.0
    IL_03dc:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_03e1:  ldc.i4.1
    IL_03e2:  beq        IL_03f3

    IL_03e7:  ldarg.0
    IL_03e8:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_03ed:  ldc.i4.3
    IL_03ee:  bne.un     IL_0424

    IL_03f3:  ldc.r4     0.40000001
    IL_03f8:  ldc.r4     0.80000001
    IL_03fd:  call       float32 [UnityEngine]UnityEngine.Random::Range(float32,
                                                                        float32)
    IL_0402:  stloc.s    V_7
    IL_0404:  ldarg.0
    IL_0405:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_040a:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_040f:  ldloc.s    V_7
    IL_0411:  ldloc.s    V_7
    IL_0413:  ldloc.s    V_7
    IL_0415:  newobj     instance void [UnityEngine]UnityEngine.Vector3::.ctor(float32,
                                                                               float32,
                                                                               float32)
    IL_041a:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_localScale(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_041f:  br         IL_0448

    IL_0424:  ldarg.0
    IL_0425:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_042a:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_042f:  ldc.r4     0.15000001
    IL_0434:  ldc.r4     0.15000001
    IL_0439:  ldc.r4     0.15000001
    IL_043e:  newobj     instance void [UnityEngine]UnityEngine.Vector3::.ctor(float32,
                                                                               float32,
                                                                               float32)
    IL_0443:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_localScale(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_0448:  ldarg.0
    IL_0449:  ldfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_044e:  ldc.r4     1.
    IL_0453:  sub
    IL_0454:  stloc.s    V_8
    IL_0456:  ldarg.0
    IL_0457:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_045c:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    
              
              ldarg.0
              ldfld      uint8 LaserLogicGate::mbOutput
              dup
              
              // If output is 0, load -14 so that beam width is much smaller.
              brtrue     NONZERO
              pop
              ldc.i4     -14
              
              // Output / 255 * .9 + .1
    NONZERO:  conv.r4
              ldc.r4     255.0
              div
              ldc.r4     0.9
              mul
              ldc.r4     0.1
              add
              stloc.s    beamWidth
              
    IL_0461:  ldloc.s    V_8
              ldloc.s    beamWidth
              ldloc.s    beamWidth
    IL_046f:  newobj     instance void [UnityEngine]UnityEngine.Vector3::.ctor(float32,
                                                                               float32,
                                                                               float32)
    IL_0474:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_localScale(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_0479:  ldarg.0
    IL_047a:  ldfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
              ldloc.s    beamWidth
    IL_0485:  ldc.r4     2.
    IL_048a:  mul
    IL_048b:  callvirt   instance void [UnityEngine]UnityEngine.Light::set_intensity(float32)
    
              // Simplified from original to remove branching
              ldarg.0
              ldfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
              callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.Component::get_gameObject()
    IL_04a2:  ldloc.s    beamWidth
    IL_04a8:  ldc.r4     0.1
              cgt
              callvirt   instance void [UnityEngine]UnityEngine.GameObject::SetActive(bool)
              
    IL_04e4:  ldarg.0
    IL_04e5:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_04ea:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_04ef:  ldc.r4     -999.
    IL_04f4:  beq        IL_0579

    IL_04f9:  ldarg.0
    IL_04fa:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_04ff:  dup
    IL_0500:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_0505:  ldc.r4     0.5
    IL_050a:  add
    IL_050b:  stfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_0510:  ldarg.0
    IL_0511:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_0516:  dup
    IL_0517:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::y
    IL_051c:  ldc.r4     0.5
    IL_0521:  add
    IL_0522:  stfld      float32 [UnityEngine]UnityEngine.Vector3::y
    IL_0527:  ldarg.0
    IL_0528:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_052d:  dup
    IL_052e:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::z
    IL_0533:  ldc.r4     0.5
    IL_0538:  add
    IL_0539:  stfld      float32 [UnityEngine]UnityEngine.Vector3::z
    IL_053e:  ldsfld     class SurvivalParticleManager SurvivalParticleManager::'instance'
    IL_0543:  ldfld      class [UnityEngine]UnityEngine.ParticleSystem SurvivalParticleManager::LPTImpactFailEffect
    IL_0548:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.Component::get_transform()
    IL_054d:  ldarg.0
    IL_054e:  ldfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_0553:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_position(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_0558:  ldsfld     class SurvivalParticleManager SurvivalParticleManager::'instance'
    IL_055d:  ldfld      class [UnityEngine]UnityEngine.ParticleSystem SurvivalParticleManager::LPTImpactFailEffect
    IL_0562:  ldc.i4.s   50
    IL_0564:  callvirt   instance void [UnityEngine]UnityEngine.ParticleSystem::Emit(int32)
    IL_0569:  ldarg.0
    IL_056a:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_056f:  ldc.r4     -999.
    IL_0574:  stfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_0579:  ret
  } // end of method LaserLogicGate::UnityUpdate

  .method private hidebysig instance void 
          ConfigLOD() cil managed
  {
    .maxstack  4
    .locals init (bool V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      float32 SegmentEntity::mDotWithPlayerForwards
    IL_0008:  ldc.r4     0.0
    IL_000d:  bge.un     IL_0024

    IL_0012:  ldarg.0
    IL_0013:  ldfld      float32 SegmentEntity::mDistanceToPlayer
    IL_0018:  ldc.r4     4.
    IL_001d:  ble.un     IL_0024

    IL_0022:  ldc.i4.1
    IL_0023:  stloc.0
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Segment SegmentEntity::mSegment
    IL_002a:  ldfld      bool Segment::mbOutOfView
    IL_002f:  brfalse    IL_0036

    IL_0034:  ldc.i4.1
    IL_0035:  stloc.0
    IL_0036:  ldarg.0
    IL_0037:  ldfld      float32 SegmentEntity::mDistanceToPlayer
    IL_003c:  ldc.r4     96.
    IL_0041:  ble.un     IL_0048

    IL_0046:  ldc.i4.1
    IL_0047:  stloc.0
    IL_0048:  ldloc.0
    IL_0049:  ldarg.0
    IL_004a:  ldfld      bool LaserLogicGate::mbIsBehindPlayer
    IL_004f:  beq        IL_006c

    IL_0054:  
    IL_0065:  ldarg.0
    IL_0066:  ldloc.0
    IL_0067:  stfld      bool LaserLogicGate::mbIsBehindPlayer
    IL_006c:  ret
  } // end of method LaserLogicGate::ConfigLOD

  .method public hidebysig virtual instance void 
          OnUpdateRotation(uint8 newFlags) cil managed
  {
    // Code size       60 (0x3c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void ['Assembly-CSharp']MachineEntity::OnUpdateRotation(uint8)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      uint8 ['Assembly-CSharp']MachineEntity::mFlags
    IL_000e:  call       valuetype [UnityEngine]UnityEngine.Quaternion ['Assembly-CSharp']SegmentCustomRenderer::GetRotationQuaternion(uint8)
    IL_0013:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::get_forward()
    IL_0018:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Quaternion::op_Multiply(valuetype [UnityEngine]UnityEngine.Quaternion,
                                                                                                                     valuetype [UnityEngine]UnityEngine.Vector3)
    IL_001d:  stfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_0022:  ldarg.0
    IL_0023:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_0028:  call       instance void [UnityEngine]UnityEngine.Vector3::Normalize()
    IL_002d:  ldarg.0
    IL_002e:  ldc.i4.0
    IL_002f:  stfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0034:  ldarg.0
    IL_0035:  ldc.i4.0
    IL_0036:  stfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
              ldarg.0
              callvirt   instance void LaserLogicGate::ResetLogic()
    IL_003b:  ret
  } // end of method LaserLogicGate::OnUpdateRotation

  .method public hidebysig virtual instance bool 
          ShouldSave() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method LaserLogicGate::ShouldSave

  .method public hidebysig virtual instance bool 
          ShouldNetworkUpdate() cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method LaserLogicGate::ShouldNetworkUpdate
  
  .method private hidebysig instance void 
          ResetLogic() cil managed
  {
              ldsfld     class LogicManager LogicManager::'instance'
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph LogicManager::mGraph
              ldarg.0
              ldfld      class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8> LaserLogicGate::mLogicNode
              callvirt   instance void [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph::RemoveNode(class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>)
              
              ldarg.0
              ldfld      class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8> LaserLogicGate::mLogicNode
              callvirt   instance void class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>::DisconnectAll()
              ret
  }
  
  .method public hidebysig newslot virtual instance class 
          [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8>
          GetLogicNode() cil managed
  {
              ldarg.0
              ldfld     class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> LaserLogicGate::mLogicNode
              ret
  }

  .method public hidebysig newslot abstract virtual 
          instance int8  FindFaceInputIndex(uint8 face) cil managed
  {
  } // end of method LaserLogicGate::FindFaceInputIndex

  .method public hidebysig static uint8  CalcOppositeFace(uint8 face) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   21
    IL_0003:  and
    IL_0004:  brfalse.s  IL_000b

    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  shl
    IL_0009:  conv.u1
    IL_000a:  ret

    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.1
    IL_000d:  shr
    IL_000e:  conv.u1
    IL_000f:  ret
  } // end of method LaserLogicGate::CalcOppositeFace

  .method public hidebysig static uint8  CalcFrontFace(uint8 'flags') cil managed
  {
    // Code size       89 (0x59)
    .maxstack  2
    .locals init (uint8 V_0,
             uint8 V_1,
             uint8 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.6
    IL_0002:  shr
    IL_0003:  conv.u1
    IL_0004:  stloc.0
    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.s   63
    IL_0008:  and
    IL_0009:  conv.u1
    IL_000a:  stloc.1
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.2
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.1
    IL_000f:  and
    IL_0010:  brfalse.s  IL_0035

    IL_0012:  ldloc.1
    IL_0013:  ldc.i4.s   13
    IL_0015:  and
    IL_0016:  brfalse.s  IL_001d

    IL_0018:  ldc.i4.s   16
    IL_001a:  stloc.2
    IL_001b:  br.s       IL_004b

    IL_001d:  ldloc.1
    IL_001e:  ldc.i4.2
    IL_001f:  and
    IL_0020:  brfalse.s  IL_0027

    IL_0022:  ldc.i4.s   32
    IL_0024:  stloc.2
    IL_0025:  br.s       IL_004b

    IL_0027:  ldloc.1
    IL_0028:  ldc.i4.s   22
    IL_002a:  and
    IL_002b:  brfalse.s  IL_0031

    IL_002d:  ldc.i4.1
    IL_002e:  stloc.2
    IL_002f:  br.s       IL_004b

    IL_0031:  ldc.i4.2
    IL_0032:  stloc.2
    IL_0033:  br.s       IL_004b

    IL_0035:  ldloc.1
    IL_0036:  ldc.i4.s   51
    IL_0038:  and
    IL_0039:  brfalse.s  IL_0040

    IL_003b:  ldc.i4.s   4
    IL_003d:  stloc.2
    IL_003e:  br.s       IL_004b

    IL_0040:  ldloc.1
    IL_0041:  ldc.i4.8
    IL_0042:  and
    IL_0043:  brfalse.s  IL_0049

    IL_0045:  ldc.i4.1
    IL_0046:  stloc.2
    IL_0047:  br.s       IL_004b

    IL_0049:  ldc.i4.2
    IL_004a:  stloc.2
    IL_004b:  ldloc.0
    IL_004c:  ldc.i4.2
    IL_004d:  and
    IL_004e:  brfalse.s  IL_0057

    IL_0050:  ldloc.2
    IL_0051:  call       uint8 LaserLogicGate::CalcOppositeFace(uint8)
    IL_0056:  ret

    IL_0057:  ldloc.2
    IL_0058:  ret
  } // end of method LaserLogicGate::CalcFrontFace

} // end of class LaserLogicGate
