  } // end of method LaserPowerTransmitter::.ctor
  
  // Actual new code
  .method public hidebysig newslot virtual 
          instance bool  IsFaceInput(uint8 face) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  1
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method LaserPowerTransmitter::IsFaceInput
  
  .method public hidebysig newslot virtual 
          instance void  SetNextValue(uint8 'value',
                                      uint8 face) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      uint8 LaserPowerTransmitter::mNext
              // We're not bothering with ensuring a consistent delay since this is input only
    IL_0015:  ret
  } // end of method LaserPowerTransmitter::SetNextValue
  
  .method public hidebysig newslot virtual instance int16
          GetOutput() cil managed
  {
              ldc.i4.m1
			  ret
  } // end of method LaserPowerTransmitter::GetOutput
  
    .method public hidebysig newslot virtual instance uint8[]
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
			  ldfld      uint8 LaserPowerTransmitter::mNext
			  stelem.i1
			  
			  ldloc.0
			  ret
  } // end of method LaserPowerTransmitter::GetInputs
  
  // End actual new code