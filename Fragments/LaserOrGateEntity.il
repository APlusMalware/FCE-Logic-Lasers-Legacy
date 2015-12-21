.class public auto ansi beforefieldinit LaserOrGateEntity
       extends LaserTwoInputGate
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
    // Code size       64 (0x40)
    .maxstack  10
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  ldc.i4.s   3
    IL_0004:  ldarg.2
    IL_0005:  ldarg.3
    IL_0006:  ldarg.s    z
    IL_0008:  ldarg.s    cube
    IL_000a:  ldarg.s    'flags'
    IL_000c:  ldarg.s    lValue
    IL_000e:  ldarg.1
    IL_000f:  call       instance void ['Assembly-CSharp']LaserTwoInputGate::.ctor(valuetype ['Assembly-CSharp']eSegmentEntity,
                                                                                    valuetype ['Assembly-CSharp']SpawnableObjectEnum,
                                                                                    int64,
                                                                                    int64,
                                                                                    int64,
                                                                                    uint16,
                                                                                    uint8,
                                                                                    uint16,
                                                                                    class ['Assembly-CSharp']Segment)
    IL_003f:  ret
  } // end of method LaserOrGateEntity::.ctor
    
  .method family hidebysig virtual instance uint8
          UpdateOutput(uint8 left,
		               uint8 right) cil managed
  {
    .maxstack 2
              ldarg.0
              ldfld      uint16 MachineEntity::mValue
              switch     (ORGATE, ADDER, OVRFLOW)
              
              ldc.i4.0
              br.s       RET
              
              // Returns the maximum of left or right
     ORGATE:  ldarg.1
              ldarg.2
              call uint8 [mscorlib]System.Math::Max(uint8, uint8)
              br.s       RET
              
              // Adds the inputs together
      ADDER:  ldarg.1
              ldarg.2
              add
              br.s       RET
              
              // Checks for overflow
    OVRFLOW:  ldarg.1
              ldarg.2
              add
              ldc.i4     255
              cgt
              
	    RET:  ret
  } // end of method LaserTwoInputGate::UpdateOutput
  
} // end of class LaserOrGateEntity
