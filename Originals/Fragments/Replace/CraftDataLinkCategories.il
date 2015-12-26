    IL_0136:  ldsfld     class [mscorlib]System.Collections.Generic.List`1<class CraftingCategory> CraftData::mCraftCategories
    IL_013b:  ldstr      "decoration"
    IL_0140:  ldstr      "My First Flowers"
    IL_0145:  ldstr      "decoration"
    IL_014a:  newobj     instance void CraftingCategory::.ctor(string,
                                                               string,
                                                               string)
    IL_014f:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class CraftingCategory>::Add(!0)