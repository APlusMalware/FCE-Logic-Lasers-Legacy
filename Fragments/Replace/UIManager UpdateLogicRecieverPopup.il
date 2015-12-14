  // Original stuff, just used to find the insert location
  .method private hidebysig static void  SetGameUpdateRate() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   30
    IL_0002:  stsfld     int32 UIManager::UI_UpdateRate
    IL_0007:  ret
  } // end of method UIManager::SetGameUpdateRate
  
  // Actual new code
  .method private hidebysig instance void  UpdateLogicRecieverPopup() cil managed
  {
    .maxstack 3
    .locals init (
		[0] class ['Assembly-CSharp']ILogicReciever reciever,
		[1] string text,
		[2] int16 output,
		[3] uint8[] inputs,
		[4] int32 i,
		[5] object temp,
		[6] object[] concatTemp,
        [7] uint16 selectedBlockType
	)
             // Get block type
             ldsfld     class WorldScript WorldScript::'instance'
             ldfld      class LocalPlayerScript WorldScript::localPlayerInstance
             ldfld      class PlayerBlockPicker LocalPlayerScript::mPlayerBlockPicker
             ldfld      uint16 PlayerBlockPicker::selectBlockType
             stloc.s    selectedBlockType
             
             // Check if block type is a logic laser
             ldloc.s    selectedBlockType
             ldc.i4     550
             beq.s      IL_0000
             
             ldloc.s    selectedBlockType
             ldc.i4     551
             beq.s      IL_0000
             
             ldloc.s    selectedBlockType
             ldc.i4     552
             beq.s      IL_0000
             
             ldloc.s    selectedBlockType
             ldc.i4     553
             beq.s      IL_0000
             
             ldloc.s    selectedBlockType
             ldc.i4     554
             beq.s      IL_0000
             
             ldloc.s    selectedBlockType
             ldc.i4     555
             beq.s      IL_0000
             
             ldloc.s    selectedBlockType
             ldc.i4     556
             beq.s      IL_0000
             
             ldloc.s    selectedBlockType
             ldc.i4     557
             beq.s      IL_0000
             ret
    
	IL_0000: ldsfld class ['Assembly-CSharp']WorldScript ['Assembly-CSharp']WorldScript::'instance'
	IL_0005: ldfld class ['Assembly-CSharp']LocalPlayerScript ['Assembly-CSharp']WorldScript::localPlayerInstance
	IL_000a: ldfld class ['Assembly-CSharp']PlayerBlockPicker ['Assembly-CSharp']LocalPlayerScript::mPlayerBlockPicker
	IL_000f: ldfld class ['Assembly-CSharp']SegmentEntity ['Assembly-CSharp']PlayerBlockPicker::selectedEntity
	IL_0014: isinst ['Assembly-CSharp']ILogicReciever
	IL_0019: stloc.0
	IL_001a: ldloc.0
	IL_001b: brfalse IL_00b9

	IL_0020: ldstr "Some Logic Thing (TM)\n"
	IL_0025: stloc.1
	IL_0026: ldloc.0
	IL_0027: callvirt instance int16 ['Assembly-CSharp']ILogicReciever::GetOutput()
	IL_002c: stloc.2
	IL_002d: ldloc.2
	IL_002e: ldc.i4.m1
	IL_002f: beq.s IL_0066

	IL_0031: ldloc.1
	IL_0032: stloc.s 5
	IL_0034: ldc.i4.4
	IL_0035: newarr [mscorlib]System.Object
	IL_003a: stloc.s 6
	IL_003c: ldloc.s 6
	IL_003e: ldc.i4.0
	IL_003f: ldloc.s 5
	IL_0041: stelem.ref
	IL_0042: ldloc.s 6
	IL_0044: ldc.i4.1
	IL_0045: ldstr "Current Output: "
	IL_004a: stelem.ref
	IL_004b: ldloc.s 6
	IL_004d: ldc.i4.2
	IL_004e: ldloc.2
	IL_004f: box [mscorlib]System.Int16
	IL_0054: stelem.ref
	IL_0055: ldloc.s 6
	IL_0057: ldc.i4.3
	IL_0058: ldstr "\n"
	IL_005d: stelem.ref
	IL_005e: ldloc.s 6
	IL_0060: call string [mscorlib]System.String::Concat(object[])
	IL_0065: stloc.1

	IL_0066: ldloc.0
	IL_0067: callvirt instance uint8[] ['Assembly-CSharp']LaserLogicGate::GetInputs()
	IL_006c: stloc.3
	IL_006d: ldloc.3
	IL_006e: ldlen
	IL_006f: conv.i4
	IL_0070: ldc.i4.0
	IL_0071: ble.s IL_00ad

	IL_0073: ldloc.1
	IL_0074: ldstr "Next Inputs: "
	IL_0079: call string [mscorlib]System.String::Concat(string, string)
	IL_007e: stloc.1
	IL_007f: ldc.i4.0
	IL_0080: stloc.s 4
	// loop start (head: IL_0082)
		IL_0082: ldloc.1
		IL_0083: ldloc.3
		IL_0084: ldloc.s 4
		IL_0086: ldelem.u1
		IL_0087: box [mscorlib]System.Byte
		IL_008c: call string [mscorlib]System.String::Concat(object, object)
		IL_0091: stloc.1
		IL_0092: ldloc.s 4
		IL_0094: ldc.i4.1
		IL_0095: add
		IL_0096: stloc.s 4
		IL_0098: ldloc.s 4
		IL_009a: ldloc.3
		IL_009b: ldlen
		IL_009c: conv.i4
		IL_009d: beq.s IL_00ad

		IL_009f: ldloc.1
		IL_00a0: ldstr ", "
		IL_00a5: call string [mscorlib]System.String::Concat(string, string)
		IL_00aa: stloc.1
		IL_00ab: br.s IL_0082
	// end loop

	IL_00ad: ldarg.0
	IL_00ae: ldloc.1
	IL_00af: ldc.r4 0.6
	IL_00b4: call instance void UIManager::SetInfoText(string, float32)

	IL_00b9: ret
  } // end of method UIManager::UpdateLogicRecieverPopup
  