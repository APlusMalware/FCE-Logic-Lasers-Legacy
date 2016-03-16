
.class public auto ansi beforefieldinit LogicManager
       extends [mscorlib]System.Object
{
  .field public static class LogicManager 'instance'
  .field public class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.Graph`1<uint8> graph
  
  
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    .maxstack  2
              ldarg.0
              call       instance void [mscorlib]System.Object::.ctor()
              ldarg.0
              stsfld     class LogicManager LogicManager::'instance'
              ldarg.0
              newobj     instance void class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.Graph`1<uint8>::.ctor()
              stfld      class [APlusMalware.LogicGraph]APlusMalware.LogicGraph.Graph`1<uint8> LogicManager::graph
              ret
  }
}