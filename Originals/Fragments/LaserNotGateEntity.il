.class public auto ansi beforefieldinit LaserNotGateEntity
       extends SegmentEntity
{
  .field private uint8 'flags'
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Segment segment,
                               int64 x,
                               int64 y,
                               int64 z,
                               uint8 'flags') cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  9
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    z
    IL_0006:  call       valuetype [UnityEngine]UnityEngine.Vector3 [UnityEngine]UnityEngine.Vector3::get_zero()
    IL_000b:  ldarg.1
    IL_000c:  call       instance void SegmentEntity::.ctor(valuetype eSegmentEntity,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            valuetype [UnityEngine]UnityEngine.Vector3,
                                                            class Segment)
    IL_0011:  ldarg.0
    IL_0012:  ldarg.s    'flags'
    IL_0014:  stfld      uint8 LaserNotGateEntity::'flags'
    IL_0019:  ret
  } // end of method LaserNotGateEntity::.ctor

  .method public hidebysig virtual instance void 
          SpawnGameObject() cil managed
  {
    // Code size       44 (0x2c)
    .maxstack  10
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class SpawnableObjectManagerScript SpawnableObjectManagerScript::'instance'
    IL_0006:  ldc.i4.0
    IL_0007:  ldc.i4.4
    IL_0008:  ldarg.0
    IL_0009:  ldfld      int64 SegmentEntity::mnX
    IL_000e:  ldarg.0
    IL_000f:  ldfld      int64 SegmentEntity::mnY
    IL_0014:  ldarg.0
    IL_0015:  ldfld      int64 SegmentEntity::mnZ
    IL_001a:  ldarg.0
    IL_001b:  ldfld      uint8 LaserNotGateEntity::'flags'
    IL_0020:  ldnull
    IL_0021:  callvirt   instance class GameObjectWrapper SpawnableObjectManagerScript::SpawnObject(valuetype eGameObjectWrapperType,
                                                                                                    valuetype SpawnableObjectEnum,
                                                                                                    int64,
                                                                                                    int64,
                                                                                                    int64,
                                                                                                    uint8,
                                                                                                    object)
    IL_0026:  stfld      class GameObjectWrapper SegmentEntity::mWrapper
    IL_002b:  ret
  } // end of method LaserNotGateEntity::SpawnGameObject

  .method public hidebysig virtual instance void 
          DropGameObject() cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldsfld     class SpawnableObjectManagerScript SpawnableObjectManagerScript::'instance'
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class GameObjectWrapper SegmentEntity::mWrapper
    IL_000b:  callvirt   instance void SpawnableObjectManagerScript::ClearObject(class GameObjectWrapper)
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class GameObjectWrapper SegmentEntity::mWrapper
    IL_0017:  ret
  } // end of method LaserNotGateEntity::DropGameObject

} // end of class LaserNotGateEntity
