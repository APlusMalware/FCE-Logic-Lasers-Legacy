.class public auto ansi beforefieldinit LaserOrGateEntity
       extends LaserEmitterEntity
       implements IBooleanReciever
{
  .field private uint8 mbCurrentLeft
  .field private uint8 mbCurrentRight
  .field private uint8 mbNextLeft
  .field private uint8 mbNextRight
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
    IL_0016:  stfld      uint8 LaserOrGateEntity::mbCurrentLeft
    IL_001b:  ldarg.0
    IL_001c:  ldc.i4.0
    IL_001d:  stfld      uint8 LaserOrGateEntity::mbCurrentRight
    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.0
    IL_0024:  stfld      uint8 LaserOrGateEntity::mbNextLeft
    IL_0029:  ldarg.0
    IL_002a:  ldc.i4.0
    IL_002b:  stfld      uint8 LaserOrGateEntity::mbNextRight
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4.0
    IL_0032:  stfld      uint8 LaserEmitterEntity::mbOutput
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
    // Code size       139 (0x8b)
    .maxstack  3
    .locals init (uint8 V_0,
             uint8 V_1,
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
    IL_0017:  ldfld      uint8 LaserOrGateEntity::mbCurrentLeft
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      uint8 LaserOrGateEntity::mbNextLeft
    IL_0024:  stfld      uint8 LaserOrGateEntity::mbCurrentLeft
    IL_0029:  br.s       IL_003b

    IL_002b:  ldarg.0
    IL_002c:  ldfld      int8 LaserOrGateEntity::mLeftUpdate
    IL_0031:  ldc.i4.m1
    IL_0032:  beq.s      IL_003b

    IL_0034:  ldarg.0
    IL_0035:  ldfld      uint8 LaserOrGateEntity::mbNextLeft
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      int8 LaserOrGateEntity::mRightUpdate
    IL_0041:  ldloc.2
    IL_0042:  bne.un.s   IL_0059

    IL_0044:  ldarg.0
    IL_0045:  ldfld      uint8 LaserOrGateEntity::mbCurrentRight
    IL_004a:  stloc.1
    IL_004b:  ldarg.0
    IL_004c:  ldarg.0
    IL_004d:  ldfld      uint8 LaserOrGateEntity::mbNextRight
    IL_0052:  stfld      uint8 LaserOrGateEntity::mbCurrentRight
    IL_0057:  br.s       IL_0069

    IL_0059:  ldarg.0
    IL_005a:  ldfld      int8 LaserOrGateEntity::mRightUpdate
    IL_005f:  ldc.i4.m1
    IL_0060:  beq.s      IL_0069

    IL_0062:  ldarg.0
    IL_0063:  ldfld      uint8 LaserOrGateEntity::mbNextRight
    IL_0068:  stloc.1
    IL_0069:  ldarg.0
    IL_006a:  ldloc.0
    IL_006b:  ldloc.1
    IL_006c:  call       uint8 [mscorlib_11]System.Math::Max(uint8,
                                                             uint8)
    IL_0071:  stfld      uint8 ['Assembly-CSharp']LaserEmitterEntity::mbOutput
    IL_0076:  ldarg.0
    IL_0077:  ldc.i4.m1
    IL_0078:  stfld      int8 LaserOrGateEntity::mLeftUpdate
    IL_007d:  ldarg.0
    IL_007e:  ldc.i4.m1
    IL_007f:  stfld      int8 LaserOrGateEntity::mRightUpdate
    IL_0084:  ldarg.0
    IL_0085:  callvirt   instance void ['Assembly-CSharp']LaserEmitterEntity::UpdateLaser()
    IL_008a:  ret
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
          SetNextValue(uint8 'value',
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
    IL_000b:  stfld      uint8 LaserOrGateEntity::mbNextLeft
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
    IL_002a:  stfld      uint8 LaserOrGateEntity::mbNextRight
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

.class public auto ansi beforefieldinit LaserNotGateEntity
       extends LaserEmitterEntity
       implements IBooleanReciever
{
  .field private uint8 mbCurrent
  .field private uint8 mbNext
  .field private uint8 mFace
  .field private int8 mUpdate
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Segment segment,
                               int64 x,
                               int64 y,
                               int64 z,
                               uint16 cube,
                               uint8 'flags',
                               uint16 lValue) cil managed
  {
    // Code size       72 (0x48)
    .maxstack  10
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  ldc.i4     0x17
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    z
    IL_000b:  ldarg.s    cube
    IL_000d:  ldarg.s    'flags'
    IL_000f:  ldarg.s    lValue
    IL_0011:  ldarg.1
    IL_0012:  call       instance void ['Assembly-CSharp']LaserEmitterEntity::.ctor(valuetype ['Assembly-CSharp']eSegmentEntity,
                                                                                    valuetype ['Assembly-CSharp']SpawnableObjectEnum,
                                                                                    int64,
                                                                                    int64,
                                                                                    int64,
                                                                                    uint16,
                                                                                    uint8,
                                                                                    uint16,
                                                                                    class ['Assembly-CSharp']Segment)
    IL_0017:  ldarg.0
    IL_0018:  ldc.i4     0xff
    IL_001d:  stfld      uint8 LaserNotGateEntity::mbCurrent
    IL_0022:  ldarg.0
    IL_0023:  ldc.i4     0xff
    IL_0028:  stfld      uint8 LaserNotGateEntity::mbNext
    IL_002d:  ldarg.0
    IL_002e:  ldc.i4.0
    IL_002f:  stfld      uint8 LaserEmitterEntity::mbOutput
    IL_0034:  ldarg.0
    IL_0035:  ldc.i4     0xffffffff
    IL_003a:  stfld      int8 LaserNotGateEntity::mUpdate
    IL_003f:  ldarg.0
    IL_0040:  ldarg.s    'flags'
    IL_0042:  call       instance void LaserNotGateEntity::UpdateFaces(uint8)
    IL_0047:  ret
  } // end of method LaserNotGateEntity::.ctor

  .method public hidebysig virtual instance void 
          LowFrequencyUpdate() cil managed
  {
    // Code size       108 (0x6c)
    .maxstack  2
    .locals init (int8 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int8 LaserNotGateEntity::mUpdate
    IL_0006:  ldc.i4.m1
    IL_0007:  bne.un.s   IL_0012

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.0
    IL_000b:  stfld      uint8 ['Assembly-CSharp']LaserEmitterEntity::mbOutput
    IL_0010:  br.s       IL_0065

    IL_0012:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_0017:  ldc.i4.1
    IL_0018:  and
    IL_0019:  conv.i1
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldfld      int8 LaserNotGateEntity::mUpdate
    IL_0022:  bne.un.s   IL_0048

    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      uint8 LaserNotGateEntity::mbCurrent
    IL_002b:  brtrue.s   IL_0034

    IL_002d:  ldc.i4     0xff
    IL_0032:  br.s       IL_0035

    IL_0034:  ldc.i4.0
    IL_0035:  stfld      uint8 ['Assembly-CSharp']LaserEmitterEntity::mbOutput
    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      uint8 LaserNotGateEntity::mbNext
    IL_0041:  stfld      uint8 LaserNotGateEntity::mbCurrent
    IL_0046:  br.s       IL_005e

    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  ldfld      uint8 LaserNotGateEntity::mbNext
    IL_004f:  brtrue.s   IL_0058

    IL_0051:  ldc.i4     0xff
    IL_0056:  br.s       IL_0059

    IL_0058:  ldc.i4.0
    IL_0059:  stfld      uint8 ['Assembly-CSharp']LaserEmitterEntity::mbOutput
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4.m1
    IL_0060:  stfld      int8 LaserNotGateEntity::mUpdate
    IL_0065:  ldarg.0
    IL_0066:  callvirt   instance void ['Assembly-CSharp']LaserEmitterEntity::UpdateLaser()
    IL_006b:  ret
  } // end of method LaserNotGateEntity::LowFrequencyUpdate

  .method public hidebysig virtual instance bool 
          IsFaceInput(uint8 face) cil managed
  {
    // Code size       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      uint8 LaserNotGateEntity::mFace
    IL_0007:  ceq
    IL_0009:  ret
  } // end of method LaserNotGateEntity::IsFaceInput

  .method public hidebysig virtual instance void 
          SetNextValue(uint8 'value',
                       uint8 face) cil managed
  {
    // Code size       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  ldarg.0
    IL_0002:  ldfld      uint8 LaserNotGateEntity::mFace
    IL_0007:  bne.un.s   IL_001e

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      uint8 LaserNotGateEntity::mbNext
    IL_0010:  ldarg.0
    IL_0011:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_0016:  ldc.i4.1
    IL_0017:  and
    IL_0018:  conv.i1
    IL_0019:  stfld      int8 LaserNotGateEntity::mUpdate
    IL_001e:  ret
  } // end of method LaserNotGateEntity::SetNextValue

  .method private hidebysig instance void 
          UpdateFaces(uint8 'flags') cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       uint8 ['Assembly-CSharp']LaserEmitterEntity::CalcFrontFace(uint8)
    IL_0007:  call       uint8 ['Assembly-CSharp']LaserEmitterEntity::CalcOppositeFace(uint8)
    IL_000c:  stfld      uint8 LaserNotGateEntity::mFace
    IL_0011:  ret
  } // end of method LaserNotGateEntity::UpdateFaces

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
    IL_0009:  call       instance void LaserNotGateEntity::UpdateFaces(uint8)
    IL_000e:  ret
  } // end of method LaserNotGateEntity::OnUpdateRotation

} // end of class LaserNotGateEntity
