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
  .field private class [UnityEngine]UnityEngine.Light TransmissionLight
  .field private class [UnityEngine]UnityEngine.GameObject Beam
  .field private class [UnityEngine]UnityEngine.GameObject BeamImpact
  .field private class [UnityEngine]UnityEngine.GameObject EmitterObject
  .field public valuetype LaserLogicGate/eState meState
  .field public int32 mnNumTransfers
  .field private float32 mrStateTimer
  .field private valuetype [UnityEngine]UnityEngine.Vector3 mImpactPos
  .field private bool mbIsBehindPlayer
  .field family uint8 mbOutput
  
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype eSegmentEntity segmentEntity,
                               valuetype SpawnableObjectEnum spawnableObject,
                               int64 x,
                               int64 y,
                               int64 z,
                               uint16 cube,
                               uint8 'flags',
                               uint16 lValue,
                               class Segment segment) cil managed
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
    IL_005c:  ret
  } // end of method LaserLogicGate::.ctor
  
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
             bool V_14)
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
    IL_0225:  callvirt   instance bool ILogicReciever::IsFaceInput(uint8)
    IL_022a:  brfalse.s  IL_0269

    IL_022c:  ldloc.s    V_7
    IL_022e:  ldarg.0
    IL_022f:  ldfld      uint8 LaserLogicGate::mbOutput
    IL_0234:  ldloc.s    V_8
    IL_0236:  callvirt   instance void ILogicReciever::SetNextValue(uint8,
                                                                      uint8)
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
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_0007:  ldarg.0
    IL_0008:  ldnull
    IL_0009:  stfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::TransmissionLight
    IL_000e:  ldarg.0
    IL_000f:  ldnull
    IL_0010:  stfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_0015:  ldarg.0
    IL_0016:  ldnull
    IL_0017:  stfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_001c:  ldarg.0
    IL_001d:  ldnull
    IL_001e:  stfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::EmitterObject
    IL_0023:  ret
  } // end of method LaserLogicGate::UnitySuspended

  .method public hidebysig virtual instance void 
          UnityUpdate() cil managed
  {
    // Code size       1084 (0x43c)
    .maxstack  6
    .locals init (class [UnityEngine]UnityEngine.Transform V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             class [UnityEngine]UnityEngine.Transform emitter)
    IL_0000:  ldarg.0
    IL_0001:  dup
    IL_0002:  ldfld      int32 LaserLogicGate::mnUpdates
    IL_0007:  ldc.i4.1
    IL_0008:  add
    IL_0009:  stfld      int32 LaserLogicGate::mnUpdates
    IL_000e:  ldarg.0
    IL_000f:  ldfld      bool LaserLogicGate::mbLinkedToGO
    IL_0014:  brtrue     IL_01aa

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class ['Assembly-CSharp']GameObjectWrapper ['Assembly-CSharp']SegmentEntity::mWrapper
    IL_001f:  brfalse.s  IL_002e

    IL_0021:  ldarg.0
    IL_0022:  ldfld      class ['Assembly-CSharp']GameObjectWrapper ['Assembly-CSharp']SegmentEntity::mWrapper
    IL_0027:  ldfld      bool ['Assembly-CSharp']GameObjectWrapper::mbHasGameObject
    IL_002c:  brtrue.s   IL_002f

    IL_002e:  ret

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class ['Assembly-CSharp']GameObjectWrapper ['Assembly-CSharp']SegmentEntity::mWrapper
    IL_0035:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> ['Assembly-CSharp']GameObjectWrapper::mGameObjectList
    IL_003a:  brtrue.s   IL_0046

    IL_003c:  ldstr      "Ore Extractor missing game object #0\?"
    IL_0041:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class ['Assembly-CSharp']GameObjectWrapper ['Assembly-CSharp']SegmentEntity::mWrapper
    IL_004c:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> ['Assembly-CSharp']GameObjectWrapper::mGameObjectList
    IL_0051:  ldc.i4.0
    IL_0052:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject>::get_Item(int32)
    IL_0057:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.GameObject::get_gameObject()
    IL_005c:  ldnull
    IL_005d:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_0062:  brfalse.s  IL_006e

    IL_0064:  ldstr      "Ore Extractor missing game object #0 (GO)\?"
    IL_0069:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_006e:  ldarg.0
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class ['Assembly-CSharp']GameObjectWrapper ['Assembly-CSharp']SegmentEntity::mWrapper
    IL_0075:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> ['Assembly-CSharp']GameObjectWrapper::mGameObjectList
    IL_007a:  ldc.i4.0
    IL_007b:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject>::get_Item(int32)
    IL_0080:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.GameObject::get_gameObject()
    IL_0085:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_008a:  ldstr      "Laser Impact"
    IL_008f:  call       class [UnityEngine]UnityEngine.Transform ['Assembly-CSharp']Extensions::Search(class [UnityEngine]UnityEngine.Transform,
                                                                                                        string)
    IL_0094:  callvirt instance !!0 [UnityEngine]UnityEngine.Component::GetComponent<class [UnityEngine]UnityEngine.Light>()
    IL_0099:  stfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class ['Assembly-CSharp']GameObjectWrapper ['Assembly-CSharp']SegmentEntity::mWrapper
    IL_00d4:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> ['Assembly-CSharp']GameObjectWrapper::mGameObjectList
    IL_00d9:  ldc.i4.0
    IL_00da:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject>::get_Item(int32)
    IL_00df:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.GameObject::get_gameObject()
    IL_00e4:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_00e9:  ldstr      "Laser"
    IL_00ee:  call       class [UnityEngine]UnityEngine.Transform ['Assembly-CSharp']Extensions::Search(class [UnityEngine]UnityEngine.Transform,
                                                                                                        string)
    IL_00f3:  stloc.0
    IL_00f4:  ldloc.0
    IL_00f5:  ldnull
    IL_00f6:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_00fb:  brfalse.s  IL_0107

    IL_00fd:  ldstr      "Laser emitter can't find Trans-form!"
    IL_0102:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_0107:  ldarg.0
    IL_0108:  ldloc.0
    IL_0109:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.Component::get_gameObject()
    IL_010e:  stfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_0119:  ldnull
    IL_011a:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_011f:  brfalse.s  IL_012b

    IL_0121:  ldstr      "Laser emitter can't find La-ser!"
    IL_0126:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_012b:  ldarg.0
    IL_012c:  ldarg.0
    IL_012d:  ldfld      class ['Assembly-CSharp']GameObjectWrapper ['Assembly-CSharp']SegmentEntity::mWrapper
    IL_0132:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> ['Assembly-CSharp']GameObjectWrapper::mGameObjectList
    IL_0137:  ldc.i4.0
    IL_0138:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject>::get_Item(int32)
    IL_013d:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.GameObject::get_gameObject()
    IL_0142:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_0147:  ldstr      "Laser Impact"
    IL_014c:  call       class [UnityEngine]UnityEngine.Transform ['Assembly-CSharp']Extensions::Search(class [UnityEngine]UnityEngine.Transform,
                                                                                                        string)
    IL_0151:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.Component::get_gameObject()
    IL_0156:  stfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_015b:  ldarg.0
    IL_015c:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_0161:  ldnull
    IL_0162:  call       bool [UnityEngine]UnityEngine.Object::op_Equality(class [UnityEngine]UnityEngine.Object,
                                                                           class [UnityEngine]UnityEngine.Object)
    IL_0167:  brfalse.s  IL_0173

    IL_0169:  ldstr      "Laser emitter can't find Beam Impact!"
    IL_016e:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_0173:  ldarg.0
    IL_0175:  ldfld      class ['Assembly-CSharp']GameObjectWrapper ['Assembly-CSharp']SegmentEntity::mWrapper
    IL_017a:  ldfld      class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject> ['Assembly-CSharp']GameObjectWrapper::mGameObjectList
    IL_017f:  ldc.i4.0
    IL_0180:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.List`1<class [UnityEngine]UnityEngine.GameObject>::get_Item(int32)
    IL_0185:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.GameObject::get_gameObject()
    IL_018a:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_018f:  ldstr      "Laser_Emitter"
    IL_0194:  call       class [UnityEngine]UnityEngine.Transform ['Assembly-CSharp']Extensions::Search(class [UnityEngine]UnityEngine.Transform,
                                                                                                        string)
              // Add null check
              stloc.s    emitter
              ldloc.s    emitter
              ldnull
              call bool  [UnityEngine]UnityEngine.Object::op_Inequality(class [UnityEngine]UnityEngine.Object, class [UnityEngine]UnityEngine.Object)
              brfalse.s  IL_01a3
              
              ldarg.0
              ldloc.s    emitter
    IL_0199:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.Component::get_gameObject()
    IL_019e:  stfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::EmitterObject
    IL_01a3:  ldarg.0
    IL_01a4:  ldc.i4.1
    IL_01a5:  stfld      bool LaserLogicGate::mbLinkedToGO
    IL_01aa:  ldarg.0
    IL_01ab:  call       instance void LaserLogicGate::ConfigLOD()
    IL_01b0:  ldarg.0
    IL_01b1:  ldfld      float32 ['Assembly-CSharp']MachineEntity::mDistanceToPlayer
    IL_01b6:  ldc.r4     32.
    IL_01bb:  bge.un.s   IL_01e3

    IL_01c9:  ldarg.0
    IL_01ca:  ldfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_01cf:  ldc.i4.1
    IL_01d0:  callvirt   instance void [UnityEngine]UnityEngine.Behaviour::set_enabled(bool)
    IL_01d5:  br.s       IL_01ef

    IL_01e3:  ldarg.0
    IL_01e4:  ldfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_01e9:  ldc.i4.0
    IL_01ea:  callvirt   instance void [UnityEngine]UnityEngine.Behaviour::set_enabled(bool)
    IL_01ef:  ldarg.0
    IL_01f0:  ldfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_01f5:  ldarg.0
    IL_01f6:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_01fb:  conv.r4
    IL_01fc:  beq        IL_02ac

    IL_0201:  ldarg.0
    IL_0202:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_0207:  conv.r4
    IL_0208:  ldarg.0
    IL_0209:  ldfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_020e:  sub
    IL_020f:  stloc.1
    IL_0210:  ldloc.1
    IL_0211:  ldc.r4     0.1
    IL_0216:  bge.un.s   IL_0227

    IL_0218:  ldarg.0
    IL_0219:  ldarg.0
    IL_021a:  ldfld      int32 LaserLogicGate::mnBeamStrokeLength
    IL_021f:  conv.r4
    IL_0220:  stfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_0225:  br.s       IL_0249

    IL_0227:  ldarg.0
    IL_0228:  dup
    IL_0229:  ldfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_022e:  ldloc.1
    IL_022f:  call       float32 [UnityEngine]UnityEngine.Time::get_deltaTime()
    IL_0234:  mul
    IL_0235:  ldarg.0
    IL_0236:  ldfld      uint16 ['Assembly-CSharp']MachineEntity::mValue
    IL_023b:  conv.r4
    IL_023c:  ldc.r4     4.
    IL_0241:  add
    IL_0242:  mul
    IL_0243:  add
    IL_0244:  stfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_0249:  ldarg.0
    IL_024a:  ldfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_024f:  ldc.r4     1.
    IL_0254:  sub
    IL_0255:  stloc.2
    IL_0256:  ldarg.0
    IL_0257:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_025c:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_0261:  ldloc.2
    IL_0262:  ldc.r4     1.
    IL_0267:  ldc.r4     1.
    IL_026c:  newobj     instance void [UnityEngine]UnityEngine.Vector3::.ctor(float32,
                                                                               float32,
                                                                               float32)
    IL_0271:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_localScale(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_0276:  ldarg.0
    IL_0277:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_027c:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_0281:  ldarg.0
    IL_0282:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_0287:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_028c:  callvirt   instance valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Transform::get_position()
    IL_0291:  ldarg.0
    IL_0292:  ldfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mForwards
    IL_0297:  ldloc.2
    IL_0298:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::op_Multiply(valuetype [UnityEngine]UnityEngine.Vector3,
                                                                                                                  float32)
    IL_029d:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::op_Addition(valuetype [UnityEngine]UnityEngine.Vector3,
                                                                                                                  valuetype [UnityEngine]UnityEngine.Vector3)
    IL_02a2:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_position(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_02a7:  br         IL_0397

    IL_02ac:  ldarg.0
    IL_02ad:  ldfld      float32 ['Assembly-CSharp']MachineEntity::mDistanceToPlayer
    IL_02b2:  ldc.r4     32.
    IL_02b7:  bge.un.s   IL_0319

    IL_02b9:  ldarg.0
    IL_02ba:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_02bf:  ldc.i4.1
    IL_02c0:  beq.s      IL_02cb

    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      valuetype LaserLogicGate/eState LaserLogicGate::meState
    IL_02c8:  ldc.i4.3
    IL_02c9:  bne.un.s   IL_02f5

    IL_02cb:  ldc.r4     0.40000001
    IL_02d0:  ldc.r4     0.80000001
    IL_02d5:  call       float32 [UnityEngine]UnityEngine.Random::Range(float32,
                                                                        float32)
    IL_02da:  stloc.3
    IL_02db:  ldarg.0
    IL_02dc:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_02e1:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_02e6:  ldloc.3
    IL_02e7:  ldloc.3
    IL_02e8:  ldloc.3
    IL_02e9:  newobj     instance void [UnityEngine]UnityEngine.Vector3::.ctor(float32,
                                                                               float32,
                                                                               float32)
    IL_02ee:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_localScale(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_02f3:  br.s       IL_0319

    IL_02f5:  ldarg.0
    IL_02f6:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::BeamImpact
    IL_02fb:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_0300:  ldc.r4     0.15000001
    IL_0305:  ldc.r4     0.15000001
    IL_030a:  ldc.r4     0.15000001
    IL_030f:  newobj     instance void [UnityEngine]UnityEngine.Vector3::.ctor(float32,
                                                                               float32,
                                                                               float32)
    IL_0314:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_localScale(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_0319:  ldarg.0
    IL_031a:  ldfld      float32 LaserLogicGate::mrVisualBeamLength
    IL_031f:  ldc.r4     1.
    IL_0324:  sub
    IL_0325:  stloc.s    V_4
    IL_0327:  ldc.r4     0.1
    IL_032c:  stloc.s    V_5
    IL_032e:  ldarg.0
    IL_032f:  ldfld      uint8 LaserLogicGate::mbOutput
              conv.r4
              ldc.r4     255
              div
              ldc.r4     .9
              mul
              ldc.r4     .1
              add
    IL_033b:  stloc.s    V_5
    IL_033d:  ldarg.0
    IL_033e:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::Beam
    IL_0343:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.GameObject::get_transform()
    IL_0348:  ldloc.s    V_4
    IL_034a:  ldloc.s    V_5
    IL_034c:  ldloc.s    V_5
    IL_034e:  newobj     instance void [UnityEngine]UnityEngine.Vector3::.ctor(float32,
                                                                               float32,
                                                                               float32)
    IL_0353:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_localScale(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_0358:  ldarg.0
    IL_0359:  ldfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_035e:  ldloc.s    V_5
    IL_0360:  ldc.r4     2.
    IL_0365:  mul
    IL_0366:  callvirt   instance void [UnityEngine]UnityEngine.Light::set_intensity(float32)
    IL_036b:  ldarg.0
    IL_036c:  ldfld      uint8 LaserLogicGate::mbOutput
    IL_0371:  brtrue.s   IL_0386

    IL_0373:  ldarg.0
    IL_0374:  ldfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_0379:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.Component::get_gameObject()
    IL_037e:  ldc.i4.0
    IL_037f:  callvirt   instance void [UnityEngine]UnityEngine.GameObject::SetActive(bool)
    IL_0384:  br.s       IL_0397

    IL_0386:  ldarg.0
    IL_0387:  ldfld      class [UnityEngine]UnityEngine.Light LaserLogicGate::ImpactLight
    IL_038c:  callvirt   instance class [UnityEngine]UnityEngine.GameObject [UnityEngine]UnityEngine.Component::get_gameObject()
    IL_0391:  ldc.i4.1
    IL_0392:  callvirt   instance void [UnityEngine]UnityEngine.GameObject::SetActive(bool)
    IL_0397:  ldarg.0
    IL_0398:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_039d:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_03a2:  ldc.r4     -999.
    IL_03a7:  beq        IL_043b

    IL_03ac:  ldarg.0
    IL_03ad:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_03b2:  ldarg.0
    IL_03b3:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_03b8:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_03bd:  ldc.r4     0.5
    IL_03c2:  add
    IL_03c3:  stfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_03c8:  ldarg.0
    IL_03c9:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_03ce:  ldarg.0
    IL_03cf:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_03d4:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::y
    IL_03d9:  ldc.r4     0.5
    IL_03de:  add
    IL_03df:  stfld      float32 [UnityEngine]UnityEngine.Vector3::y
    IL_03e4:  ldarg.0
    IL_03e5:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_03ea:  ldarg.0
    IL_03eb:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_03f0:  ldfld      float32 [UnityEngine]UnityEngine.Vector3::z
    IL_03f5:  ldc.r4     0.5
    IL_03fa:  add
    IL_03fb:  stfld      float32 [UnityEngine]UnityEngine.Vector3::z
    IL_0400:  ldsfld     class ['Assembly-CSharp']SurvivalParticleManager ['Assembly-CSharp']SurvivalParticleManager::'instance'
    IL_0405:  ldfld      class [UnityEngine]UnityEngine.ParticleSystem ['Assembly-CSharp']SurvivalParticleManager::LPTImpactFailEffect
    IL_040a:  callvirt   instance class [UnityEngine]UnityEngine.Transform [UnityEngine]UnityEngine.Component::get_transform()
    IL_040f:  ldarg.0
    IL_0410:  ldfld      valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_0415:  callvirt   instance void [UnityEngine]UnityEngine.Transform::set_position(valuetype [UnityEngine]UnityEngine.Vector3)
    IL_041a:  ldsfld     class ['Assembly-CSharp']SurvivalParticleManager ['Assembly-CSharp']SurvivalParticleManager::'instance'
    IL_041f:  ldfld      class [UnityEngine]UnityEngine.ParticleSystem ['Assembly-CSharp']SurvivalParticleManager::LPTImpactFailEffect
    IL_0424:  ldc.i4.s   50
    IL_0426:  callvirt   instance void [UnityEngine]UnityEngine.ParticleSystem::Emit(int32)
    IL_042b:  ldarg.0
    IL_042c:  ldflda     valuetype [UnityEngine]UnityEngine.Vector3 LaserLogicGate::mImpactPos
    IL_0431:  ldc.r4     -999.
    IL_0436:  stfld      float32 [UnityEngine]UnityEngine.Vector3::x
    IL_043b:  ret
  } // end of method LaserLogicGate::UnityUpdate

  .method private hidebysig instance void 
          ConfigLOD() cil managed
  {
    // Code size       82 (0x52)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 ['Assembly-CSharp']MachineEntity::mDotWithPlayerForwards
    IL_0006:  ldc.r4     0.0
    IL_000b:  bge.un.s   IL_0036

    IL_000d:  ldarg.0
    IL_000e:  ldfld      float32 ['Assembly-CSharp']MachineEntity::mDistanceToPlayer
    IL_0013:  ldc.r4     4.
    IL_0018:  ble.un.s   IL_0036

    IL_001a:  ldarg.0
    IL_001b:  ldfld      bool LaserLogicGate::mbIsBehindPlayer
    IL_0020:  brtrue.s   IL_0051

    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.1
    IL_0024:  stfld      bool LaserLogicGate::mbIsBehindPlayer
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::EmitterObject
              ldnull
              beq.s      IL_0035
              ldarg.0
              ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::EmitterObject
    IL_002f:  ldc.i4.0
    IL_0030:  callvirt   instance void [UnityEngine]UnityEngine.GameObject::SetActive(bool)
    IL_0035:  ret

    IL_0036:  ldarg.0
    IL_0037:  ldfld      bool LaserLogicGate::mbIsBehindPlayer
    IL_003c:  brfalse.s  IL_0051

    IL_003e:  ldarg.0
    IL_003f:  ldc.i4.0
    IL_0040:  stfld      bool LaserLogicGate::mbIsBehindPlayer
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::EmitterObject
              ldnull
              beq.s      IL_0051
              ldarg.0
              ldfld      class [UnityEngine]UnityEngine.GameObject LaserLogicGate::EmitterObject
    IL_004b:  ldc.i4.1
    IL_004c:  callvirt   instance void [UnityEngine]UnityEngine.GameObject::SetActive(bool)
    IL_0051:  ret
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

  .method public hidebysig newslot abstract virtual 
          instance void  SetNextValue(uint8 'value',
                                      uint8 face) cil managed
  {
  } // end of method LaserLogicGate::SetNextValue

  .method public hidebysig newslot abstract virtual 
          instance bool  IsFaceInput(uint8 face) cil managed
  {
  } // end of method LaserLogicGate::IsFaceInput
  
  .method public hidebysig newslot virtual instance int16
          GetOutput() cil managed
  {
              ldarg.0
			  ldfld     uint8 LaserLogicGate::mbOutput
			  ret
  } // end of method LaserLogicGate::GetOutput
  
  .method public hidebysig newslot abstract virtual 
          instance uint8[] GetInputs() cil managed
  {
  } // end of method LaserLogicGate::GetInputs

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
