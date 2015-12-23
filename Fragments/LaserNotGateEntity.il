.class public auto ansi beforefieldinit LaserNotGateEntity
       extends LaserOneInputGate
       implements ILogicReciever
{
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
              ldarg.0
              ldc.i4.8
              ldc.i4.4
              ldarg.2
              ldarg.3
              ldarg.s    z
              ldarg.s    cube
              ldarg.s    'flags'
              ldarg.s    lValue
              ldarg.1
              call       instance void LaserOneInputGate::.ctor(valuetype ['Assembly-CSharp']eSegmentEntity,
                                                                                    valuetype ['Assembly-CSharp']SpawnableObjectEnum,
                                                                                    int64,
                                                                                    int64,
                                                                                    int64,
                                                                                    uint16,
                                                                                    uint8,
                                                                                    uint16,
                                                                                    class ['Assembly-CSharp']Segment)
              ret
  } // end of method LaserNotGateEntity::.ctor
  
  .method family hidebysig virtual instance uint8
          UpdateOutput(uint8 input) cil managed
  {
    .maxstack 2
    // Returns 255 if input is 0, otherwise 0
              ldarg.1
			  ldc.i4.0
			  ceq
			  ldc.i4     255
			  mul
	          ret
  } // end of method LaserNotGateEntity::UpdateOutput
  
} // end of class LaserNotGateEntity
