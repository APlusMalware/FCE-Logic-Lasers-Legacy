.class public auto ansi abstract beforefieldinit LaserTwoInputGate
       extends LaserLogicGate
	   implements ILogicReciever
{
  .field family uint8 mbCurrentLeft
  .field family uint8 mbCurrentRight
  .field family uint8 mbNextLeft
  .field family uint8 mbNextRight
  .field family uint8 mbLeftFace
  .field family uint8 mbRightFace
  .field family int8 mLeftUpdate
  .field family int8 mRightUpdate
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype eSegmentEntity segmentEntity,
                               valuetype SpawnableObjectEnum spawnableObject,
                               int64 x,
                               int64 y,
                               int64 z,
                               uint16 cube,
                               uint8 'flags',
                               uint16 lValue,
                               class Segment segment,
                               class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8> logicNode) cil managed
  {
    // Code size       67 (0x43)
    .maxstack  11
              ldarg.0
              ldarg.1
              ldarg.2
              ldarg.3
			  ldarg.s    y
              ldarg.s    z
              ldarg.s    cube
              ldarg.s    'flags'
              ldarg.s    lValue
              ldarg.s    segment
              ldarg.s    logicNode
              call       instance void ['Assembly-CSharp']LaserLogicGate::.ctor(valuetype ['Assembly-CSharp']eSegmentEntity,
                                                                                    valuetype ['Assembly-CSharp']SpawnableObjectEnum,
                                                                                    int64,
                                                                                    int64,
                                                                                    int64,
                                                                                    uint16,
                                                                                    uint8,
                                                                                    uint16,
                                                                                    class ['Assembly-CSharp']Segment,
                                                                                    class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.LogicNode`1<uint8>)
              ldarg.0
              ldc.i4.0
              stfld      uint8 LaserTwoInputGate::mbCurrentLeft
              ldarg.0
              ldc.i4.0
              stfld      uint8 LaserTwoInputGate::mbCurrentRight
              ldarg.0
              ldc.i4.0
              stfld      uint8 LaserTwoInputGate::mbNextLeft
              ldarg.0
              ldc.i4.0
              stfld      uint8 LaserTwoInputGate::mbNextRight
              ldarg.0
              ldc.i4.0
              stfld      uint8 LaserLogicGate::mbOutput
              ldarg.0
              ldarg.s    'flags'
              call       instance void LaserTwoInputGate::UpdateFaces(uint8)
              ret
  } // end of method LaserTwoInputGate::.ctor

  .method public hidebysig virtual instance void 
          LowFrequencyUpdate() cil managed
  {
    // Code size       140 (0x8c)
    .maxstack  4
    .locals init (uint8 V_0,
             uint8 V_1,
             int8 V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_0009:  ldc.i4.1
    IL_000a:  and
    IL_000b:  conv.i1
    IL_000c:  stloc.2
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int8 LaserTwoInputGate::mLeftUpdate
    IL_0013:  ldloc.2
    IL_0014:  bne.un.s   IL_002b

    IL_0016:  ldarg.0
    IL_0017:  ldfld      uint8 LaserTwoInputGate::mbCurrentLeft
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      uint8 LaserTwoInputGate::mbNextLeft
    IL_0024:  stfld      uint8 LaserTwoInputGate::mbCurrentLeft
    IL_0029:  br.s       IL_003b

    IL_002b:  ldarg.0
    IL_002c:  ldfld      int8 LaserTwoInputGate::mLeftUpdate
    IL_0031:  ldc.i4.m1
    IL_0032:  beq.s      IL_003b

    IL_0034:  ldarg.0
    IL_0035:  ldfld      uint8 LaserTwoInputGate::mbNextLeft
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      int8 LaserTwoInputGate::mRightUpdate
    IL_0041:  ldloc.2
    IL_0042:  bne.un.s   IL_0059

    IL_0044:  ldarg.0
    IL_0045:  ldfld      uint8 LaserTwoInputGate::mbCurrentRight
    IL_004a:  stloc.1
    IL_004b:  ldarg.0
    IL_004c:  ldarg.0
    IL_004d:  ldfld      uint8 LaserTwoInputGate::mbNextRight
    IL_0052:  stfld      uint8 LaserTwoInputGate::mbCurrentRight
    IL_0057:  br.s       IL_0069

    IL_0059:  ldarg.0
    IL_005a:  ldfld      int8 LaserTwoInputGate::mRightUpdate
    IL_005f:  ldc.i4.m1
    IL_0060:  beq.s      IL_0069

    IL_0062:  ldarg.0
    IL_0063:  ldfld      uint8 LaserTwoInputGate::mbNextRight
    IL_0068:  stloc.1
	
    IL_0069:  ldarg.0
	          ldarg.0
			  ldloc.0
			  ldloc.1
		      callvirt   instance uint8 ['Assembly-CSharp']LaserTwoInputGate::UpdateOutput(uint8, uint8)
    IL_0072:  stfld      uint8 ['Assembly-CSharp']LaserLogicGate::mbOutput
    IL_0077:  ldarg.0
    IL_0078:  ldc.i4.m1
    IL_0079:  stfld      int8 LaserTwoInputGate::mLeftUpdate
    IL_007e:  ldarg.0
    IL_007f:  ldc.i4.m1
    IL_0080:  stfld      int8 LaserTwoInputGate::mRightUpdate
    IL_0085:  ldarg.0
    IL_0086:  callvirt   instance void ['Assembly-CSharp']LaserLogicGate::UpdateLaser()
    IL_008b:  ret
  } // end of method LaserTwoInputGate::LowFrequencyUpdate

  .method public hidebysig virtual instance bool 
          IsFaceInput(uint8 face) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      uint8 LaserTwoInputGate::mbLeftFace
    IL_0007:  beq.s      IL_0013

    IL_0009:  ldarg.1
    IL_000a:  ldarg.0
    IL_000b:  ldfld      uint8 LaserTwoInputGate::mbRightFace
    IL_0010:  ceq
    IL_0012:  ret

    IL_0013:  ldc.i4.1
    IL_0014:  ret
  } // end of method LaserTwoInputGate::IsFaceInput

  .method public hidebysig virtual instance void 
          SetNextValue(uint8 'value',
                       uint8 face) cil managed
  {
    // Code size       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  ldarg.0
    IL_0002:  ldfld      uint8 LaserTwoInputGate::mbLeftFace
    IL_0007:  bne.un.s   IL_001f

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      uint8 LaserTwoInputGate::mbNextLeft
    IL_0010:  ldarg.0
    IL_0011:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_0016:  ldc.i4.1
    IL_0017:  and
    IL_0018:  conv.i1
    IL_0019:  stfld      int8 LaserTwoInputGate::mLeftUpdate
    IL_001e:  ret

    IL_001f:  ldarg.2
    IL_0020:  ldarg.0
    IL_0021:  ldfld      uint8 LaserTwoInputGate::mbRightFace
    IL_0026:  bne.un.s   IL_003d

    IL_0028:  ldarg.0
    IL_0029:  ldarg.1
    IL_002a:  stfld      uint8 LaserTwoInputGate::mbNextRight
    IL_002f:  ldarg.0
    IL_0030:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_0035:  ldc.i4.1
    IL_0036:  and
    IL_0037:  conv.i1
    IL_0038:  stfld      int8 LaserTwoInputGate::mRightUpdate
    IL_003d:  ret
  } // end of method LaserTwoInputGate::SetNextValue

  .method private hidebysig instance void 
          UpdateFaces(uint8 'flags') cil managed
  {
    // Code size       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  call       uint8 ['Assembly-CSharp']CubeHelper::RotateFlags(uint8,
                                                                          bool)
    IL_0008:  call       uint8 ['Assembly-CSharp']LaserLogicGate::CalcFrontFace(uint8)
    IL_000d:  stfld      uint8 LaserTwoInputGate::mbLeftFace
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldc.i4.1
    IL_0015:  call       uint8 ['Assembly-CSharp']CubeHelper::RotateFlags(uint8,
                                                                          bool)
    IL_001a:  call       uint8 ['Assembly-CSharp']LaserLogicGate::CalcFrontFace(uint8)
    IL_001f:  stfld      uint8 LaserTwoInputGate::mbRightFace
    IL_0024:  ret
  } // end of method LaserTwoInputGate::UpdateFaces
  
  .method public hidebysig virtual instance uint8[]
          GetInputs() cil managed
  {
    .maxstack 3
	.locals init (uint8[] inputs)
	          // Create byte array with 2 elements
              ldc.i4.2
			  newarr     uint8
			  stloc.0
			  
			  // Set element 0 of array to value of mbNextLeft
			  ldloc.0
			  ldc.i4.0
			  ldarg.0
			  ldfld      uint8 LaserTwoInputGate::mbNextLeft
			  stelem.i1
			  
			  // Set element 1 of array to value of mbNextRight
			  ldloc.0
			  ldc.i4.1
			  ldarg.0
			  ldfld      uint8 LaserTwoInputGate::mbNextRight
			  stelem.i1
			  
			  ldloc.0
			  ret
  }

  .method public hidebysig virtual instance void 
          OnUpdateRotation(uint8 'flags') cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void ['Assembly-CSharp']LaserLogicGate::OnUpdateRotation(uint8)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void LaserTwoInputGate::UpdateFaces(uint8)
    IL_000e:  ret
  } // end of method LaserTwoInputGate::OnUpdateRotation
  
  .method family hidebysig newslot abstract virtual instance uint8
          UpdateOutput(uint8 left,
		               uint8 right) cil managed
  {
  } // end of method LaserTwoInputGate::UpdateOutput

} // end of class LaserTwoInputGate
