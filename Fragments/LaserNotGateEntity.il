.class public auto ansi beforefieldinit LaserNotGateEntity
       extends LaserLogicGate
       implements ILogicReciever
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
    IL_0002:  ldc.i4     4
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    z
    IL_000b:  ldarg.s    cube
    IL_000d:  ldarg.s    'flags'
    IL_000f:  ldarg.s    lValue
    IL_0011:  ldarg.1
    IL_0012:  call       instance void ['Assembly-CSharp']LaserLogicGate::.ctor(valuetype ['Assembly-CSharp']eSegmentEntity,
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
    IL_002f:  stfld      uint8 LaserLogicGate::mbOutput
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
    IL_000b:  stfld      uint8 ['Assembly-CSharp']LaserLogicGate::mbOutput
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
    IL_0035:  stfld      uint8 ['Assembly-CSharp']LaserLogicGate::mbOutput
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
    IL_0059:  stfld      uint8 ['Assembly-CSharp']LaserLogicGate::mbOutput
    IL_005e:  ldarg.0
    IL_005f:  ldc.i4.m1
    IL_0060:  stfld      int8 LaserNotGateEntity::mUpdate
    IL_0065:  ldarg.0
    IL_0066:  call   instance void ['Assembly-CSharp']LaserLogicGate::LowFrequencyUpdate()
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
              // Just for you, steveman
              ldc.i4.0
              ceq
    IL_0009:  ret
  } // end of method LaserNotGateEntity::IsFaceInput

  .method public hidebysig virtual instance void 
          SetNextValue(uint8 'value',
                       uint8 face) cil managed
  {
    // Code size       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
              callvirt   bool LaserNotGateEntity::IsFaceInput(uint8)
    IL_0007:  brfalse.s   IL_001e

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

  .method public hidebysig virtual instance uint8[]
          GetInputs() cil managed
  {
    .maxstack 3
	.locals init (uint8[] inputs)
	          // Create byte array with 1 element
              ldc.i4.1
			  newarr     uint8
			  stloc.0
			  
			  // Set element 0 of array to value of mbNext
			  ldloc.0
			  ldc.i4.0
			  ldarg.0
			  ldfld      uint8 LaserNotGateEntity::mbNext
			  stelem.i1
			  
			  ldloc.0
			  ret
  }
  
  .method private hidebysig instance void 
          UpdateFaces(uint8 'flags') cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       uint8 ['Assembly-CSharp']LaserLogicGate::CalcFrontFace(uint8)
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
    IL_0002:  call       instance void ['Assembly-CSharp']LaserLogicGate::OnUpdateRotation(uint8)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void LaserNotGateEntity::UpdateFaces(uint8)
    IL_000e:  ret
  } // end of method LaserNotGateEntity::OnUpdateRotation

} // end of class LaserNotGateEntity
