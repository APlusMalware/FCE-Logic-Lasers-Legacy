
.class public auto ansi beforefieldinit LogicManager
       extends [mscorlib]System.Object
{
  .field public static class LogicManager 'instance'
  .field public class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph mGraph
  
  
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    .maxstack  2
              ldarg.0
              call       instance void [mscorlib]System.Object::.ctor()
              ldarg.0
              stsfld     class LogicManager LogicManager::'instance'
              ldarg.0
              newobj     instance void class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph::.ctor()
              stfld      class [APlusMalware.ByteLogic]APlusMalware.ByteLogic.Graph LogicManager::mGraph
              ret
  }
}