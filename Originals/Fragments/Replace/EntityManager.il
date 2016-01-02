    IL_01ad:  ldarg.1
    IL_01ae:  ldarg.3
    IL_01af:  ldarg.s    y
    IL_01b1:  ldarg.s    z
    IL_01b3:  ldarg.s    'flags'
    IL_01b5:  newobj     instance void LaserEmitterEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint8)
    IL_01ba:  stloc.0
    IL_01bb:  br         IL_0911

    IL_01c0:  ldarg.1
    IL_01c1:  ldarg.3
    IL_01c2:  ldarg.s    y
    IL_01c4:  ldarg.s    z
    IL_01c6:  ldarg.s    'flags'
    IL_01c8:  newobj     instance void LaserAndGateEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint8)
    IL_01cd:  stloc.0
    IL_01ce:  br         IL_0911

    IL_01d3:  ldarg.1
    IL_01d4:  ldarg.3
    IL_01d5:  ldarg.s    y
    IL_01d7:  ldarg.s    z
    IL_01d9:  ldarg.s    'flags'
    IL_01db:  newobj     instance void LaserOrGateEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint8)
    IL_01e0:  stloc.0
    IL_01e1:  br         IL_0911

    IL_01e6:  ldarg.1
    IL_01e7:  ldarg.3
    IL_01e8:  ldarg.s    y
    IL_01ea:  ldarg.s    z
    IL_01ec:  ldarg.s    'flags'
    IL_01ee:  newobj     instance void LaserNotGateEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint8)
    IL_01f3:  stloc.0
    IL_01f4:  br         IL_0911

    IL_01f9:  ldarg.1
    IL_01fa:  ldarg.3
    IL_01fb:  ldarg.s    y
    IL_01fd:  ldarg.s    z
    IL_01ff:  ldarg.s    'flags'
    IL_0201:  newobj     instance void LaserPressurePadEntity::.ctor(class Segment,
                                                                     int64,
                                                                     int64,
                                                                     int64,
                                                                     uint8)
    IL_0206:  stloc.0
    IL_0207:  br         IL_0911

    IL_020c:  ldarg.1
    IL_020d:  ldarg.3
    IL_020e:  ldarg.s    y
    IL_0210:  ldarg.s    z
    IL_0212:  ldarg.s    'flags'
    IL_0214:  newobj     instance void LaserSplitterEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint8)
    IL_0219:  stloc.0
    IL_021a:  br         IL_0911

    IL_021f:  ldarg.1
    IL_0220:  ldarg.3
    IL_0221:  ldarg.s    y
    IL_0223:  ldarg.s    z
    IL_0225:  ldarg.s    'flags'
    IL_0227:  newobj     instance void LaserMirrorEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint8)
    IL_022c:  stloc.0
    IL_022d:  br         IL_0911

    IL_0232:  ldarg.1
    IL_0233:  ldarg.3
    IL_0234:  ldarg.s    y
    IL_0236:  ldarg.s    z
    IL_0238:  ldarg.s    'flags'
    IL_023a:  newobj     instance void LaserReceptorEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint8)
    IL_023f:  stloc.0
    IL_0240:  br         IL_0911