.class public auto ansi beforefieldinit LaserSplitterEntity
       extends MachineEntity
       implements ILogicReciever
{
  .field private uint8 mbCurrent
  .field private uint8 mbNext
  .field private int8 mUpdate
  .field private uint8 mbOutput
  .field private uint8 mFace
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Segment segment,
                               int64 x,
                               int64 y,
                               int64 z,
                               uint16 cube,
                               uint8 'flags',
                               uint16 lValue) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  11
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   10
    IL_0003:  ldc.i4.6
    IL_0004:  ldarg.2
    IL_0005:  ldarg.3
    IL_0006:  ldarg.s    z
    IL_0008:  ldarg.s    cube
    IL_000a:  ldarg.s    'flags'
    IL_000c:  ldarg.s    lValue
    IL_000e:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::get_zero()
    IL_0013:  ldarg.1
    IL_0014:  call       instance void MachineEntity::.ctor(valuetype eSegmentEntity,
                                                            valuetype SpawnableObjectEnum,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16,
                                                            valuetype [UnityEngine]UnityEngine.Vector3,
                                                            class Segment)
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.1
    IL_001b:  stfld      bool SegmentEntity::mbNeedsLowFrequencyUpdate
              ldarg.0
              ldarg.s    'flags'
              call       instance void LaserSplitterEntity::UpdateFaces(uint8)
    IL_0020:  ret
  } // end of method LaserSplitterEntity::.ctor

  .method public hidebysig newslot virtual 
          instance bool  IsFaceInput(uint8 face) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  2
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      uint8 LaserSplitterEntity::mFace
    IL_0007:  ceq
    IL_0009:  ret
  } // end of method LaserSplitterEntity::IsFaceInput

  .method public hidebysig newslot virtual 
          instance void  SetNextValue(uint8 'value',
                                      uint8 face) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
              ldarg.0
              ldarg.2
              callvirt   instance bool LaserSplitterEntity::IsFaceInput(uint8)
              brfalse.s  IL_0015
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      uint8 LaserSplitterEntity::mbNext
    IL_0007:  ldarg.0
    IL_0008:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_000d:  ldc.i4.1
    IL_000e:  and
    IL_000f:  conv.i1
    IL_0010:  stfld      int8 LaserSplitterEntity::mUpdate
    IL_0015:  ret
  } // end of method LaserSplitterEntity::SetNextValue

  .method public hidebysig newslot virtual instance int16
          GetOutput() cil managed
  {
              ldarg.0
			  ldfld     uint8 LaserSplitterEntity::mbOutput
			  ret
  } // end of method LaserSplitterEntity::GetOutput
  
  .method public hidebysig newslot virtual instance uint8[]
          GetInputs() cil managed
  {
    .maxstack 3
	.locals init (uint8[] inputs)
	          // Create byte array with 1 element
              ldc.i4.1
			  newarr     uint8
			  stloc.0
			  
			  // Set element 0 of array to value of mbNext
			  ldloc.0
			  ldc.i4.0
			  ldarg.0
			  ldfld      uint8 LaserSplitterEntity::mbNext
			  stelem.i1
			  
			  ldloc.0
			  ret
  } // end of method LaserSplitterEntity::GetInputs
  
  .method public hidebysig virtual instance void 
          LowFrequencyUpdate() cil managed
  {
    // Code size       242 (0xf2)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int8 LaserSplitterEntity::mUpdate
    IL_0006:  ldc.i4.m1
    IL_0007:  bne.un.s   IL_0012

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.0
    IL_000b:  stfld      uint8 LaserSplitterEntity::mbOutput
    IL_0010:  br.s       IL_0048

    IL_0012:  ldarg.0
    IL_0013:  ldfld      int8 LaserSplitterEntity::mUpdate
    IL_0018:  ldsfld     int32 ['Assembly-CSharp']LowFrequencyThread::mnThreadedUpdates
    IL_001d:  ldc.i4.1
    IL_001e:  and
    IL_001f:  conv.i1
    IL_0020:  bne.un.s   IL_003c

    IL_0022:  ldarg.0
    IL_0023:  ldarg.0
    IL_0024:  ldfld      uint8 LaserSplitterEntity::mbCurrent
    IL_0029:  stfld      uint8 LaserSplitterEntity::mbOutput
    IL_002e:  ldarg.0
    IL_002f:  ldarg.0
    IL_0030:  ldfld      uint8 LaserSplitterEntity::mbNext
    IL_0035:  stfld      uint8 LaserSplitterEntity::mbCurrent
    IL_003a:  br.s       IL_0048

    IL_003c:  ldarg.0
    IL_003d:  ldarg.0
    IL_003e:  ldfld      uint8 LaserSplitterEntity::mbNext
    IL_0043:  stfld      uint8 LaserSplitterEntity::mbOutput
    IL_0048:  ldarg.0
    IL_0049:  ldc.i4.m1
    IL_004a:  stfld      int8 LaserSplitterEntity::mUpdate
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0056:  ldc.i4.1
    IL_0057:  conv.i8
    IL_0058:  sub
    IL_0059:  ldarg.0
    IL_005a:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_005f:  ldarg.0
    IL_0060:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_0065:  call       instance void LaserSplitterEntity::UpdateBlock(int64,
                                                                        int64,
                                                                        int64)
    IL_006a:  ldarg.0
    IL_006b:  ldarg.0
    IL_006c:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0071:  ldc.i4.1
    IL_0072:  conv.i8
    IL_0073:  add
    IL_0074:  ldarg.0
    IL_0075:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_007a:  ldarg.0
    IL_007b:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_0080:  call       instance void LaserSplitterEntity::UpdateBlock(int64,
                                                                        int64,
                                                                        int64)
    IL_0085:  ldarg.0
    IL_0086:  ldarg.0
    IL_0087:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_008c:  ldarg.0
    IL_008d:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_0092:  ldc.i4.1
    IL_0093:  conv.i8
    IL_0094:  sub
    IL_0095:  ldarg.0
    IL_0096:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_009b:  call       instance void LaserSplitterEntity::UpdateBlock(int64,
                                                                        int64,
                                                                        int64)
    IL_00a0:  ldarg.0
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_00ad:  ldc.i4.1
    IL_00ae:  conv.i8
    IL_00af:  add
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_00b6:  call       instance void LaserSplitterEntity::UpdateBlock(int64,
                                                                        int64,
                                                                        int64)
    IL_00bb:  ldarg.0
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_00ce:  ldc.i4.1
    IL_00cf:  conv.i8
    IL_00d0:  sub
    IL_00d1:  call       instance void LaserSplitterEntity::UpdateBlock(int64,
                                                                        int64,
                                                                        int64)
    IL_00d6:  ldarg.0
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_00e9:  ldc.i4.1
    IL_00ea:  conv.i8
    IL_00eb:  add
    IL_00ec:  call       instance void LaserSplitterEntity::UpdateBlock(int64,
                                                                        int64,
                                                                        int64)
    IL_00f1:  ret
  } // end of method LaserSplitterEntity::LowFrequencyUpdate

  .method private hidebysig instance void 
          UpdateBlock(int64 x,
                      int64 y,
                      int64 z) cil managed
  {
    // Code size 170 (0xaa)
    .maxstack 5
    .locals init (
        [0] uint8,
        [1] class ['Assembly-CSharp']Segment,
        [2] uint16,
        [3] class ['Assembly-CSharp']ILogicReciever
    )

    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: ldarg.1
    IL_0003: ldarg.0
    IL_0004: ldfld       int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0009: ble.s       IL_0010

    IL_000b: ldc.i4.s    16
    IL_000d: stloc.0
    IL_000e: br.s        IL_0050

    IL_0010: ldarg.1
    IL_0011: ldarg.0
    IL_0012: ldfld       int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0017: bge.s       IL_001e

    IL_0019: ldc.i4.s    32
    IL_001b: stloc.0
    IL_001c: br.s        IL_0050

    IL_001e: ldarg.2
    IL_001f: ldarg.0
    IL_0020: ldfld       int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_0025: ble.s       IL_002b

    IL_0027: ldc.i4.2
    IL_0028: stloc.0
    IL_0029: br.s        IL_0050

    IL_002b: ldarg.2
    IL_002c: ldarg.0
    IL_002d: ldfld       int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_0032: bge.s       IL_0038

    IL_0034: ldc.i4.1
    IL_0035: stloc.0
    IL_0036: br.s        IL_0050

    IL_0038: ldarg.3
    IL_0039: ldarg.0
    IL_003a: ldfld       int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_003f: ble.s       IL_0045

    IL_0041: ldc.i4.8
    IL_0042: stloc.0
    IL_0043: br.s        IL_0050

    IL_0045: ldarg.3
    IL_0046: ldarg.0
    IL_0047: ldfld       int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_004c: bge.s       IL_0050

    IL_004e: ldc.i4.4
    IL_004f: stloc.0

    IL_0050: ldarg.0
             ldfld       uint8 LaserSplitterEntity::mFace
    IL_0052: ldloc.0
    IL_0053: call        uint8 ['Assembly-CSharp']LaserLogicGate::CalcOppositeFace(uint8)
    IL_0058: bne.un.s    IL_005b

    IL_005a: ret

    IL_005b: ldarg.0
    IL_005c: ldarg.1
    IL_005d: ldarg.2
    IL_005e: ldarg.3
    IL_005f: call        instance class ['Assembly-CSharp']Segment ['Assembly-CSharp']MachineEntity::AttemptGetSegment(int64, int64, int64)
    IL_0064: stloc.1
    IL_0065: ldloc.1
    IL_0066: brtrue.s    IL_0069

    IL_0068: ret

    IL_0069: ldloc.1
    IL_006a: ldarg.1
    IL_006b: ldarg.2
    IL_006c: ldarg.3
    IL_006d: callvirt    instance uint16 ['Assembly-CSharp']Segment::GetCube(int64, int64, int64)
    IL_0072: stloc.2
    IL_0073: ldloc.2
    IL_0074: call        bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_0079: brfalse.s   IL_00a9

    IL_007b: ldloc.1
    IL_007c: ldarg.1
    IL_007d: ldarg.2
    IL_007e: ldarg.3
    IL_007f: callvirt    instance class ['Assembly-CSharp']SegmentEntity ['Assembly-CSharp']Segment::SearchEntity(int64, int64, int64)
    IL_0084: isinst      ['Assembly-CSharp']ILogicReciever
    IL_0089: stloc.3
    IL_008a: ldloc.3
    IL_008b: brfalse.s   IL_00a9

    IL_008d: ldloc.3
    IL_008e: ldloc.0
    IL_008f: callvirt    instance bool ['Assembly-CSharp']ILogicReciever::IsFaceInput(uint8)
    IL_0094: brfalse.s   IL_00a9

    IL_0096: ldloc.3
    IL_0097: ldarg.0
    IL_0098: ldfld       uint8 LaserSplitterEntity::mbOutput
    IL_009d: ldloc.0
    IL_009e: callvirt    instance void ['Assembly-CSharp']ILogicReciever::SetNextValue(uint8, uint8)
    IL_00a3: ldarg.0
    IL_00a4: callvirt    instance void ['Assembly-CSharp']SegmentEntity::MarkDirtyDelayed()

    IL_00a9: ret
  } // end of method LaserSplitterEntity::UpdateBlock

  .method private hidebysig instance void 
          UpdateFaces(uint8 'flags') cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       uint8 ['Assembly-CSharp']LaserLogicGate::CalcFrontFace(uint8)
    IL_0007:  call       uint8 ['Assembly-CSharp']LaserLogicGate::CalcOppositeFace(uint8)
    IL_000c:  stfld      uint8 LaserSplitterEntity::mFace
    IL_0011:  ret
  } // end of method LaserSplitterEntity::UpdateFaces

  .method public hidebysig virtual instance void 
          OnUpdateRotation(uint8 'flags') cil managed
  {
    // Code size       15 (0xf)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void ['Assembly-CSharp']MachineEntity::OnUpdateRotation(uint8)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void LaserSplitterEntity::UpdateFaces(uint8)
    IL_000e:  ret
  } // end of method LaserSplitterEntity::OnUpdateRotation
  
} // end of class LaserSplitterEntity
