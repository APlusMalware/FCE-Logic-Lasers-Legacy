.class public auto ansi beforefieldinit LaserReceptorEntity
       extends MachineEntity
{
  .field private int64 mnSourceX
  .field private int64 mnSourceY
  .field private int64 mnSourceZ
  .field private uint8 mOutput
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
    IL_0001:  ldc.i4.s   12
    IL_0003:  ldc.i4.s   44
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
			  call       instance void ['Assembly-CSharp']LaserReceptorEntity::UpdateFaces(uint8)
    IL_0020:  ret
  } // end of method LaserReceptorEntity::.ctor

  .method public hidebysig virtual instance void 
          LowFrequencyUpdate() cil managed
  {
    // Code size       388 (0x184)
    .maxstack  4
    .locals init (class ['Assembly-CSharp']Segment segment,
             uint16 sourceCube,
             class ['Assembly-CSharp']SegmentEntity sourceEntity,
             class ['Assembly-CSharp']PowerConsumerInterface sourcePowerConsumer,
             float32 maxPower,
             float32 powerLeft,
             float32 V_6,
             int64 V_7,
             int64 V_8,
             int64 V_9,
             class ['Assembly-CSharp']Segment V_10,
             class ['Assembly-CSharp']IBooleanReciever V_11,
             uint8 V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int64 LaserReceptorEntity::mnSourceX
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int64 LaserReceptorEntity::mnSourceY
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int64 LaserReceptorEntity::mnSourceZ
    IL_0013:  call       instance class ['Assembly-CSharp']Segment ['Assembly-CSharp']MachineEntity::AttemptGetSegment(int64,
                                                                                                                       int64,
                                                                                                                       int64)
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  brtrue.s   IL_001d

    IL_001c:  ret

    IL_001d:  ldloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      int64 LaserReceptorEntity::mnSourceX
    IL_0024:  ldarg.0
    IL_0025:  ldfld      int64 LaserReceptorEntity::mnSourceY
    IL_002a:  ldarg.0
    IL_002b:  ldfld      int64 LaserReceptorEntity::mnSourceZ
    IL_0030:  callvirt   instance uint16 ['Assembly-CSharp']Segment::GetCube(int64,
                                                                             int64,
                                                                             int64)
    IL_0035:  stloc.1
    IL_0036:  ldloc.1
    IL_0037:  call       bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_003c:  brtrue.s   IL_003f

    IL_003e:  ret

    IL_003f:  ldloc.0
    IL_0040:  ldarg.0
    IL_0041:  ldfld      int64 LaserReceptorEntity::mnSourceX
    IL_0046:  ldarg.0
    IL_0047:  ldfld      int64 LaserReceptorEntity::mnSourceY
    IL_004c:  ldarg.0
    IL_004d:  ldfld      int64 LaserReceptorEntity::mnSourceZ
    IL_0052:  callvirt   instance class ['Assembly-CSharp']SegmentEntity ['Assembly-CSharp']Segment::SearchEntity(int64,
                                                                                                                  int64,
                                                                                                                  int64)
    IL_0057:  stloc.2
    IL_0058:  ldloc.2
    IL_0059:  isinst     ['Assembly-CSharp']PowerConsumerInterface
    IL_005e:  stloc.3
    IL_005f:  ldloc.3
    IL_0060:  brtrue.s   IL_0063

    IL_0062:  ret

    IL_0063:  ldloc.3
    IL_0064:  callvirt   instance float32 ['Assembly-CSharp']PowerConsumerInterface::GetMaxPower()
              call       float32 [UnityEngine]UnityEngine.Mathf::Round(float32)
    IL_0069:  stloc.s    maxPower
    IL_006b:  ldloc.3
    IL_006c:  callvirt   instance float32 ['Assembly-CSharp']PowerConsumerInterface::GetRemainingPowerCapacity()
	          call       float32 [UnityEngine]UnityEngine.Mathf::Round(float32)
    IL_0071:  stloc.s    powerLeft
    IL_0073:  ldc.r4     1.
    IL_0078:  ldloc.s    powerLeft
    IL_007a:  ldloc.s    maxPower
    IL_007c:  div
    IL_007d:  sub
    IL_007e:  ldc.r4     255.
    IL_0083:  mul
    IL_0084:  stloc.s    V_6
    IL_0086:  ldarg.0
    IL_0087:  ldloc.s    V_6
    IL_0089:  conv.u1
    IL_008a:  stfld      uint8 LaserReceptorEntity::mOutput
    IL_008f:  ldarg.0
    IL_0090:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0095:  ldc.i4.2
    IL_0096:  conv.i8
    IL_0097:  mul
    IL_0098:  ldarg.0
    IL_0099:  ldfld      int64 LaserReceptorEntity::mnSourceX
    IL_009e:  sub
    IL_009f:  stloc.s    V_7
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_00a7:  ldc.i4.2
    IL_00a8:  conv.i8
    IL_00a9:  mul
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      int64 LaserReceptorEntity::mnSourceY
    IL_00b0:  sub
    IL_00b1:  stloc.s    V_8
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_00b9:  ldc.i4.2
    IL_00ba:  conv.i8
    IL_00bb:  mul
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      int64 LaserReceptorEntity::mnSourceZ
    IL_00c2:  sub
    IL_00c3:  stloc.s    V_9
    IL_00c5:  ldarg.0
    IL_00c6:  ldloc.s    V_7
    IL_00c8:  ldloc.s    V_8
    IL_00ca:  ldloc.s    V_9
    IL_00cc:  call       instance class ['Assembly-CSharp']Segment ['Assembly-CSharp']MachineEntity::AttemptGetSegment(int64,
                                                                                                                       int64,
                                                                                                                       int64)
    IL_00d1:  stloc.s    V_10
    IL_00d3:  ldloc.s    V_10
    IL_00d5:  brtrue.s   IL_00d8

    IL_00d7:  ret

    IL_00d8:  ldloc.s    V_10
    IL_00da:  ldloc.s    V_7
    IL_00dc:  ldloc.s    V_8
    IL_00de:  ldloc.s    V_9
    IL_00e0:  callvirt   instance uint16 ['Assembly-CSharp']Segment::GetCube(int64,
                                                                             int64,
                                                                             int64)
    IL_00e5:  call       bool ['Assembly-CSharp']CubeHelper::HasEntity(int32)
    IL_00ea:  brtrue.s   IL_00ed

    IL_00ec:  ret

    IL_00ed:  ldloc.s    V_10
    IL_00ef:  ldloc.s    V_7
    IL_00f1:  ldloc.s    V_8
    IL_00f3:  ldloc.s    V_9
    IL_00f5:  callvirt   instance class ['Assembly-CSharp']SegmentEntity ['Assembly-CSharp']Segment::SearchEntity(int64,
                                                                                                                  int64,
                                                                                                                  int64)
    IL_00fa:  isinst     ['Assembly-CSharp']IBooleanReciever
    IL_00ff:  stloc.s    V_11
    IL_0101:  ldloc.s    V_11
    IL_0103:  brtrue.s   IL_0106

    IL_0105:  ret

    IL_0106:  ldc.i4.0
    IL_0107:  stloc.s    V_12
    IL_0109:  ldloc.s    V_7
    IL_010b:  ldarg.0
    IL_010c:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0111:  ble.s      IL_0119

    IL_0113:  ldc.i4.s   16
    IL_0115:  stloc.s    V_12
    IL_0117:  br.s       IL_0163

    IL_0119:  ldloc.s    V_7
    IL_011b:  ldarg.0
    IL_011c:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
    IL_0121:  bge.s      IL_0129

    IL_0123:  ldc.i4.s   32
    IL_0125:  stloc.s    V_12
    IL_0127:  br.s       IL_0163

    IL_0129:  ldloc.s    V_8
    IL_012b:  ldarg.0
    IL_012c:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_0131:  ble.s      IL_0138

    IL_0133:  ldc.i4.2
    IL_0134:  stloc.s    V_12
    IL_0136:  br.s       IL_0163

    IL_0138:  ldloc.s    V_8
    IL_013a:  ldarg.0
    IL_013b:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
    IL_0140:  bge.s      IL_0147

    IL_0142:  ldc.i4.1
    IL_0143:  stloc.s    V_12
    IL_0145:  br.s       IL_0163

    IL_0147:  ldloc.s    V_9
    IL_0149:  ldarg.0
    IL_014a:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_014f:  ble.s      IL_0156

    IL_0151:  ldc.i4.8
    IL_0152:  stloc.s    V_12
    IL_0154:  br.s       IL_0163

    IL_0156:  ldloc.s    V_9
    IL_0158:  ldarg.0
    IL_0159:  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
    IL_015e:  bge.s      IL_0163

    IL_0160:  ldc.i4.4
    IL_0161:  stloc.s    V_12
    IL_0163:  ldloc.s    V_11
    IL_0165:  ldloc.s    V_12
    IL_0167:  callvirt   instance bool ['Assembly-CSharp']IBooleanReciever::IsFaceInput(uint8)
    IL_016c:  brfalse.s  IL_0183

    IL_016e:  ldloc.s    V_11
    IL_0170:  ldarg.0
    IL_0171:  ldfld      uint8 LaserReceptorEntity::mOutput
    IL_0176:  ldloc.s    V_12
    IL_0178:  callvirt   instance void ['Assembly-CSharp']IBooleanReciever::SetNextValue(uint8,
                                                                                         uint8)
    IL_017d:  ldarg.0
    IL_017e:  callvirt   instance void ['Assembly-CSharp']SegmentEntity::MarkDirtyDelayed()
    IL_0183:  ret
  } // end of method LaserReceptorEntity::LowFrequencyUpdate
  
  .method private hidebysig newslot instance void
          UpdateFaces(uint8 flag) cil managed
  {
              .maxstack 3
			  .locals init (valuetype [UnityEngine]UnityEngine.Vector3)
              ldarg.1
	          call       valuetype [UnityEngine]UnityEngine.Quaternion ['Assembly-CSharp']SegmentCustomRenderer::GetRotationQuaternion(uint8)
			  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::get_down()
			  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Quaternion::op_Multiply(valuetype [UnityEngine]UnityEngine.Quaternion, valuetype [UnityEngine]UnityEngine.Vector3)
			  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::Normalize(valuetype [UnityEngine]UnityEngine.Vector3)
			  stloc.0
			  
			  ldarg.0
			  ldarg.0
			  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnX
			  ldloca.s   0
			  ldfld      float32 [UnityEngine]UnityEngine.Vector3::x
			  conv.i8
			  add
			  stfld      int64 LaserReceptorEntity::mnSourceX
			  
			  ldarg.0
			  ldarg.0
			  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnY
			  ldloca.s   0
			  ldfld      float32 [UnityEngine]UnityEngine.Vector3::y
			  conv.i8
			  add
			  stfld      int64 LaserReceptorEntity::mnSourceY
			  
			  ldarg.0
			  ldarg.0
			  ldfld      int64 ['Assembly-CSharp']SegmentEntity::mnZ
			  ldloca.s   0
			  ldfld      float32 [UnityEngine]UnityEngine.Vector3::z
			  conv.i8
			  add
			  stfld      int64 LaserReceptorEntity::mnSourceZ
			  
			  ret
  }
} // end of class LaserReceptorEntity
