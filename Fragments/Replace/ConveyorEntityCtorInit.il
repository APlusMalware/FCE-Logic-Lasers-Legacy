    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     1500.
    IL_0006:  stfld      float32 ConveyorEntity::mrMaxPower
              // Actual new code
              ldarg.0
              ldc.i4     255
              stfld      uint8 ConveyorEntity::mNext
              
              ldarg.0
              newobj     instance void class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.OnlyReceiver::.ctor()
              stfld      class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> ConveyorEntity::mLogicNode
              
              ldsfld     class LogicManager LogicManager::'instance'
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph LogicManager::mGraph
              ldarg.0
              ldfld      class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8> ConveyorEntity::mLogicNode
              call       instance void [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph::AddNode(class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>)
              // End new code
    