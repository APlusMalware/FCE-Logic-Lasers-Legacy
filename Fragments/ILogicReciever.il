.class interface public abstract auto ansi ILogicReciever
{
  .method public hidebysig newslot abstract virtual 
          instance bool  IsFaceInput(uint8 face) cil managed
  {
  } // end of method ILogicReciever::IsFaceInput

  .method public hidebysig newslot abstract virtual 
          instance void  SetNextValue(uint8 'value',
                                      uint8 face) cil managed
  {
  } // end of method ILogicReciever::SetNextValue

  .method public hidebysig newslot abstract virtual
          instance int16  GetOutput() cil managed
  {
  }
  
  .method public hidebysig newslot abstract virtual
          instance uint8[] GetInputs() cil managed
  {
  }
} // end of class ILogicReciever
