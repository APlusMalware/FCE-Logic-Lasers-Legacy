    IL_0011:  stfld      float32 LaserPowerTransmitter::mrPowerTick
    IL_0016:  ldarg.0
    IL_0017:  ldc.r4     32.
    // Next line is changed.
    IL_001c:  stfld      float32 LaserPowerTransmitter::mrBasePowerPacketSize
              ldarg.0
              ldc.i4     255
              stfld      uint8 LaserPowerTransmitter::mNext
              
              ldarg.0
              newobj     instance void class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.OnlyReceiver::.ctor()
              stfld      class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> LaserPowerTransmitter::mLogicNode
              
              ldsfld     class LogicManager LogicManager::'instance'
              ldfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph LogicManager::mGraph
              ldarg.0
              ldfld      class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8> LaserPowerTransmitter::mLogicNode
              call       instance void [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph::AddNode(class ['APlusMalware.LogicGraph']APlusMalware.LogicGraph.LogicNode`1<uint8>)