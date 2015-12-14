              // Actual new code
              ldarg.0
              ldfld      uint8 ConveyorEntity::mNext
              conv.r4
              ldc.r4     255
              div
              mul
              ldarg.0
              ldc.i4     255
              stfld      uint8 ConveyorEntity::mNext
              // End new code
    IL_0108:  stfld      float32 ConveyorEntity::mrCarrySpeed
    IL_010d:  ldarg.0
    IL_010e:  ldc.i4.1
    IL_010f:  stfld      bool ConveyorEntity::mbConveyorNeedsColourChange
              br.s       Next
              // Actual new code
              // Multiplies the conveyor speed by mValue / 255
    IL_0114:  ldarg.0
              ldarg.0
              ldfld      float32 ConveyorEntity::mrBaseCarrySpeed
              ldarg.0
              ldfld      uint8 ConveyorEntity::mNext
              conv.r4
              ldc.r4     255
              div
              mul
              stfld      float32 ConveyorEntity::mrCarrySpeed
              // Resets mValue to 255
              ldarg.0
              ldc.i4     255
              stfld      uint8 ConveyorEntity::mNext
              
       Next:  ldarg.0
              // End new code