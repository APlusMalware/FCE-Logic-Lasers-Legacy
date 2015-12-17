    IL_0076:  ldfld      float32 LaserPowerTransmitter::mrMaxPower
    IL_007b:  div
    IL_007c:  stfld      float32 LaserPowerTransmitter::mrNormalisedPower
    // Actual new code
              ldarg.0
              ldarg.0
              ldfld      uint8 LaserPowerTransmitter::mNext
              conv.r4
              ldc.r4     255
              div
              ldarg.0
              ldfld      float32 LaserPowerTransmitter::mrBasePowerPacketSize
              mul
              stfld      float32 LaserPowerTransmitter::mrPowerPacketSize
              ldarg.0
              ldc.i4     255
              stfld      uint8 LaserPowerTransmitter::mNext