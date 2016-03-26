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
	.maxstack 4
	.locals init (
		[0] uint16 cubeValue,
		[1] string,
		[2] class ['Assembly-CSharp']ILogicReciever,
		[3] int16,
		[4] object,
		[5] uint8[],
		[6] int32,
		[7] uint16,
		[8] object[]
	)
             ldsfld      class ['Assembly-CSharp']WorldScript ['Assembly-CSharp']WorldScript::'instance'
	         ldfld       class ['Assembly-CSharp']LocalPlayerScript ['Assembly-CSharp']WorldScript::localPlayerInstance
	         ldfld       class ['Assembly-CSharp']PlayerBlockPicker ['Assembly-CSharp']LocalPlayerScript::mPlayerBlockPicker
	         ldfld       uint16 ['Assembly-CSharp']PlayerBlockPicker::selectBlockValue
             stloc       cubeValue

	IL_0000: ldsfld      class ['Assembly-CSharp']WorldScript ['Assembly-CSharp']WorldScript::'instance'
	IL_0005: ldfld       class ['Assembly-CSharp']LocalPlayerScript ['Assembly-CSharp']WorldScript::localPlayerInstance
	IL_000a: ldfld       class ['Assembly-CSharp']PlayerBlockPicker ['Assembly-CSharp']LocalPlayerScript::mPlayerBlockPicker
	IL_000f: ldfld       uint16 ['Assembly-CSharp']PlayerBlockPicker::selectBlockType
    
	IL_001a: ldc.i4      550
	IL_001f: sub
	IL_0020: switch      (IL_0046, ANDTYPE, ORTYPE, NOTTYPE, IL_0066, IL_006e, IL_0076, IL_007e)

	IL_0045: ret

	IL_0046: ldstr       "Laser Emitter"
	IL_004b: stloc.1
	IL_004c: br          IL_0084

	ANDTYPE: ldloc       cubeValue
             switch      (ANDGATE, DOWNMUL, UPMUL, MEMORY)
             
    ANDGATE: ldstr       "Laser AND Gate"
	         br          SETNAME
             
    DOWNMUL: ldstr       "Laser Downscaler"
	         br          SETNAME
             
      UPMUL: ldstr       "Laser Upscaler"
	         br          SETNAME
             
     MEMORY: ldstr       "Laser Memory Cell"
             br          SETNAME

	 ORTYPE: ldloc       cubeValue
             switch      (ORGATE, ADDER, OVRFLOW)
             
     ORGATE: ldstr       "Laser OR Gate"
	         br          SETNAME
             
      ADDER: ldstr       "Laser Adder"
	         br          SETNAME
             
    OVRFLOW: ldstr       "Laser Overflow Checker"
	         br          SETNAME
             

	NOTTYPE: ldloc       cubeValue
             switch      (NOTGATE, NEGATOR)
             
    NOTGATE: ldstr       "Laser NOT Gate"
	         br          SETNAME
             
    NEGATOR: ldstr       "Laser Negator"
             br          SETNAME

	IL_0066: ldstr       "Laser Pressure Pad"
	IL_006b: stloc.1
	IL_006c: br          IL_0084

	IL_006e: ldstr       "Laser Splitter"
	IL_0073: stloc.1
	IL_0074: br          IL_0084

	IL_0076: ldstr       "Laser Mirror"
	IL_007b: stloc.1
	IL_007c: br          IL_0084

	IL_007e: ldloc       cubeValue
             switch      (POWER, CONVEY, STORAGE, CPH, LIFT, THREAT, TRACK, CRYSTAL)
             
             ldstr       "Laser Receptor (Sensor)"
             br          SETNAME
              
      POWER: ldstr       "Power Sensor"
             br          SETNAME
    
    CONVEY:  ldstr       "Conveyor Sensor"
             br          SETNAME
              
    STORAGE: ldstr       "Storage Sensor"
             br          SETNAME
              
        CPH: ldstr       "CPH Sensor"
             br          SETNAME
              
       LIFT: ldstr       "Lift Sensor"
             br         SETNAME
              
     THREAT: ldstr       "Threat Sensor"
             br         SETNAME
              
      TRACK: ldstr       "Minecart Track Sensor"
             br          SETNAME 
             
    CRYSTAL: ldstr       "Crystal Clock Sensor"
              
	SETNAME: stloc.1

	IL_0084: ldsfld      class ['Assembly-CSharp']WorldScript ['Assembly-CSharp']WorldScript::'instance'
	IL_0089: ldfld       class ['Assembly-CSharp']LocalPlayerScript ['Assembly-CSharp']WorldScript::localPlayerInstance
	IL_008e: ldfld       class ['Assembly-CSharp']PlayerBlockPicker ['Assembly-CSharp']LocalPlayerScript::mPlayerBlockPicker
	IL_0093: ldfld       class ['Assembly-CSharp']SegmentEntity ['Assembly-CSharp']PlayerBlockPicker::selectedEntity
	IL_0098: isinst      ['Assembly-CSharp']ILogicReciever
	IL_009d: stloc.2
	IL_009e: ldloc.2
	IL_009f: brfalse     IL_013b

	         ldloc.2
             callvirt    instance class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> ILogicReciever::GetLogicNode()
	         callvirt    instance !0[] class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8>::get_OutputValues()
	         stloc.s     5
	         ldloc.s     5
	         ldlen
	         conv.i4
	         ldc.i4.0
	         ble.s       OUTEXIT

	         ldloc.1
	         ldstr       "Next Output(s): "
	         call        string [mscorlib]System.String::Concat(string, string)
	         stloc.1
	         ldc.i4.0
	         stloc.s     6
	// loop start (head: OUTLOOP)
		OUTLOOP: ldloc.1
		         ldloc.s     5
		         ldloc.s     6
		         ldelem.u1
		         box         [mscorlib]System.Byte
		         call        string [mscorlib]System.String::Concat(object, object)
		         stloc.1
		         ldloc.s     6
		         ldc.i4.1
		         add
		         stloc.s     6
		         ldloc.s     6
		         ldloc.s     5
		         ldlen
		         conv.i4
		         beq.s       OUTEXIT

		         ldloc.1
		         ldstr       ", "
		         call        string [mscorlib]System.String::Concat(string, string)
		         stloc.1
		         br.s        OUTLOOP
	// end loop

	OUTEXIT: ldloc.2
             callvirt    instance class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> ILogicReciever::GetLogicNode()
	         callvirt    instance !0[] class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8>::get_InputValues()
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
             ldc.i4.0
	IL_0136: call        instance void UIManager::SetInfoText(string, float32, bool)

	IL_013b: ret
  } // end of method UIManager::UpdateLogicRecieverPopup
  