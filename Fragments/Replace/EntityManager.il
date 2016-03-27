    IL_01d9:  ldarg.1
    IL_01da:  ldarg.3
    IL_01db:  ldarg.s    y
    IL_01dd:  ldarg.s    z
              ldarg.s    cube
    IL_01df:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_01e1:  newobj     instance void [APlusMalware.LogicLaserPlugin]APlusMalware.LogicLaserPlugin.LogicLaserRepeater::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16)
    IL_01e6:  stloc.0
    IL_01e7:  br         IL_0a62

    IL_01ec:  ldarg.1
    IL_01ed:  ldarg.3
    IL_01ee:  ldarg.s    y
    IL_01f0:  ldarg.s    z
              ldarg.s    cube
    IL_01f2:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_01f4:  newobj     instance void [APlusMalware.LogicLaserPlugin]APlusMalware.LogicLaserPlugin.LogicLaserEqualityChecker::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16)
    IL_01f9:  stloc.0
    IL_01fa:  br         IL_0a62

    IL_01ff:  ldarg.1
    IL_0200:  ldarg.3
    IL_0201:  ldarg.s    y
    IL_0203:  ldarg.s    z
              ldarg.s    cube
    IL_0205:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_0207:  newobj     instance void [APlusMalware.LogicLaserPlugin]APlusMalware.LogicLaserPlugin.LogicLaserMaxSelector::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16)
    IL_020c:  stloc.0
    IL_020d:  br         IL_0a62

    IL_0212:  ldarg.1
    IL_0213:  ldarg.3
    IL_0214:  ldarg.s    y
    IL_0216:  ldarg.s    z
              ldarg.s    cube
    IL_0218:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_021a:  newobj     instance void [APlusMalware.LogicLaserPlugin]APlusMalware.LogicLaserPlugin.LogicLaserInverter::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16)
    IL_021f:  stloc.0
    IL_0220:  br         IL_0a62

    IL_0225:  ldarg.1
    IL_0226:  ldarg.3
    IL_0227:  ldarg.s    y
    IL_0229:  ldarg.s    z
    IL_022b:  ldarg.s    'flags'
    IL_022d:  newobj     instance void LaserPressurePadEntity::.ctor(class Segment,
                                                                     int64,
                                                                     int64,
                                                                     int64,
                                                                     uint8)
    IL_0232:  stloc.0
    IL_0233:  br         IL_0a62

    IL_0238:  ldarg.1
    IL_0239:  ldarg.3
    IL_023a:  ldarg.s    y
    IL_023c:  ldarg.s    z
              ldarg.s    cube
    IL_023e:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_0240:  newobj     instance void [APlusMalware.LogicLaserPlugin]APlusMalware.LogicLaserPlugin.LogicSplitter::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16)
    IL_0245:  stloc.0
    IL_0246:  br         IL_0a62

    IL_024b:  ldarg.1
    IL_024c:  ldarg.3
    IL_024d:  ldarg.s    y
    IL_024f:  ldarg.s    z
    IL_0251:  ldarg.s    'flags'
    IL_0253:  newobj     instance void LaserMirrorEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint8)
    IL_0258:  stloc.0
    IL_0259:  br         IL_0a62

    IL_025e:  ldarg.1
    IL_025f:  ldarg.3
    IL_0260:  ldarg.s    y
    IL_0262:  ldarg.s    z
              ldarg.s    cube
    IL_0264:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_0266:  newobj     instance void [APlusMalware.LogicLaserPlugin]APlusMalware.LogicLaserPlugin.LogicSensor::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16)
    IL_026b:  stloc.0
    IL_026c:  br         IL_0a62