.class public auto ansi beforefieldinit LaserSplitterEntity
       extends MachineEntity
       implements IBooleanReciever
{
  .field private uint8 mbCurrent
  .field private uint8 mbNext
  .field private int8 mUpdate
  .field private uint8 mbOutput
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
    IL_0020:  ret
  } // end of method LaserSplitterEntity::.ctor

  .method public hidebysig newslot virtual 
          instance bool  IsFaceInput(uint8 face) cil managed
  {
    // Code size       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method LaserSplitterEntity::IsFaceInput

  .method public hidebysig newslot virtual 
          instance void  SetNextValue(uint8 'value',
                                      uint8 face) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
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
    // Code size       159 (0x9f)
    .maxstack  4
    .locals init (class ['Assembly-CSharp']Segment V_0,
             uint16 V_1,
             class ['Assembly-CSharp']IBooleanReciever V_2,
             uint8 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance class ['Assembly-CSharp']Segment ['Assembly-CSharp']MachineEntity::AttemptGetSegment(int64,
                                                                                                                       int64,
                                                                                                                       int64)
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  brtrue.s   IL_000e

    IL_000d:  ret

    IL_000e:  ldloc.0
    IL_000f:  ldarg.1
    IL_0010:  ldarg.2
    IL_0011:  ldarg.3
    IL_0012:  callvirt   instance uint16 ['Assembly-CSharp']Segment::GetCube(int64,
                                                                             int64,
                                                                             int64)
    IL_0017:  stloc.1
    IL_0018:  ldloc.1
    IL_0019:  call       bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_001e:  brfalse.s  IL_009e

    IL_0020:  ldloc.0
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  ldarg.3
    IL_0024:  callvirt   instance class ['Assembly-CSharp']SegmentEntity ['Assembly-CSharp']Segment::SearchEntity(int64,
                                                                                                                  int64,
                                                                                                                  int64)
    IL_0029:  isinst     ['Assembly-CSharp']IBooleanReciever
    IL_002e:  stloc.2
    IL_002f:  ldloc.2
    IL_0030:  brfalse.s  IL_009e

    IL_0032:  ldc.i4.0
    IL_0033:  stloc.3
    IL_0034:  ldarg.1
    IL_0035:  ldarg.0
    IL_0036:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_003b:  ble.s      IL_0042

    IL_003d:  ldc.i4.s   16
    IL_003f:  stloc.3
    IL_0040:  br.s       IL_0082

    IL_0042:  ldarg.1
    IL_0043:  ldarg.0
    IL_0044:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0049:  bge.s      IL_0050

    IL_004b:  ldc.i4.s   32
    IL_004d:  stloc.3
    IL_004e:  br.s       IL_0082

    IL_0050:  ldarg.2
    IL_0051:  ldarg.0
    IL_0052:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_0057:  ble.s      IL_005d

    IL_0059:  ldc.i4.2
    IL_005a:  stloc.3
    IL_005b:  br.s       IL_0082

    IL_005d:  ldarg.2
    IL_005e:  ldarg.0
    IL_005f:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_0064:  bge.s      IL_006a

    IL_0066:  ldc.i4.1
    IL_0067:  stloc.3
    IL_0068:  br.s       IL_0082

    IL_006a:  ldarg.3
    IL_006b:  ldarg.0
    IL_006c:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_0071:  ble.s      IL_0077

    IL_0073:  ldc.i4.8
    IL_0074:  stloc.3
    IL_0075:  br.s       IL_0082

    IL_0077:  ldarg.3
    IL_0078:  ldarg.0
    IL_0079:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_007e:  bge.s      IL_0082

    IL_0080:  ldc.i4.4
    IL_0081:  stloc.3
    IL_0082:  ldloc.2
    IL_0083:  ldloc.3
    IL_0084:  callvirt   instance bool ['Assembly-CSharp']IBooleanReciever::IsFaceInput(uint8)
    IL_0089:  brfalse.s  IL_009e

    IL_008b:  ldloc.2
    IL_008c:  ldarg.0
    IL_008d:  ldfld      uint8 LaserSplitterEntity::mbOutput
    IL_0092:  ldloc.3
    IL_0093:  callvirt   instance void IBooleanReciever::SetNextValue(uint8,
                                                                      uint8)
    IL_0098:  ldarg.0
    IL_0099:  callvirt   instance void ['Assembly-CSharp']SegmentEntity::MarkDirtyDelayed()
    IL_009e:  ret
  } // end of method LaserSplitterEntity::UpdateBlock

} // end of class LaserSplitterEntity
