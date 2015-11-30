.class public auto ansi beforefieldinit LaserNotGateEntity
       extends LaserEmitterEntity
       implements IBooleanReciever
{
  .field private bool mbCurrent
  .field private bool mbNext
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
    // Code size       64 (0x40)
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
    IL_0018:  ldc.i4.1
    IL_0019:  stfld      bool LaserNotGateEntity::mbCurrent
    IL_001e:  ldarg.0
    IL_001f:  ldc.i4.1
    IL_0020:  stfld      bool LaserNotGateEntity::mbNext
    IL_0025:  ldarg.0
    IL_0026:  ldc.i4.0
    IL_0027:  stfld      bool LaserEmitterEntity::mbOutput
    IL_002c:  ldarg.0
    IL_002d:  ldc.i4     0xffffffff
    IL_0032:  stfld      int8 LaserNotGateEntity::mUpdate
    IL_0037:  ldarg.0
    IL_0038:  ldarg.s    'flags'
    IL_003a:  call       instance void LaserNotGateEntity::UpdateFaces(uint8)
    IL_003f:  ret
  } // end of method LaserNotGateEntity::.ctor

  .method public hidebysig virtual instance void 
          LowFrequencyUpdate() cil managed
  {
    // Code size       100 (0x64)
    .maxstack  3
    .locals init (int8 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int8 LaserNotGateEntity::mUpdate
    IL_0006:  ldc.i4.m1
    IL_0007:  bne.un.s   IL_0012

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.0
    IL_000b:  stfld      bool ['Assembly-CSharp']LaserEmitterEntity::mbOutput
    IL_0010:  br.s       IL_0057

    IL_0012:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_0017:  ldc.i4.1
    IL_0018:  and
    IL_0019:  conv.i1
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldfld      int8 LaserNotGateEntity::mUpdate
    IL_0022:  bne.un.s   IL_0041

    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      bool LaserNotGateEntity::mbCurrent
    IL_002b:  ldc.i4.0
    IL_002c:  ceq
    IL_002e:  stfld      bool ['Assembly-CSharp']LaserEmitterEntity::mbOutput
    IL_0033:  ldarg.0
    IL_0034:  ldarg.0
    IL_0035:  ldfld      bool LaserNotGateEntity::mbNext
    IL_003a:  stfld      bool LaserNotGateEntity::mbCurrent
    IL_003f:  br.s       IL_0050

    IL_0041:  ldarg.0
    IL_0042:  ldarg.0
    IL_0043:  ldfld      bool LaserNotGateEntity::mbNext
    IL_0048:  ldc.i4.0
    IL_0049:  ceq
    IL_004b:  stfld      bool ['Assembly-CSharp']LaserEmitterEntity::mbOutput
    IL_0050:  ldarg.0
    IL_0051:  ldc.i4.m1
    IL_0052:  stfld      int8 LaserNotGateEntity::mUpdate
    IL_0057:  ldarg.0
    IL_0058:  call       instance void ['Assembly-CSharp']MachineEntity::UpdatePlayerDistanceInfo()
    IL_005d:  ldarg.0
    IL_005e:  callvirt   instance void ['Assembly-CSharp']LaserEmitterEntity::UpdateLaser()
    IL_0063:  ret
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
          SetNextValue(bool 'value',
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
    IL_000b:  stfld      bool LaserNotGateEntity::mbNext
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
