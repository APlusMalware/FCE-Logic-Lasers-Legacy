    IL_0011:  stfld      float32 LaserPowerTransmitter::mrPowerTick
    IL_0016:  ldarg.0
    IL_0017:  ldc.r4     32.
    // Next line is changed.
    IL_001c:  stfld      float32 LaserPowerTransmitter::mrBasePowerPacketSize
              ldarg.0
              ldc.i4     255
              stfld      uint8 LaserPowerTransmitter::mNext