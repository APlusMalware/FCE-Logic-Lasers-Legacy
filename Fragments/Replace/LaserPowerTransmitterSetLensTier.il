    IL_001b:  call       instance float32 LaserPowerTransmitter::GetMultiplier(int32)
    IL_0020:  add
    IL_0021:  stloc.0
    IL_0022:  ldarg.0
    IL_0023:  dup
    // Next line is changed
    IL_0024:  ldfld      float32 LaserPowerTransmitter::mrBasePowerPacketSize
    IL_0029:  ldloc.0
    IL_002a:  mul
    // Next line is changed
    IL_002b:  stfld      float32 LaserPowerTransmitter::mrBasePowerPacketSize