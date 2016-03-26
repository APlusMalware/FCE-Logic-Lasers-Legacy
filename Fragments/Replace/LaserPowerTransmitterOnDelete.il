    // Actual new code
    
              ldsfld     class LogicManager LogicManager::'instance'
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph LogicManager::mGraph
              ldarg.0
              ldfld      class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8> LaserPowerTransmitter::mLogicNode
              callvirt   instance void [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph::RemoveNode(class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>)
              
              ldarg.0
              ldfld      class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8> LaserPowerTransmitter::mLogicNode
              callvirt   instance void class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>::DisconnectAll()
              
    // End new code
    IL_0000:  ldsfld     bool WorldScript::mbIsServer
    IL_0005:  brfalse    IL_0010

    IL_000a:  ldarg.0
    IL_000b:  call       instance void LaserPowerTransmitter::DropCurrentLens()
    IL_0010:  ret
  } // end of method LaserPowerTransmitter::OnDelete