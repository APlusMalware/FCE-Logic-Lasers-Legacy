    IL_035d:  ldarg.0
    IL_035e:  newobj     instance void MobManager::.ctor()
    IL_0363:  stfld      class MobManager WorldScript::mMobManager
              ldarg.0
              newobj     instance void LogicManager::.ctor()
              stfld      class LogicManager WorldScript::mLogicManager