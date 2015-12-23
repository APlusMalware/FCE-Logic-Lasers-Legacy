.class public auto ansi abstract beforefieldinit LaserOneInputGate
       extends LaserLogicGate
       implements ILogicReciever
{
  .field family int8 mUpdate
  .field family uint8 mCurrent
  .field family uint8 mNext
  .field family uint8 mFrontFace
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
    // Code size       53 (0x35)
    .maxstack  10
              ldarg.0
              ldarg.1
              ldarg.2
              ldarg.3
			  ldarg.s    y
              ldarg.s    z
              ldarg.s    cube
              ldarg.s    'flags'
              ldarg.s    lValue
              ldarg.s    segment
              call       instance void LaserLogicGate::.ctor(valuetype ['Assembly-CSharp']eSegmentEntity,
                                                                                    valuetype ['Assembly-CSharp']SpawnableObjectEnum,
                                                                                    int64,
                                                                                    int64,
                                                                                    int64,
                                                                                    uint16,
                                                                                    uint8,
                                                                                    uint16,
                                                                                    class ['Assembly-CSharp']Segment)
              ldarg.0
              ldc.i4     0xff
              stfld      uint8 LaserLogicGate::mbOutput
              ldarg.0
              ldc.i4     0xff
              stfld      uint8 LaserOneInputGate::mCurrent
              ldarg.0
              ldc.i4     0xff
              stfld      uint8 LaserOneInputGate::mNext
			  ldarg.0
			  ldc.i4.m1
			  stfld      int8 LaserOneInputGate::mUpdate
              ldarg.0
              ldarg.s    'flags'
              call       instance void LaserOneInputGate::UpdateFaces(uint8)
              ret
  } // end of method LaserOneInputGate::.ctor

  .method public hidebysig virtual instance void 
          LowFrequencyUpdate() cil managed
  {
    // Code size       89 (0x59)
    .maxstack  3
	.locals init (uint8 input)
			  // Check if the laser has been updated
              ldarg.0
              ldfld      int8 LaserOneInputGate::mUpdate
              ldc.i4.m1
              bne.un.s   UPDATED

			  // If it hasn't, default to 255
    NOUPDAT:  ldc.i4     255
              br.s       SETOUT

			  // If it has, check if it was updated in this tick or the last
    UPDATED:  ldarg.0
              ldfld      int8 LaserOneInputGate::mUpdate
              ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
              ldc.i4.1
              and
              bne.un.s   LASTUPD

			  // If it was updated this tick, delay the propagation by one update
    THISUPD:  ldarg.0
              ldfld      uint8 LaserOneInputGate::mCurrent
              ldarg.0
              ldarg.0
              ldfld      uint8 LaserOneInputGate::mNext
              stfld      uint8 LaserOneInputGate::mCurrent
              br.s       SETOUT

			  // If it was updated last tick, immediately use the new value 
    LASTUPD:  ldarg.0
              ldfld      uint8 LaserOneInputGate::mNext
	          
			  // Call the overridden method and update the output
     SETOUT:  stloc      input
	          ldarg.0
			  ldarg.0
			  ldloc      input
              callvirt   instance uint8 LaserOneInputGate::UpdateOutput(uint8)
	          stfld      uint8 LaserLogicGate::mbOutput
			  
			  // Reset update and do the rest of the laser stuff
	          ldarg.0
              ldc.i4.m1
              stfld      int8 LaserOneInputGate::mUpdate
              ldarg.0
              call       instance void LaserLogicGate::LowFrequencyUpdate()
              ret
  } // end of method LaserOneInputGate::LowFrequencyUpdate

  .method public hidebysig virtual 
          instance void  SetNextValue(uint8 'value',
                                      uint8 face) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  3
              ldarg.0
              ldarg.2
              callvirt   instance bool LaserOneInputGate::IsFaceInput(uint8)
              brfalse.s  RET
			  
              ldarg.0
              ldarg.1
              stfld      uint8 LaserOneInputGate::mNext
              ldarg.0
              ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
              ldc.i4.1
              and
              conv.i1
              stfld      int8 LaserOneInputGate::mUpdate
        RET:  ret
  } // end of method LaserOneInputGate::SetNextValue

  .method public hidebysig virtual 
          instance bool  IsFaceInput(uint8 face) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  2
	          // All faces except the front are inputs
              ldarg.0
              ldfld      uint8 LaserOneInputGate::mFrontFace
              ldarg.1
              ceq
              ldc.i4.0
              ceq
              ret
  } // end of method LaserOneInputGate::IsFaceInput
  
  .method public hidebysig virtual instance uint8[]
          GetInputs() cil managed
  {
    .maxstack 3
	.locals init (uint8[] inputs)
	          // Create byte array with 1 element
              ldc.i4.1
			  newarr     uint8
			  stloc.0
			  
			  // Set element 0 of array to value of mNext
			  ldloc.0
			  ldc.i4.0
			  ldarg.0
			  ldfld      uint8 LaserOneInputGate::mNext
			  stelem.i1
			  
			  ldloc.0
			  ret
  }
  
  .method public hidebysig virtual instance void 
          OnUpdateRotation(uint8 'flags') cil managed
  {
    // Code size       15 (0xf)
    .maxstack  2
              ldarg.0
              ldarg.1
              call       instance void LaserLogicGate::OnUpdateRotation(uint8)
              ldarg.0
              ldarg.1
              call       instance void LaserOneInputGate::UpdateFaces(uint8)
              ret
  } // end of method LaserOneInputGate::OnUpdateRotation
  
  
  .method private hidebysig instance void 
          UpdateFaces(uint8 'flags') cil managed
  {
    // Code size       18 (0x12)
    .maxstack  2
              ldarg.0
              ldarg.1
              call       uint8 LaserLogicGate::CalcFrontFace(uint8)
              stfld      uint8 LaserOneInputGate::mFrontFace
              ret
  } // end of method LaserOneInputGate::UpdateFaces
  
  .method family hidebysig newslot abstract virtual instance uint8
          UpdateOutput(uint8 input) cil managed
  {
  } // end of method LaserOneInputGate::UpdateOutput
  
} // end of class LaserOneInputGate
