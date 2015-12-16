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
	// Code size 316 (0x13c)
	.maxstack 3
	.locals init (
		[0] uint16,
		[1] string,
		[2] class ['Assembly-CSharp']ILogicReciever,
		[3] int16,
		[4] object,
		[5] uint8[],
		[6] int32,
		[7] uint16,
		[8] object[]
	)

	IL_0000: ldsfld      class ['Assembly-CSharp']WorldScript ['Assembly-CSharp']WorldScript::'instance'
	IL_0005: ldfld       class ['Assembly-CSharp']LocalPlayerScript ['Assembly-CSharp']WorldScript::localPlayerInstance
	IL_000a: ldfld       class ['Assembly-CSharp']PlayerBlockPicker ['Assembly-CSharp']LocalPlayerScript::mPlayerBlockPicker
	IL_000f: ldfld       uint16 ['Assembly-CSharp']PlayerBlockPicker::selectBlockType
	IL_0014: stloc.0
	IL_0015: ldloc.0
	IL_0016: stloc.s     7
	IL_0018: ldloc.s     7
	IL_001a: ldc.i4      550
	IL_001f: sub
	IL_0020: switch      (IL_0046, IL_004e, IL_0056, IL_005e, IL_0066, IL_006e, IL_0076, IL_007e)

	IL_0045: ret

	IL_0046: ldstr       "Laser Emitter"
	IL_004b: stloc.1
	IL_004c: br.s        IL_0084

	IL_004e: ldstr       "Laser AND Gate"
	IL_0053: stloc.1
	IL_0054: br.s        IL_0084

	IL_0056: ldstr       "Laser OR Gate"
	IL_005b: stloc.1
	IL_005c: br.s        IL_0084

	IL_005e: ldstr       "Laser NOT Gate"
	IL_0063: stloc.1
	IL_0064: br.s        IL_0084

	IL_0066: ldstr       "Laser Pressure Pad"
	IL_006b: stloc.1
	IL_006c: br.s        IL_0084

	IL_006e: ldstr       "Laser Splitter"
	IL_0073: stloc.1
	IL_0074: br.s        IL_0084

	IL_0076: ldstr       "Laser Mirror"
	IL_007b: stloc.1
	IL_007c: br.s        IL_0084

	IL_007e: ldstr       "Laser Receptor (Sensor)"
	IL_0083: stloc.1

	IL_0084: ldsfld      class ['Assembly-CSharp']WorldScript ['Assembly-CSharp']WorldScript::'instance'
	IL_0089: ldfld       class ['Assembly-CSharp']LocalPlayerScript ['Assembly-CSharp']WorldScript::localPlayerInstance
	IL_008e: ldfld       class ['Assembly-CSharp']PlayerBlockPicker ['Assembly-CSharp']LocalPlayerScript::mPlayerBlockPicker
	IL_0093: ldfld       class ['Assembly-CSharp']SegmentEntity ['Assembly-CSharp']PlayerBlockPicker::selectedEntity
	IL_0098: isinst      ['Assembly-CSharp']ILogicReciever
	IL_009d: stloc.2
	IL_009e: ldloc.2
	IL_009f: brfalse     IL_013b

	IL_00a4: ldloc.2
	IL_00a5: callvirt    instance int16 ['Assembly-CSharp']ILogicReciever::GetOutput()
	IL_00aa: stloc.3
	IL_00ab: ldloc.3
	IL_00ac: ldc.i4.m1
	IL_00ad: beq.s       IL_00e4

	IL_00af: ldloc.1
	IL_00b0: stloc.s     4
	IL_00b2: ldc.i4.4
	IL_00b3: newarr      [mscorlib]System.Object
	IL_00b8: stloc.s     8
	IL_00ba: ldloc.s     8
	IL_00bc: ldc.i4.0
	IL_00bd: ldloc.s     4
	IL_00bf: stelem.ref
	IL_00c0: ldloc.s     8
	IL_00c2: ldc.i4.1
	IL_00c3: ldstr       "\nCurrent Output: "
	IL_00c8: stelem.ref
	IL_00c9: ldloc.s     8
	IL_00cb: ldc.i4.2
	IL_00cc: ldloc.3
	IL_00cd: box         [mscorlib]System.Int16
	IL_00d2: stelem.ref
	IL_00d3: ldloc.s     8
	IL_00d5: ldc.i4.3
	IL_00d6: ldstr       "\n"
	IL_00db: stelem.ref
	IL_00dc: ldloc.s     8
	IL_00de: call        string [mscorlib]System.String::Concat(object[])
	IL_00e3: stloc.1

	IL_00e4: ldloc.2
	IL_00e5: callvirt    instance uint8[] ['Assembly-CSharp']ILogicReciever::GetInputs()
	IL_00ea: stloc.s     5
	IL_00ec: ldloc.s     5
	IL_00ee: ldlen
	IL_00ef: conv.i4
	IL_00f0: ldc.i4.0
	IL_00f1: ble.s       IL_012f

	IL_00f3: ldloc.1
	IL_00f4: ldstr       "Next Input(s): "
	IL_00f9: call        string [mscorlib]System.String::Concat(string, string)
	IL_00fe: stloc.1
	IL_00ff: ldc.i4.0
	IL_0100: stloc.s     6
	// loop start (head: IL_0102)
		IL_0102: ldloc.1
		IL_0103: ldloc.s     5
		IL_0105: ldloc.s     6
		IL_0107: ldelem.u1
		IL_0108: box         [mscorlib]System.Byte
		IL_010d: call        string [mscorlib]System.String::Concat(object, object)
		IL_0112: stloc.1
		IL_0113: ldloc.s     6
		IL_0115: ldc.i4.1
		IL_0116: add
		IL_0117: stloc.s     6
		IL_0119: ldloc.s     6
		IL_011b: ldloc.s     5
		IL_011d: ldlen
		IL_011e: conv.i4
		IL_011f: beq.s       IL_012f

		IL_0121: ldloc.1
		IL_0122: ldstr       ", "
		IL_0127: call        string [mscorlib]System.String::Concat(string, string)
		IL_012c: stloc.1
		IL_012d: br.s        IL_0102
	// end loop

	IL_012f: ldarg.0
	IL_0130: ldloc.1
	IL_0131: ldc.r4      0.6
	IL_0136: call        instance void UIManager::SetInfoText(string, float32)

	IL_013b: ret
  } // end of method UIManager::UpdateLogicRecieverPopup
  