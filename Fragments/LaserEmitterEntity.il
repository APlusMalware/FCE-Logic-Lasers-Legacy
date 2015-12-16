.class public auto ansi beforefieldinit LaserEmitterEntity
       extends LaserLogicGate
       implements ILogicReciever
{
  .field private int8 mUpdate
  .field private uint8 mbCurrent
  .field private uint8 mbNext
  .field private uint8 mFace
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Segment segment,
                               int64 x,
                               int64 y,
                               int64 z,
                               uint16 cube,
                               uint8 'flags',
                               uint16 lValue) cil managed
  {
    // Code size       53 (0x35)
    .maxstack  10
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.5
    IL_0002:  ldc.i4.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  ldarg.s    z
    IL_0007:  ldarg.s    cube
    IL_0009:  ldarg.s    'flags'
    IL_000b:  ldarg.s    lValue
    IL_000d:  ldarg.1
    IL_000e:  call       instance void ['Assembly-CSharp']LaserLogicGate::.ctor(valuetype ['Assembly-CSharp']eSegmentEntity,
                                                                                    valuetype ['Assembly-CSharp']SpawnableObjectEnum,
                                                                                    int64,
                                                                                    int64,
                                                                                    int64,
                                                                                    uint16,
                                                                                    uint8,
                                                                                    uint16,
                                                                                    class ['Assembly-CSharp']Segment)
    IL_0013:  ldarg.0
    IL_0014:  ldc.i4     0xff
    IL_0019:  stfld      uint8 LaserLogicGate::mbOutput
    IL_001e:  ldarg.0
    IL_001f:  ldc.i4     0xff
    IL_0024:  stfld      uint8 LaserEmitterEntity::mbCurrent
    IL_0029:  ldarg.0
    IL_002a:  ldc.i4     0xff
    IL_002f:  stfld      uint8 LaserEmitterEntity::mbNext
              ldarg.0
              ldarg.s    'flags'
              call       instance void LaserEmitterEntity::UpdateFaces(uint8)
    IL_0034:  ret
  } // end of method LaserEmitterEntity::.ctor

  .method public hidebysig virtual instance void 
          LowFrequencyUpdate() cil managed
  {
    // Code size       89 (0x59)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int8 LaserEmitterEntity::mUpdate
    IL_0006:  ldc.i4.m1
    IL_0007:  bne.un.s   IL_0016

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4     0xff
    IL_000f:  stfld      uint8 LaserLogicGate::mbOutput
    IL_0014:  br.s       IL_004b

    IL_0016:  ldarg.0
    IL_0017:  ldfld      int8 LaserEmitterEntity::mUpdate
    IL_001c:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_0021:  ldc.i4.1
    IL_0022:  and
    IL_0023:  bne.un.s   IL_003f

    IL_0025:  ldarg.0
    IL_0026:  ldarg.0
    IL_0027:  ldfld      uint8 LaserEmitterEntity::mbCurrent
    IL_002c:  stfld      uint8 LaserLogicGate::mbOutput
    IL_0031:  ldarg.0
    IL_0032:  ldarg.0
    IL_0033:  ldfld      uint8 LaserEmitterEntity::mbNext
    IL_0038:  stfld      uint8 LaserEmitterEntity::mbCurrent
    IL_003d:  br.s       IL_004b

    IL_003f:  ldarg.0
    IL_0040:  ldarg.0
    IL_0041:  ldfld      uint8 LaserEmitterEntity::mbNext
    IL_0046:  stfld      uint8 LaserLogicGate::mbOutput
    IL_004b:  ldarg.0
    IL_004c:  ldc.i4.m1
    IL_004d:  stfld      int8 LaserEmitterEntity::mUpdate
    IL_0052:  ldarg.0
    IL_0053:  call       instance void LaserLogicGate::LowFrequencyUpdate()
    IL_0058:  ret
  } // end of method LaserEmitterEntity::LowFrequencyUpdate

  .method public hidebysig virtual 
          instance void  SetNextValue(uint8 'value',
                                      uint8 face) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  3
              ldarg.0
              ldarg.2
              callvirt   bool LaserEmitterEntity::IsFaceInput(uint8)
              brfalse.s  IL_0015
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      uint8 LaserEmitterEntity::mbNext
    IL_0007:  ldarg.0
    IL_0008:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_000d:  ldc.i4.1
    IL_000e:  and
    IL_000f:  conv.i1
    IL_0010:  stfld      int8 LaserEmitterEntity::mUpdate
    IL_0015:  ret
  } // end of method LaserEmitterEntity::SetNextValue

  .method public hidebysig virtual 
          instance bool  IsFaceInput(uint8 face) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  2
              ldarg.0
              ldfld      uint8 LaserEmitterEntity::mFace
              ldarg.1
              ceq
              ldc.i4.0
              ceq
    IL_0001:  ret
  } // end of method LaserEmitterEntity::IsFaceInput
  
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
			  ldfld      uint8 LaserEmitterEntity::mbNext
			  stelem.i1
			  
			  ldloc.0
			  ret
  }
  
  .method public hidebysig virtual instance void 
          OnUpdateRotation(uint8 'flags') cil managed
  {
    // Code size       15 (0xf)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void ['Assembly-CSharp']LaserLogicGate::OnUpdateRotation(uint8)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void LaserEmitterEntity::UpdateFaces(uint8)
    IL_000e:  ret
  } // end of method LaserEmitterEntity::OnUpdateRotation
  
  
  .method private hidebysig instance void 
          UpdateFaces(uint8 'flags') cil managed
  {
    // Code size       18 (0x12)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       uint8 ['Assembly-CSharp']LaserLogicGate::CalcFrontFace(uint8)
    IL_000c:  stfld      uint8 LaserEmitterEntity::mFace
    IL_0011:  ret
  } // end of method LaserEmitterEntity::UpdateFaces
  
} // end of class LaserEmitterEntity
