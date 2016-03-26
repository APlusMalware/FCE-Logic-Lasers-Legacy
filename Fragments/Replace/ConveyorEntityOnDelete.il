    // Actual new code
        
              ldsfld     class LogicManager LogicManager::'instance'
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph LogicManager::mGraph
              ldarg.0
              ldfld      class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8> ConveyorEntity::mLogicNode
              callvirt   instance void [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph::RemoveNode(class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>)
              
              ldarg.0
              ldfld      class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8> ConveyorEntity::mLogicNode
              callvirt   instance void class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>::DisconnectAll()
              
    // End new code
    IL_0079:  ret
  } // end of method ConveyorEntity::OnDelete