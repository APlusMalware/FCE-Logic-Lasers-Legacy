.class public auto ansi beforefieldinit LaserOrGateEntity
       extends LaserEmitterEntity
       implements IBooleanReciever
{
  .field private bool mbCurrentLeft
  .field private bool mbCurrentRight
  .field private bool mbNextLeft
  .field private bool mbNextRight
  .field private uint8 mbLeftFace
  .field private uint8 mbRightFace
  .field private int8 mLeftUpdate
  .field private int8 mRightUpdate
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Segment segment,
                               int64 x,
                               int64 y,
                               int64 z,
                               uint16 cube,
                               uint8 'flags',
                               uint16 lValue) cil managed
  {
    // Code size       78 (0x4e)
    .maxstack  10
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  ldc.i4.s   22
    IL_0004:  ldarg.2
    IL_0005:  ldarg.3
    IL_0006:  ldarg.s    z
    IL_0008:  ldarg.s    cube
    IL_000a:  ldarg.s    'flags'
    IL_000c:  ldarg.s    lValue
    IL_000e:  ldarg.1
    IL_000f:  call       instance void ['Assembly-CSharp']LaserEmitterEntity::.ctor(valuetype ['Assembly-CSharp']eSegmentEntity,
                                                                                    valuetype ['Assembly-CSharp']SpawnableObjectEnum,
                                                                                    int64,
                                                                                    int64,
                                                                                    int64,
                                                                                    uint16,
                                                                                    uint8,
                                                                                    uint16,
                                                                                    class ['Assembly-CSharp']Segment)
    IL_0014:  ldarg.0
    IL_0015:  ldc.i4.0
    IL_0016:  stfld      bool LaserOrGateEntity::mbCurrentLeft
    IL_001b:  ldarg.0
    IL_001c:  ldc.i4.0
    IL_001d:  stfld      bool LaserOrGateEntity::mbCurrentRight
    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.0
    IL_0024:  stfld      bool LaserOrGateEntity::mbNextLeft
    IL_0029:  ldarg.0
    IL_002a:  ldc.i4.0
    IL_002b:  stfld      bool LaserOrGateEntity::mbNextRight
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4.0
    IL_0032:  stfld      bool LaserEmitterEntity::mbOutput
    IL_0037:  ldarg.0
    IL_0038:  ldc.i4.m1
    IL_0039:  stfld      int8 LaserOrGateEntity::mLeftUpdate
    IL_003e:  ldarg.0
    IL_003f:  ldc.i4.m1
    IL_0040:  stfld      int8 LaserOrGateEntity::mRightUpdate
    IL_0045:  ldarg.0
    IL_0046:  ldarg.s    'flags'
    IL_0048:  call       instance void LaserOrGateEntity::UpdateFaces(uint8)
    IL_004d:  ret
  } // end of method LaserOrGateEntity::.ctor

  .method public hidebysig virtual instance void 
          LowFrequencyUpdate() cil managed
  {
    // Code size       145 (0x91)
    .maxstack  2
    .locals init (bool V_0,
             bool V_1,
             int8 V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_0009:  ldc.i4.1
    IL_000a:  and
    IL_000b:  conv.i1
    IL_000c:  stloc.2
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int8 LaserOrGateEntity::mLeftUpdate
    IL_0013:  ldloc.2
    IL_0014:  bne.un.s   IL_002b

    IL_0016:  ldarg.0
    IL_0017:  ldfld      bool LaserOrGateEntity::mbCurrentLeft
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      bool LaserOrGateEntity::mbNextLeft
    IL_0024:  stfld      bool LaserOrGateEntity::mbCurrentLeft
    IL_0029:  br.s       IL_003b

    IL_002b:  ldarg.0
    IL_002c:  ldfld      int8 LaserOrGateEntity::mLeftUpdate
    IL_0031:  ldc.i4.m1
    IL_0032:  beq.s      IL_003b

    IL_0034:  ldarg.0
    IL_0035:  ldfld      bool LaserOrGateEntity::mbNextLeft
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      int8 LaserOrGateEntity::mRightUpdate
    IL_0041:  ldloc.2
    IL_0042:  bne.un.s   IL_0059

    IL_0044:  ldarg.0
    IL_0045:  ldfld      bool LaserOrGateEntity::mbCurrentRight
    IL_004a:  stloc.1
    IL_004b:  ldarg.0
    IL_004c:  ldarg.0
    IL_004d:  ldfld      bool LaserOrGateEntity::mbNextRight
    IL_0052:  stfld      bool LaserOrGateEntity::mbCurrentRight
    IL_0057:  br.s       IL_0069

    IL_0059:  ldarg.0
    IL_005a:  ldfld      int8 LaserOrGateEntity::mRightUpdate
    IL_005f:  ldc.i4.m1
    IL_0060:  beq.s      IL_0069

    IL_0062:  ldarg.0
    IL_0063:  ldfld      bool LaserOrGateEntity::mbNextRight
    IL_0068:  stloc.1
    IL_0069:  ldarg.0
    IL_006a:  ldloc.0
    IL_006b:  brtrue.s   IL_0070

    IL_006d:  ldloc.1
    IL_006e:  br.s       IL_0071

    IL_0070:  ldc.i4.1
    IL_0071:  stfld      bool ['Assembly-CSharp']LaserEmitterEntity::mbOutput
    IL_0076:  ldarg.0
    IL_0077:  ldc.i4.m1
    IL_0078:  stfld      int8 LaserOrGateEntity::mLeftUpdate
    IL_007d:  ldarg.0
    IL_007e:  ldc.i4.m1
    IL_007f:  stfld      int8 LaserOrGateEntity::mRightUpdate
    IL_0084:  ldarg.0
    IL_0085:  call       instance void ['Assembly-CSharp']MachineEntity::UpdatePlayerDistanceInfo()
    IL_008a:  ldarg.0
    IL_008b:  callvirt   instance void ['Assembly-CSharp']LaserEmitterEntity::UpdateLaser()
    IL_0090:  ret
  } // end of method LaserOrGateEntity::LowFrequencyUpdate

  .method public hidebysig virtual instance bool 
          IsFaceInput(uint8 face) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      uint8 LaserOrGateEntity::mbLeftFace
    IL_0007:  beq.s      IL_0013

    IL_0009:  ldarg.1
    IL_000a:  ldarg.0
    IL_000b:  ldfld      uint8 LaserOrGateEntity::mbRightFace
    IL_0010:  ceq
    IL_0012:  ret

    IL_0013:  ldc.i4.1
    IL_0014:  ret
  } // end of method LaserOrGateEntity::IsFaceInput

  .method public hidebysig virtual instance void 
          SetNextValue(bool 'value',
                       uint8 face) cil managed
  {
    // Code size       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  ldarg.0
    IL_0002:  ldfld      uint8 LaserOrGateEntity::mbLeftFace
    IL_0007:  bne.un.s   IL_001f

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool LaserOrGateEntity::mbNextLeft
    IL_0010:  ldarg.0
    IL_0011:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_0016:  ldc.i4.1
    IL_0017:  and
    IL_0018:  conv.i1
    IL_0019:  stfld      int8 LaserOrGateEntity::mLeftUpdate
    IL_001e:  ret

    IL_001f:  ldarg.2
    IL_0020:  ldarg.0
    IL_0021:  ldfld      uint8 LaserOrGateEntity::mbRightFace
    IL_0026:  bne.un.s   IL_003d

    IL_0028:  ldarg.0
    IL_0029:  ldarg.1
    IL_002a:  stfld      bool LaserOrGateEntity::mbNextRight
    IL_002f:  ldarg.0
    IL_0030:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_0035:  ldc.i4.1
    IL_0036:  and
    IL_0037:  conv.i1
    IL_0038:  stfld      int8 LaserOrGateEntity::mRightUpdate
    IL_003d:  ret
  } // end of method LaserOrGateEntity::SetNextValue

  .method private hidebysig instance void 
          UpdateFaces(uint8 'flags') cil managed
  {
    // Code size       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  call       uint8 ['Assembly-CSharp']CubeHelper::RotateFlags(uint8,
                                                                          bool)
    IL_0008:  call       uint8 ['Assembly-CSharp']LaserEmitterEntity::CalcFrontFace(uint8)
    IL_000d:  stfld      uint8 LaserOrGateEntity::mbLeftFace
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldc.i4.1
    IL_0015:  call       uint8 ['Assembly-CSharp']CubeHelper::RotateFlags(uint8,
                                                                          bool)
    IL_001a:  call       uint8 ['Assembly-CSharp']LaserEmitterEntity::CalcFrontFace(uint8)
    IL_001f:  stfld      uint8 LaserOrGateEntity::mbRightFace
    IL_0024:  ret
  } // end of method LaserOrGateEntity::UpdateFaces

  .method public hidebysig virtual instance void 
          OnUpdateRotation(uint8 'flags') cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void ['Assembly-CSharp']LaserEmitterEntity::OnUpdateRotation(uint8)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void LaserOrGateEntity::UpdateFaces(uint8)
    IL_000e:  ret
  } // end of method LaserOrGateEntity::OnUpdateRotation

} // end of class LaserOrGateEntity
