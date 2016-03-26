    IL_0000:  ldsfld     bool WorldScript::mbIsServer
    IL_0005:  brfalse    IL_0010

    IL_000a:  ldarg.0
    IL_000b:  call       instance void LaserPowerTransmitter::DropCurrentLens()
    IL_0010:  ret
  } // end of method LaserPowerTransmitter::OnDelete