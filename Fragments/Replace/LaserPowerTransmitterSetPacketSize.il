    IL_0000:  ldarg.0
    IL_0001:  ldfld      uint16 MachineEntity::mValue
    IL_0006:  ldc.i4.2
    IL_0007:  bne.un     IL_0017

    IL_000c:  ldarg.0
    IL_000d:  ldc.r4     64.
    // Next line is changed
    IL_0012:  stfld      float32 LaserPowerTransmitter::mrBasePowerPacketSize
    IL_0017:  ldarg.0
    IL_0018:  ldfld      uint16 MachineEntity::mValue
    IL_001d:  ldc.i4.1
    IL_001e:  bne.un     IL_002e

    IL_0023:  ldarg.0
    IL_0024:  ldc.r4     24.
    // Next line is changed
    IL_0029:  stfld      float32 LaserPowerTransmitter::mrBasePowerPacketSize
    IL_002e:  ldarg.0
    IL_002f:  ldfld      uint16 MachineEntity::mValue
    IL_0034:  brtrue     IL_0044

    IL_0039:  ldarg.0
    IL_003a:  ldc.r4     10.
    // Next line is changed
    IL_003f:  stfld      float32 LaserPowerTransmitter::mrBasePowerPacketSize
    IL_0044:  ldarg.0
    IL_0045:  ldfld      uint16 MachineEntity::mValue
    IL_004a:  ldc.i4.s   99
    IL_004c:  bne.un     IL_005c

    IL_0051:  ldarg.0
    IL_0052:  ldc.r4     1.75
    // Next line is changed
    IL_0057:  stfld      float32 LaserPowerTransmitter::mrBasePowerPacketSize
    IL_005c:  ret