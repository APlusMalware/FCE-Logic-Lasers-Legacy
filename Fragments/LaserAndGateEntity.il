.class public auto ansi beforefieldinit LaserAndGateEntity
       extends LaserTwoInputGate
       implements IBooleanReciever
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
    // Code size       67 (0x43)
    .maxstack  10
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.6
    IL_0002:  ldc.i4     0x12
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    z
    IL_000b:  ldarg.s    cube
    IL_000d:  ldarg.s    'flags'
    IL_000f:  ldarg.s    lValue
    IL_0011:  ldarg.1
    IL_0012:  call       instance void ['Assembly-CSharp']LaserTwoInputGate::.ctor(valuetype ['Assembly-CSharp']eSegmentEntity,
                                                                                    valuetype ['Assembly-CSharp']SpawnableObjectEnum,
                                                                                    int64,
                                                                                    int64,
                                                                                    int64,
                                                                                    uint16,
                                                                                    uint8,
                                                                                    uint16,
                                                                                    class ['Assembly-CSharp']Segment)
    IL_0042:  ret
  } // end of method LaserAndGateEntity::.ctor
    
  .method family hidebysig virtual instance uint8
          UpdateOutput(uint8 left,
		               uint8 right) cil managed
  {
    // Returns the left input if both right and left inputs are the same, otherwise 0
              ldarg.1
              ldarg.2
              beq.s      NONZERO

       ZERO:  ldc.i4.0
              br.s       END

    NONZERO:  ldarg.1
	    END:  ret
  } // end of method LaserTwoInputGate::UpdateOutput
  
} // end of class LaserAndGateEntity
