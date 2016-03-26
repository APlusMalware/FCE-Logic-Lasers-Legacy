  } // end of method ConveyorEntity::.ctor
  
  // Actual new code
  .method public hidebysig newslot virtual 
          instance int8  FindFaceInputIndex(uint8 face) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  1
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ConveyorEntity::FindFaceInputIndex
  
  .method public hidebysig newslot virtual instance class 
          [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8>
          GetLogicNode() cil managed
  {
              ldarg.0
              ldfld     class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> ConveyorEntity::mLogicNode
              ret
  }
  
  // End actual new code