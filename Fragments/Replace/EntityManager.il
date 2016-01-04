    IL_01b1:  ldarg.1
    IL_01b2:  ldarg.3
    IL_01b3:  ldarg.s    y
    IL_01b5:  ldarg.s    z
              ldarg.s    cube
    IL_01b7:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_01b9:  newobj     instance void LaserEmitterEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16)
    IL_01be:  stloc.0
    IL_01bf:  br         IL_092e

    IL_01c4:  ldarg.1
    IL_01c5:  ldarg.3
    IL_01c6:  ldarg.s    y
    IL_01c8:  ldarg.s    z
              ldarg.s    cube
    IL_01ca:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_01cc:  newobj     instance void LaserAndGateEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16)
    IL_01d1:  stloc.0
    IL_01d2:  br         IL_092e

    IL_01d7:  ldarg.1
    IL_01d8:  ldarg.3
    IL_01d9:  ldarg.s    y
    IL_01db:  ldarg.s    z
              ldarg.s    cube
    IL_01dd:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_01df:  newobj     instance void LaserOrGateEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16)
    IL_01e4:  stloc.0
    IL_01e5:  br         IL_092e

    IL_01ea:  ldarg.1
    IL_01eb:  ldarg.3
    IL_01ec:  ldarg.s    y
    IL_01ee:  ldarg.s    z
              ldarg.s    cube
    IL_01f0:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_01f2:  newobj     instance void LaserNotGateEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16)
    IL_01f7:  stloc.0
    IL_01f8:  br         IL_092e

    IL_01fd:  ldarg.1
    IL_01fe:  ldarg.3
    IL_01ff:  ldarg.s    y
    IL_0201:  ldarg.s    z
    IL_0203:  ldarg.s    'flags'
    IL_0205:  newobj     instance void LaserPressurePadEntity::.ctor(class Segment,
                                                                     int64,
                                                                     int64,
                                                                     int64,
                                                                     uint8)
    IL_020a:  stloc.0
    IL_020b:  br         IL_092e

    IL_0210:  ldarg.1
    IL_0211:  ldarg.3
    IL_0212:  ldarg.s    y
    IL_0214:  ldarg.s    z
              ldarg.s    cube
    IL_0216:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_0218:  newobj     instance void LaserSplitterEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16)
    IL_021d:  stloc.0
    IL_021e:  br         IL_092e

    IL_0223:  ldarg.1
    IL_0224:  ldarg.3
    IL_0225:  ldarg.s    y
    IL_0227:  ldarg.s    z
    IL_0229:  ldarg.s    'flags'
    IL_022b:  newobj     instance void LaserMirrorEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint8)
    IL_0230:  stloc.0
    IL_0231:  br         IL_092e

    IL_0236:  ldarg.1
    IL_0237:  ldarg.3
    IL_0238:  ldarg.s    y
    IL_023a:  ldarg.s    z
              ldarg.s    cube
    IL_023c:  ldarg.s    'flags'
              ldarg.s    lValue
    IL_023e:  newobj     instance void LaserReceptorEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16)
    IL_0243:  stloc.0
    IL_0244:  br         IL_092e