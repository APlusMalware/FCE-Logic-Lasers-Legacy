    IL_01a1:  ldarg.1
    IL_01a2:  ldarg.3
    IL_01a3:  ldarg.s    y
    IL_01a5:  ldarg.s    z
	          ldarg.s    cube
    IL_01a7:  ldarg.s    'flags'
	          ldarg.s    lValue
    IL_01a9:  newobj     instance void LaserEmitterEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
																 uint16,
                                                                 uint8,
																 uint16)
    IL_01ae:  stloc.0
    IL_01af:  br         IL_08ba

    IL_01b4:  ldarg.1
    IL_01b5:  ldarg.3
    IL_01b6:  ldarg.s    y
    IL_01b8:  ldarg.s    z
	          ldarg.s    cube
    IL_01ba:  ldarg.s    'flags'
	          ldarg.s    lValue
    IL_01bc:  newobj     instance void LaserAndGateEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
																 uint16,
                                                                 uint8,
																 uint16)
    IL_01c1:  stloc.0
    IL_01c2:  br         IL_08ba

    IL_01c7:  ldarg.1
    IL_01c8:  ldarg.3
    IL_01c9:  ldarg.s    y
    IL_01cb:  ldarg.s    z
	          ldarg.s    cube
    IL_01cd:  ldarg.s    'flags'
	          ldarg.s    lValue
    IL_01cf:  newobj     instance void LaserOrGateEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
																uint16,
                                                                uint8,
																uint16)
    IL_01d4:  stloc.0
    IL_01d5:  br         IL_08ba

    IL_01da:  ldarg.1
    IL_01db:  ldarg.3
    IL_01dc:  ldarg.s    y
    IL_01de:  ldarg.s    z
	          ldarg.s    cube
    IL_01e0:  ldarg.s    'flags'
	          ldarg.s    lValue
    IL_01e2:  newobj     instance void LaserNotGateEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
																 uint16,
                                                                 uint8,
																 uint16)
    IL_01e7:  stloc.0
    IL_01e8:  br         IL_08ba

    IL_01ed:  ldarg.1
    IL_01ee:  ldarg.3
    IL_01ef:  ldarg.s    y
    IL_01f1:  ldarg.s    z
    IL_01f3:  ldarg.s    'flags'
    IL_01f5:  newobj     instance void LaserPressurePadEntity::.ctor(class Segment,
                                                                     int64,
                                                                     int64,
                                                                     int64,
                                                                     uint8)
    IL_01fa:  stloc.0
    IL_01fb:  br         IL_08ba

    IL_0200:  ldarg.1
    IL_0201:  ldarg.3
    IL_0202:  ldarg.s    y
    IL_0204:  ldarg.s    z
	          ldarg.s    cube
    IL_0206:  ldarg.s    'flags'
	          ldarg.s    lValue
    IL_0208:  newobj     instance void LaserSplitterEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
																  uint16,
                                                                  uint8,
																  uint16)
    IL_020d:  stloc.0
    IL_020e:  br         IL_08ba

    IL_0213:  ldarg.1
    IL_0214:  ldarg.3
    IL_0215:  ldarg.s    y
    IL_0217:  ldarg.s    z
    IL_0219:  ldarg.s    'flags'
    IL_021b:  newobj     instance void LaserMirrorEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint8)
    IL_0220:  stloc.0
    IL_0221:  br         IL_08ba

    IL_0226:  ldarg.1
    IL_0227:  ldarg.3
    IL_0228:  ldarg.s    y
    IL_022a:  ldarg.s    z
	          ldarg.s    cube
    IL_022c:  ldarg.s    'flags'
	          ldarg.s    lValue
    IL_022e:  newobj     instance void LaserReceptorEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
																  uint16,
                                                                  uint8,
																  uint16)
    IL_0233:  stloc.0
    IL_0234:  br         IL_08ba