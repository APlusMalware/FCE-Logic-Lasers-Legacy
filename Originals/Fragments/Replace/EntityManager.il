  .method public hidebysig instance class SegmentEntity 
          CreateSegmentEntity(class Segment segment,
                              valuetype eSegmentEntity 'type',
                              int64 x,
                              int64 y,
                              int64 z,
                              uint16 cube,
                              uint8 'flags',
                              uint16 lValue,
                              bool loadFromDisk,
                              bool fromNetwork) cil managed
  {
    // Code size       2327 (0x917)
    .maxstack  12
    .locals init (class SegmentEntity V_0,
             valuetype eSegmentEntity V_1,
             int32 V_2)
    IL_0000:  ldnull
    IL_0001:  stloc.0
    IL_0002:  ldarg.2
    IL_0003:  stloc.1
    IL_0004:  ldloc.1
    IL_0005:  switch     ( 
                          IL_017b,
                          IL_0153,
                          IL_0235,
                          IL_087e,
                          IL_018c,
                          IL_019d,
                          IL_01b0,
                          IL_01c3,
                          IL_01d6,
                          IL_01e9,
                          IL_01fc,
                          IL_020f,
                          IL_0222,
                          IL_087e,
                          IL_0248,
                          IL_025d,
                          IL_0379,
                          IL_0274,
                          IL_087e,
                          IL_028d,
                          IL_02a4,
                          IL_02bd,
                          IL_02d4,
                          IL_02eb,
                          IL_0302,
                          IL_0319,
                          IL_0330,
                          IL_0347,
                          IL_0360,
                          IL_05f4,
                          IL_0390,
                          IL_03a9,
                          IL_03c0,
                          IL_03d7,
                          IL_0409,
                          IL_0420,
                          IL_0439,
                          IL_0452,
                          IL_087e,
                          IL_087e,
                          IL_0469,
                          IL_0480,
                          IL_0497,
                          IL_04b0,
                          IL_04c7,
                          IL_04e0,
                          IL_04f9,
                          IL_0512,
                          IL_087e,
                          IL_052b,
                          IL_0542,
                          IL_0587,
                          IL_05dd,
                          IL_059e,
                          IL_060b,
                          IL_06d1,
                          IL_0703,
                          IL_071c,
                          IL_0735,
                          IL_06a1,
                          IL_05c8,
                          IL_05b3,
                          IL_06b8,
                          IL_0816,
                          IL_0559,
                          IL_03f0,
                          IL_0570,
                          IL_06ea,
                          IL_0624,
                          IL_074e,
                          IL_063d,
                          IL_0656,
                          IL_066f,
                          IL_0780,
                          IL_0767,
                          IL_0799,
                          IL_07b2,
                          IL_0688,
                          IL_07cb,
                          IL_07e4,
                          IL_07fd)
    IL_014e:  br         IL_087e

    IL_0153:  ldarg.1
    IL_0154:  ldarg.3
    IL_0155:  ldarg.s    y
    IL_0157:  ldarg.s    z
    IL_0159:  ldc.i4.0
    IL_015a:  ldc.i4.0
    IL_015b:  newobj     instance void Workshop::.ctor(class Segment,
                                                       int64,
                                                       int64,
                                                       int64,
                                                       int32,
                                                       uint8)
    IL_0160:  stloc.0
    IL_0161:  ldsfld     class CustomObjectManager CustomObjectManager::'instance'
    IL_0166:  ldfld      class WorkshopManager CustomObjectManager::mWorkshopManager
    IL_016b:  ldloc.0
    IL_016c:  castclass  Workshop
    IL_0171:  callvirt   instance void WorkshopManager::RegisterWorkshop(class Workshop)
    IL_0176:  br         IL_089d

    IL_017b:  ldarg.1
    IL_017c:  ldarg.3
    IL_017d:  ldarg.s    y
    IL_017f:  ldarg.s    z
    IL_0181:  newobj     instance void InjectionEntity::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64)
    IL_0186:  stloc.0
    IL_0187:  br         IL_089d

    IL_018c:  ldarg.1
    IL_018d:  ldarg.3
    IL_018e:  ldarg.s    y
    IL_0190:  ldarg.s    z
    IL_0192:  newobj     instance void DoodadFactory::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64)
    IL_0197:  stloc.0
    IL_0198:  br         IL_089d

    IL_019d:  ldarg.1
    IL_019e:  ldarg.3
    IL_019f:  ldarg.s    y
    IL_01a1:  ldarg.s    z
    IL_01a3:  ldarg.s    'flags'
    IL_01a5:  newobj     instance void LaserEmitterEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint8)
    IL_01aa:  stloc.0
    IL_01ab:  br         IL_089d

    IL_01b0:  ldarg.1
    IL_01b1:  ldarg.3
    IL_01b2:  ldarg.s    y
    IL_01b4:  ldarg.s    z
    IL_01b6:  ldarg.s    'flags'
    IL_01b8:  newobj     instance void LaserAndGateEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint8)
    IL_01bd:  stloc.0
    IL_01be:  br         IL_089d

    IL_01c3:  ldarg.1
    IL_01c4:  ldarg.3
    IL_01c5:  ldarg.s    y
    IL_01c7:  ldarg.s    z
    IL_01c9:  ldarg.s    'flags'
    IL_01cb:  newobj     instance void LaserOrGateEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint8)
    IL_01d0:  stloc.0
    IL_01d1:  br         IL_089d

    IL_01d6:  ldarg.1
    IL_01d7:  ldarg.3
    IL_01d8:  ldarg.s    y
    IL_01da:  ldarg.s    z
    IL_01dc:  ldarg.s    'flags'
    IL_01de:  newobj     instance void LaserNotGateEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint8)
    IL_01e3:  stloc.0
    IL_01e4:  br         IL_089d

    IL_01e9:  ldarg.1
    IL_01ea:  ldarg.3
    IL_01eb:  ldarg.s    y
    IL_01ed:  ldarg.s    z
    IL_01ef:  ldarg.s    'flags'
    IL_01f1:  newobj     instance void LaserPressurePadEntity::.ctor(class Segment,
                                                                     int64,
                                                                     int64,
                                                                     int64,
                                                                     uint8)
    IL_01f6:  stloc.0
    IL_01f7:  br         IL_089d

    IL_01fc:  ldarg.1
    IL_01fd:  ldarg.3
    IL_01fe:  ldarg.s    y
    IL_0200:  ldarg.s    z
    IL_0202:  ldarg.s    'flags'
    IL_0204:  newobj     instance void LaserSplitterEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint8)
    IL_0209:  stloc.0
    IL_020a:  br         IL_089d

    IL_020f:  ldarg.1
    IL_0210:  ldarg.3
    IL_0211:  ldarg.s    y
    IL_0213:  ldarg.s    z
    IL_0215:  ldarg.s    'flags'
    IL_0217:  newobj     instance void LaserMirrorEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint8)
    IL_021c:  stloc.0
    IL_021d:  br         IL_089d

    IL_0222:  ldarg.1
    IL_0223:  ldarg.3
    IL_0224:  ldarg.s    y
    IL_0226:  ldarg.s    z
    IL_0228:  ldarg.s    'flags'
    IL_022a:  newobj     instance void LaserReceptorEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint8)
    IL_022f:  stloc.0
    IL_0230:  br         IL_089d

    IL_0235:  ldarg.1
    IL_0236:  ldarg.3
    IL_0237:  ldarg.s    y
    IL_0239:  ldarg.s    z
    IL_023b:  ldarg.s    'flags'
    IL_023d:  newobj     instance void Sign::.ctor(class Segment,
                                                   int64,
                                                   int64,
                                                   int64,
                                                   uint8)
    IL_0242:  stloc.0
    IL_0243:  br         IL_089d

    IL_0248:  ldarg.1
    IL_0249:  ldarg.3
    IL_024a:  ldarg.s    y
    IL_024c:  ldarg.s    z
    IL_024e:  ldarg.s    'flags'
    IL_0250:  ldarg.s    lValue
    IL_0252:  newobj     instance void ConfigurableLight::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint8,
                                                                uint16)
    IL_0257:  stloc.0
    IL_0258:  br         IL_089d

    IL_025d:  ldarg.1
    IL_025e:  ldarg.3
    IL_025f:  ldarg.s    y
    IL_0261:  ldarg.s    z
    IL_0263:  ldarg.s    cube
    IL_0265:  ldarg.s    'flags'
    IL_0267:  ldarg.s    lValue
    IL_0269:  newobj     instance void CentralPowerHub::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16)
    IL_026e:  stloc.0
    IL_026f:  br         IL_089d

    IL_0274:  ldarg.1
    IL_0275:  ldarg.3
    IL_0276:  ldarg.s    y
    IL_0278:  ldarg.s    z
    IL_027a:  ldarg.s    cube
    IL_027c:  ldarg.s    'flags'
    IL_027e:  ldarg.s    lValue
    IL_0280:  ldarg.s    loadFromDisk
    IL_0282:  newobj     instance void OreExtractor::.ctor(class Segment,
                                                           int64,
                                                           int64,
                                                           int64,
                                                           uint16,
                                                           uint8,
                                                           uint16,
                                                           bool)
    IL_0287:  stloc.0
    IL_0288:  br         IL_089d

    IL_028d:  ldarg.1
    IL_028e:  ldarg.3
    IL_028f:  ldarg.s    y
    IL_0291:  ldarg.s    z
    IL_0293:  ldarg.s    cube
    IL_0295:  ldarg.s    'flags'
    IL_0297:  ldarg.s    lValue
    IL_0299:  newobj     instance void PowerStorageBlock::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16)
    IL_029e:  stloc.0
    IL_029f:  br         IL_089d

    IL_02a4:  ldarg.1
    IL_02a5:  ldarg.3
    IL_02a6:  ldarg.s    y
    IL_02a8:  ldarg.s    z
    IL_02aa:  ldarg.s    cube
    IL_02ac:  ldarg.s    'flags'
    IL_02ae:  ldarg.s    lValue
    IL_02b0:  ldarg.s    loadFromDisk
    IL_02b2:  newobj     instance void StorageHopper::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16,
                                                            bool)
    IL_02b7:  stloc.0
    IL_02b8:  br         IL_089d

    IL_02bd:  ldarg.1
    IL_02be:  ldarg.3
    IL_02bf:  ldarg.s    y
    IL_02c1:  ldarg.s    z
    IL_02c3:  ldarg.s    cube
    IL_02c5:  ldarg.s    'flags'
    IL_02c7:  ldarg.s    lValue
    IL_02c9:  newobj     instance void LaserPowerTransmitter::.ctor(class Segment,
                                                                    int64,
                                                                    int64,
                                                                    int64,
                                                                    uint16,
                                                                    uint8,
                                                                    uint16)
    IL_02ce:  stloc.0
    IL_02cf:  br         IL_089d

    IL_02d4:  ldarg.1
    IL_02d5:  ldarg.3
    IL_02d6:  ldarg.s    y
    IL_02d8:  ldarg.s    z
    IL_02da:  ldarg.s    cube
    IL_02dc:  ldarg.s    'flags'
    IL_02de:  ldarg.s    lValue
    IL_02e0:  newobj     instance void BFL9000::.ctor(class Segment,
                                                      int64,
                                                      int64,
                                                      int64,
                                                      uint16,
                                                      uint8,
                                                      uint16)
    IL_02e5:  stloc.0
    IL_02e6:  br         IL_089d

    IL_02eb:  ldarg.1
    IL_02ec:  ldarg.3
    IL_02ed:  ldarg.s    y
    IL_02ef:  ldarg.s    z
    IL_02f1:  ldarg.s    cube
    IL_02f3:  ldarg.s    'flags'
    IL_02f5:  ldarg.s    lValue
    IL_02f7:  newobj     instance void PyrothermicGenerator::.ctor(class Segment,
                                                                   int64,
                                                                   int64,
                                                                   int64,
                                                                   uint16,
                                                                   uint8,
                                                                   uint16)
    IL_02fc:  stloc.0
    IL_02fd:  br         IL_089d

    IL_0302:  ldarg.1
    IL_0303:  ldarg.3
    IL_0304:  ldarg.s    y
    IL_0306:  ldarg.s    z
    IL_0308:  ldarg.s    cube
    IL_030a:  ldarg.s    'flags'
    IL_030c:  ldarg.s    lValue
    IL_030e:  newobj     instance void SolarPanel::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16)
    IL_0313:  stloc.0
    IL_0314:  br         IL_089d

    IL_0319:  ldarg.1
    IL_031a:  ldarg.3
    IL_031b:  ldarg.s    y
    IL_031d:  ldarg.s    z
    IL_031f:  ldarg.s    cube
    IL_0321:  ldarg.s    'flags'
    IL_0323:  ldarg.s    lValue
    IL_0325:  newobj     instance void AIMover::.ctor(class Segment,
                                                      int64,
                                                      int64,
                                                      int64,
                                                      uint16,
                                                      uint8,
                                                      uint16)
    IL_032a:  stloc.0
    IL_032b:  br         IL_089d

    IL_0330:  ldarg.1
    IL_0331:  ldarg.3
    IL_0332:  ldarg.s    y
    IL_0334:  ldarg.s    z
    IL_0336:  ldarg.s    cube
    IL_0338:  ldarg.s    'flags'
    IL_033a:  ldarg.s    lValue
    IL_033c:  newobj     instance void MatterMover::.ctor(class Segment,
                                                          int64,
                                                          int64,
                                                          int64,
                                                          uint16,
                                                          uint8,
                                                          uint16)
    IL_0341:  stloc.0
    IL_0342:  br         IL_089d

    IL_0347:  ldarg.1
    IL_0348:  ldarg.3
    IL_0349:  ldarg.s    y
    IL_034b:  ldarg.s    z
    IL_034d:  ldarg.s    cube
    IL_034f:  ldarg.s    'flags'
    IL_0351:  ldarg.s    lValue
    IL_0353:  ldarg.s    loadFromDisk
    IL_0355:  newobj     instance void ManufacturingPlant::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16,
                                                                 bool)
    IL_035a:  stloc.0
    IL_035b:  br         IL_089d

    IL_0360:  ldarg.1
    IL_0361:  ldarg.3
    IL_0362:  ldarg.s    y
    IL_0364:  ldarg.s    z
    IL_0366:  ldarg.s    cube
    IL_0368:  ldarg.s    'flags'
    IL_036a:  ldarg.s    lValue
    IL_036c:  ldarg.s    loadFromDisk
    IL_036e:  newobj     instance void ManufacturingPlantModule::.ctor(class Segment,
                                                                       int64,
                                                                       int64,
                                                                       int64,
                                                                       uint16,
                                                                       uint8,
                                                                       uint16,
                                                                       bool)
    IL_0373:  stloc.0
    IL_0374:  br         IL_089d

    IL_0379:  ldarg.1
    IL_037a:  ldarg.3
    IL_037b:  ldarg.s    y
    IL_037d:  ldarg.s    z
    IL_037f:  ldarg.s    cube
    IL_0381:  ldarg.s    'flags'
    IL_0383:  ldarg.s    lValue
    IL_0385:  newobj     instance void OreSmelter::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16)
    IL_038a:  stloc.0
    IL_038b:  br         IL_089d

    IL_0390:  ldarg.1
    IL_0391:  ldarg.3
    IL_0392:  ldarg.s    y
    IL_0394:  ldarg.s    z
    IL_0396:  ldarg.s    cube
    IL_0398:  ldarg.s    'flags'
    IL_039a:  ldarg.s    lValue
    IL_039c:  ldarg.s    loadFromDisk
    IL_039e:  newobj     instance void ConveyorEntity::.ctor(class Segment,
                                                             int64,
                                                             int64,
                                                             int64,
                                                             uint16,
                                                             uint8,
                                                             uint16,
                                                             bool)
    IL_03a3:  stloc.0
    IL_03a4:  br         IL_089d

    IL_03a9:  ldarg.1
    IL_03aa:  ldarg.3
    IL_03ab:  ldarg.s    y
    IL_03ad:  ldarg.s    z
    IL_03af:  ldarg.s    cube
    IL_03b1:  ldarg.s    'flags'
    IL_03b3:  ldarg.s    lValue
    IL_03b5:  newobj     instance void ResearchStation::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16)
    IL_03ba:  stloc.0
    IL_03bb:  br         IL_089d

    IL_03c0:  ldarg.1
    IL_03c1:  ldarg.3
    IL_03c2:  ldarg.s    y
    IL_03c4:  ldarg.s    z
    IL_03c6:  ldarg.s    cube
    IL_03c8:  ldarg.s    'flags'
    IL_03ca:  ldarg.s    lValue
    IL_03cc:  newobj     instance void ForcedInduction::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16)
    IL_03d1:  stloc.0
    IL_03d2:  br         IL_089d

    IL_03d7:  ldarg.1
    IL_03d8:  ldarg.3
    IL_03d9:  ldarg.s    y
    IL_03db:  ldarg.s    z
    IL_03dd:  ldarg.s    cube
    IL_03df:  ldarg.s    'flags'
    IL_03e1:  ldarg.s    lValue
    IL_03e3:  ldarg.s    loadFromDisk
    IL_03e5:  newobj     instance void PopupTurretEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16,
                                                                bool)
    IL_03ea:  stloc.0
    IL_03eb:  br         IL_089d

    IL_03f0:  ldarg.1
    IL_03f1:  ldarg.3
    IL_03f2:  ldarg.s    y
    IL_03f4:  ldarg.s    z
    IL_03f6:  ldarg.s    cube
    IL_03f8:  ldarg.s    'flags'
    IL_03fa:  ldarg.s    lValue
    IL_03fc:  ldarg.s    loadFromDisk
    IL_03fe:  newobj     instance void ThreatScanner::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16,
                                                            bool)
    IL_0403:  stloc.0
    IL_0404:  br         IL_089d

    IL_0409:  ldarg.1
    IL_040a:  ldarg.3
    IL_040b:  ldarg.s    y
    IL_040d:  ldarg.s    z
    IL_040f:  ldarg.s    cube
    IL_0411:  ldarg.s    'flags'
    IL_0413:  ldarg.s    lValue
    IL_0415:  newobj     instance void AutoExcavator::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16)
    IL_041a:  stloc.0
    IL_041b:  br         IL_089d

    IL_0420:  ldarg.1
    IL_0421:  ldarg.3
    IL_0422:  ldarg.s    y
    IL_0424:  ldarg.s    z
    IL_0426:  ldarg.s    cube
    IL_0428:  ldarg.s    'flags'
    IL_042a:  ldarg.s    lValue
    IL_042c:  ldarg.s    loadFromDisk
    IL_042e:  newobj     instance void RefineryController::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16,
                                                                 bool)
    IL_0433:  stloc.0
    IL_0434:  br         IL_089d

    IL_0439:  ldarg.1
    IL_043a:  ldarg.3
    IL_043b:  ldarg.s    y
    IL_043d:  ldarg.s    z
    IL_043f:  ldarg.s    cube
    IL_0441:  ldarg.s    'flags'
    IL_0443:  ldarg.s    lValue
    IL_0445:  ldarg.s    loadFromDisk
    IL_0447:  newobj     instance void RefineryReactorVat::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16,
                                                                 bool)
    IL_044c:  stloc.0
    IL_044d:  br         IL_089d

    IL_0452:  ldarg.1
    IL_0453:  ldarg.3
    IL_0454:  ldarg.s    y
    IL_0456:  ldarg.s    z
    IL_0458:  ldarg.s    cube
    IL_045a:  ldarg.s    'flags'
    IL_045c:  ldarg.s    lValue
    IL_045e:  newobj     instance void T1_LiftEntity::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16)
    IL_0463:  stloc.0
    IL_0464:  br         IL_089d

    IL_0469:  ldarg.1
    IL_046a:  ldarg.3
    IL_046b:  ldarg.s    y
    IL_046d:  ldarg.s    z
    IL_046f:  ldarg.s    cube
    IL_0471:  ldarg.s    'flags'
    IL_0473:  ldarg.s    lValue
    IL_0475:  newobj     instance void LiftCompressorEntity::.ctor(class Segment,
                                                                   int64,
                                                                   int64,
                                                                   int64,
                                                                   uint16,
                                                                   uint8,
                                                                   uint16)
    IL_047a:  stloc.0
    IL_047b:  br         IL_089d

    IL_0480:  ldarg.1
    IL_0481:  ldarg.3
    IL_0482:  ldarg.s    y
    IL_0484:  ldarg.s    z
    IL_0486:  ldarg.s    cube
    IL_0488:  ldarg.s    'flags'
    IL_048a:  ldarg.s    lValue
    IL_048c:  newobj     instance void LiftManualControlEntity::.ctor(class Segment,
                                                                      int64,
                                                                      int64,
                                                                      int64,
                                                                      uint16,
                                                                      uint8,
                                                                      uint16)
    IL_0491:  stloc.0
    IL_0492:  br         IL_089d

    IL_0497:  ldarg.1
    IL_0498:  ldarg.3
    IL_0499:  ldarg.s    y
    IL_049b:  ldarg.s    z
    IL_049d:  ldarg.s    cube
    IL_049f:  ldarg.s    'flags'
    IL_04a1:  ldarg.s    lValue
    IL_04a3:  ldarg.s    loadFromDisk
    IL_04a5:  newobj     instance void JetTurbineGenerator::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16,
                                                                  bool)
    IL_04aa:  stloc.0
    IL_04ab:  br         IL_089d

    IL_04b0:  ldarg.1
    IL_04b1:  ldarg.3
    IL_04b2:  ldarg.s    y
    IL_04b4:  ldarg.s    z
    IL_04b6:  ldarg.s    cube
    IL_04b8:  ldarg.s    'flags'
    IL_04ba:  ldarg.s    lValue
    IL_04bc:  newobj     instance void MK1RobotArmEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16)
    IL_04c1:  stloc.0
    IL_04c2:  br         IL_089d

    IL_04c7:  ldarg.1
    IL_04c8:  ldarg.3
    IL_04c9:  ldarg.s    y
    IL_04cb:  ldarg.s    z
    IL_04cd:  ldarg.s    cube
    IL_04cf:  ldarg.s    'flags'
    IL_04d1:  ldarg.s    lValue
    IL_04d3:  ldarg.s    loadFromDisk
    IL_04d5:  newobj     instance void StorageCrate::.ctor(class Segment,
                                                           int64,
                                                           int64,
                                                           int64,
                                                           uint16,
                                                           uint8,
                                                           uint16,
                                                           bool)
    IL_04da:  stloc.0
    IL_04db:  br         IL_089d

    IL_04e0:  ldarg.1
    IL_04e1:  ldarg.3
    IL_04e2:  ldarg.s    y
    IL_04e4:  ldarg.s    z
    IL_04e6:  ldarg.s    cube
    IL_04e8:  ldarg.s    'flags'
    IL_04ea:  ldarg.s    lValue
    IL_04ec:  ldarg.s    loadFromDisk
    IL_04ee:  newobj     instance void MassStorageCrate::.ctor(class Segment,
                                                               int64,
                                                               int64,
                                                               int64,
                                                               uint16,
                                                               uint8,
                                                               uint16,
                                                               bool)
    IL_04f3:  stloc.0
    IL_04f4:  br         IL_089d

    IL_04f9:  ldarg.1
    IL_04fa:  ldarg.3
    IL_04fb:  ldarg.s    y
    IL_04fd:  ldarg.s    z
    IL_04ff:  ldarg.s    cube
    IL_0501:  ldarg.s    'flags'
    IL_0503:  ldarg.s    lValue
    IL_0505:  ldarg.s    loadFromDisk
    IL_0507:  newobj     instance void MassStorageInputPort::.ctor(class Segment,
                                                                   int64,
                                                                   int64,
                                                                   int64,
                                                                   uint16,
                                                                   uint8,
                                                                   uint16,
                                                                   bool)
    IL_050c:  stloc.0
    IL_050d:  br         IL_089d

    IL_0512:  ldarg.1
    IL_0513:  ldarg.3
    IL_0514:  ldarg.s    y
    IL_0516:  ldarg.s    z
    IL_0518:  ldarg.s    cube
    IL_051a:  ldarg.s    'flags'
    IL_051c:  ldarg.s    lValue
    IL_051e:  ldarg.s    loadFromDisk
    IL_0520:  newobj     instance void MassStorageOutputPort::.ctor(class Segment,
                                                                    int64,
                                                                    int64,
                                                                    int64,
                                                                    uint16,
                                                                    uint8,
                                                                    uint16,
                                                                    bool)
    IL_0525:  stloc.0
    IL_0526:  br         IL_089d

    IL_052b:  ldarg.1
    IL_052c:  ldarg.3
    IL_052d:  ldarg.s    y
    IL_052f:  ldarg.s    z
    IL_0531:  ldarg.s    cube
    IL_0533:  ldarg.s    'flags'
    IL_0535:  ldarg.s    lValue
    IL_0537:  newobj     instance void Macerator::.ctor(class Segment,
                                                        int64,
                                                        int64,
                                                        int64,
                                                        uint16,
                                                        uint8,
                                                        uint16)
    IL_053c:  stloc.0
    IL_053d:  br         IL_089d

    IL_0542:  ldarg.1
    IL_0543:  ldarg.3
    IL_0544:  ldarg.s    y
    IL_0546:  ldarg.s    z
    IL_0548:  ldarg.s    cube
    IL_054a:  ldarg.s    'flags'
    IL_054c:  ldarg.s    lValue
    IL_054e:  newobj     instance void ARTHERRechargeStation::.ctor(class Segment,
                                                                    int64,
                                                                    int64,
                                                                    int64,
                                                                    uint16,
                                                                    uint8,
                                                                    uint16)
    IL_0553:  stloc.0
    IL_0554:  br         IL_089d

    IL_0559:  ldarg.1
    IL_055a:  ldarg.3
    IL_055b:  ldarg.s    y
    IL_055d:  ldarg.s    z
    IL_055f:  ldarg.s    cube
    IL_0561:  ldarg.s    'flags'
    IL_0563:  ldarg.s    lValue
    IL_0565:  newobj     instance void ARTHERTurretStation::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16)
    IL_056a:  stloc.0
    IL_056b:  br         IL_089d

    IL_0570:  ldarg.1
    IL_0571:  ldarg.3
    IL_0572:  ldarg.s    y
    IL_0574:  ldarg.s    z
    IL_0576:  ldarg.s    cube
    IL_0578:  ldarg.s    'flags'
    IL_057a:  ldarg.s    lValue
    IL_057c:  newobj     instance void MissileTurretEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16)
    IL_0581:  stloc.0
    IL_0582:  br         IL_089d

    IL_0587:  ldarg.1
    IL_0588:  ldarg.3
    IL_0589:  ldarg.s    y
    IL_058b:  ldarg.s    z
    IL_058d:  ldarg.s    cube
    IL_058f:  ldarg.s    'flags'
    IL_0591:  ldarg.s    lValue
    IL_0593:  newobj     instance void AutoBuilder::.ctor(class Segment,
                                                          int64,
                                                          int64,
                                                          int64,
                                                          uint16,
                                                          uint8,
                                                          uint16)
    IL_0598:  stloc.0
    IL_0599:  br         IL_089d

    IL_059e:  ldarg.1
    IL_059f:  ldarg.3
    IL_05a0:  ldarg.s    y
    IL_05a2:  ldarg.s    z
    IL_05a4:  ldarg.s    'flags'
    IL_05a6:  ldarg.s    lValue
    IL_05a8:  newobj     instance void CrystalEntity::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint8,
                                                            uint16)
    IL_05ad:  stloc.0
    IL_05ae:  br         IL_089d

    IL_05b3:  ldarg.1
    IL_05b4:  ldarg.3
    IL_05b5:  ldarg.s    y
    IL_05b7:  ldarg.s    z
    IL_05b9:  ldarg.s    'flags'
    IL_05bb:  ldarg.s    lValue
    IL_05bd:  newobj     instance void ElectricLightEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint8,
                                                                  uint16)
    IL_05c2:  stloc.0
    IL_05c3:  br         IL_089d

    IL_05c8:  ldarg.1
    IL_05c9:  ldarg.3
    IL_05ca:  ldarg.s    y
    IL_05cc:  ldarg.s    z
    IL_05ce:  ldarg.s    'flags'
    IL_05d0:  ldarg.s    lValue
    IL_05d2:  newobj     instance void PlantEntity::.ctor(class Segment,
                                                          int64,
                                                          int64,
                                                          int64,
                                                          uint8,
                                                          uint16)
    IL_05d7:  stloc.0
    IL_05d8:  br         IL_089d

    IL_05dd:  ldarg.1
    IL_05de:  ldarg.3
    IL_05df:  ldarg.s    y
    IL_05e1:  ldarg.s    z
    IL_05e3:  ldarg.s    cube
    IL_05e5:  ldarg.s    'flags'
    IL_05e7:  ldarg.s    lValue
    IL_05e9:  newobj     instance void ChargeExplosive::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16)
    IL_05ee:  stloc.0
    IL_05ef:  br         IL_089d

    IL_05f4:  ldarg.1
    IL_05f5:  ldarg.3
    IL_05f6:  ldarg.s    y
    IL_05f8:  ldarg.s    z
    IL_05fa:  ldarg.s    cube
    IL_05fc:  ldarg.s    'flags'
    IL_05fe:  ldarg.s    lValue
    IL_0600:  newobj     instance void Teleporter::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16)
    IL_0605:  stloc.0
    IL_0606:  br         IL_089d

    IL_060b:  ldarg.1
    IL_060c:  ldarg.3
    IL_060d:  ldarg.s    y
    IL_060f:  ldarg.s    z
    IL_0611:  ldarg.s    cube
    IL_0613:  ldarg.s    'flags'
    IL_0615:  ldarg.s    lValue
    IL_0617:  ldarg.s    loadFromDisk
    IL_0619:  newobj     instance void Laboratory::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_061e:  stloc.0
    IL_061f:  br         IL_089d

    IL_0624:  ldarg.1
    IL_0625:  ldarg.3
    IL_0626:  ldarg.s    y
    IL_0628:  ldarg.s    z
    IL_062a:  ldarg.s    cube
    IL_062c:  ldarg.s    'flags'
    IL_062e:  ldarg.s    lValue
    IL_0630:  ldarg.s    loadFromDisk
    IL_0632:  newobj     instance void OrbitalEnergyTransmitter::.ctor(class Segment,
                                                                       int64,
                                                                       int64,
                                                                       int64,
                                                                       uint16,
                                                                       uint8,
                                                                       uint16,
                                                                       bool)
    IL_0637:  stloc.0
    IL_0638:  br         IL_089d

    IL_063d:  ldarg.1
    IL_063e:  ldarg.3
    IL_063f:  ldarg.s    y
    IL_0641:  ldarg.s    z
    IL_0643:  ldarg.s    cube
    IL_0645:  ldarg.s    'flags'
    IL_0647:  ldarg.s    lValue
    IL_0649:  ldarg.s    loadFromDisk
    IL_064b:  newobj     instance void T4_Battery::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_0650:  stloc.0
    IL_0651:  br         IL_089d

    IL_0656:  ldarg.1
    IL_0657:  ldarg.3
    IL_0658:  ldarg.s    y
    IL_065a:  ldarg.s    z
    IL_065c:  ldarg.s    cube
    IL_065e:  ldarg.s    'flags'
    IL_0660:  ldarg.s    lValue
    IL_0662:  ldarg.s    loadFromDisk
    IL_0664:  newobj     instance void T5_Battery::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_0669:  stloc.0
    IL_066a:  br         IL_089d

    IL_066f:  ldarg.1
    IL_0670:  ldarg.3
    IL_0671:  ldarg.s    y
    IL_0673:  ldarg.s    z
    IL_0675:  ldarg.s    cube
    IL_0677:  ldarg.s    'flags'
    IL_0679:  ldarg.s    lValue
    IL_067b:  ldarg.s    loadFromDisk
    IL_067d:  newobj     instance void Solar_MK2::.ctor(class Segment,
                                                        int64,
                                                        int64,
                                                        int64,
                                                        uint16,
                                                        uint8,
                                                        uint16,
                                                        bool)
    IL_0682:  stloc.0
    IL_0683:  br         IL_089d

    IL_0688:  ldarg.1
    IL_0689:  ldarg.3
    IL_068a:  ldarg.s    y
    IL_068c:  ldarg.s    z
    IL_068e:  ldarg.s    cube
    IL_0690:  ldarg.s    'flags'
    IL_0692:  ldarg.s    lValue
    IL_0694:  ldarg.s    loadFromDisk
    IL_0696:  newobj     instance void T4_Turret::.ctor(class Segment,
                                                        int64,
                                                        int64,
                                                        int64,
                                                        uint16,
                                                        uint8,
                                                        uint16,
                                                        bool)
    IL_069b:  stloc.0
    IL_069c:  br         IL_089d

    IL_06a1:  ldarg.1
    IL_06a2:  ldarg.3
    IL_06a3:  ldarg.s    y
    IL_06a5:  ldarg.s    z
    IL_06a7:  ldarg.s    cube
    IL_06a9:  ldarg.s    'flags'
    IL_06ab:  ldarg.s    lValue
    IL_06ad:  newobj     instance void CreeperEntity::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16)
    IL_06b2:  stloc.0
    IL_06b3:  br         IL_089d

    IL_06b8:  ldarg.1
    IL_06b9:  ldarg.3
    IL_06ba:  ldarg.s    y
    IL_06bc:  ldarg.s    z
    IL_06be:  ldarg.s    cube
    IL_06c0:  ldarg.s    'flags'
    IL_06c2:  ldarg.s    lValue
    IL_06c4:  ldarg.s    loadFromDisk
    IL_06c6:  newobj     instance void HiveEntity::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_06cb:  stloc.0
    IL_06cc:  br         IL_089d

    IL_06d1:  ldarg.1
    IL_06d2:  ldarg.3
    IL_06d3:  ldarg.s    y
    IL_06d5:  ldarg.s    z
    IL_06d7:  ldarg.s    cube
    IL_06d9:  ldarg.s    'flags'
    IL_06db:  ldarg.s    lValue
    IL_06dd:  ldarg.s    loadFromDisk
    IL_06df:  newobj     instance void ResearchAssembler::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16,
                                                                bool)
    IL_06e4:  stloc.0
    IL_06e5:  br         IL_089d

    IL_06ea:  ldarg.1
    IL_06eb:  ldarg.3
    IL_06ec:  ldarg.s    y
    IL_06ee:  ldarg.s    z
    IL_06f0:  ldarg.s    cube
    IL_06f2:  ldarg.s    'flags'
    IL_06f4:  ldarg.s    lValue
    IL_06f6:  ldarg.s    loadFromDisk
    IL_06f8:  newobj     instance void GenericAutoCrafter::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16,
                                                                 bool)
    IL_06fd:  stloc.0
    IL_06fe:  br         IL_089d

    IL_0703:  ldarg.1
    IL_0704:  ldarg.3
    IL_0705:  ldarg.s    y
    IL_0707:  ldarg.s    z
    IL_0709:  ldarg.s    cube
    IL_070b:  ldarg.s    'flags'
    IL_070d:  ldarg.s    lValue
    IL_070f:  ldarg.s    loadFromDisk
    IL_0711:  newobj     instance void GeologicalSurveyor::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16,
                                                                 bool)
    IL_0716:  stloc.0
    IL_0717:  br         IL_089d

    IL_071c:  ldarg.1
    IL_071d:  ldarg.3
    IL_071e:  ldarg.s    y
    IL_0720:  ldarg.s    z
    IL_0722:  ldarg.s    cube
    IL_0724:  ldarg.s    'flags'
    IL_0726:  ldarg.s    lValue
    IL_0728:  ldarg.s    loadFromDisk
    IL_072a:  newobj     instance void Quarry::.ctor(class Segment,
                                                     int64,
                                                     int64,
                                                     int64,
                                                     uint16,
                                                     uint8,
                                                     uint16,
                                                     bool)
    IL_072f:  stloc.0
    IL_0730:  br         IL_089d

    IL_0735:  ldarg.1
    IL_0736:  ldarg.3
    IL_0737:  ldarg.s    y
    IL_0739:  ldarg.s    z
    IL_073b:  ldarg.s    cube
    IL_073d:  ldarg.s    'flags'
    IL_073f:  ldarg.s    lValue
    IL_0741:  ldarg.s    loadFromDisk
    IL_0743:  newobj     instance void LaunchPad::.ctor(class Segment,
                                                        int64,
                                                        int64,
                                                        int64,
                                                        uint16,
                                                        uint8,
                                                        uint16,
                                                        bool)
    IL_0748:  stloc.0
    IL_0749:  br         IL_089d

    IL_074e:  ldarg.1
    IL_074f:  ldarg.3
    IL_0750:  ldarg.s    y
    IL_0752:  ldarg.s    z
    IL_0754:  ldarg.s    cube
    IL_0756:  ldarg.s    'flags'
    IL_0758:  ldarg.s    lValue
    IL_075a:  ldarg.s    loadFromDisk
    IL_075c:  newobj     instance void AutoUpgrader::.ctor(class Segment,
                                                           int64,
                                                           int64,
                                                           int64,
                                                           uint16,
                                                           uint8,
                                                           uint16,
                                                           bool)
    IL_0761:  stloc.0
    IL_0762:  br         IL_089d

    IL_0767:  ldarg.1
    IL_0768:  ldarg.3
    IL_0769:  ldarg.s    y
    IL_076b:  ldarg.s    z
    IL_076d:  ldarg.s    cube
    IL_076f:  ldarg.s    'flags'
    IL_0771:  ldarg.s    lValue
    IL_0773:  ldarg.s    loadFromDisk
    IL_0775:  newobj     instance void TrackGate::.ctor(class Segment,
                                                        int64,
                                                        int64,
                                                        int64,
                                                        uint16,
                                                        uint8,
                                                        uint16,
                                                        bool)
    IL_077a:  stloc.0
    IL_077b:  br         IL_089d

    IL_0780:  ldarg.1
    IL_0781:  ldarg.3
    IL_0782:  ldarg.s    y
    IL_0784:  ldarg.s    z
    IL_0786:  ldarg.s    cube
    IL_0788:  ldarg.s    'flags'
    IL_078a:  ldarg.s    lValue
    IL_078c:  ldarg.s    loadFromDisk
    IL_078e:  newobj     instance void TrackTerminus::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16,
                                                            bool)
    IL_0793:  stloc.0
    IL_0794:  br         IL_089d

    IL_0799:  ldarg.1
    IL_079a:  ldarg.3
    IL_079b:  ldarg.s    y
    IL_079d:  ldarg.s    z
    IL_079f:  ldarg.s    cube
    IL_07a1:  ldarg.s    'flags'
    IL_07a3:  ldarg.s    lValue
    IL_07a5:  ldarg.s    loadFromDisk
    IL_07a7:  newobj     instance void TrackPoint::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_07ac:  stloc.0
    IL_07ad:  br         IL_089d

    IL_07b2:  ldarg.1
    IL_07b3:  ldarg.3
    IL_07b4:  ldarg.s    y
    IL_07b6:  ldarg.s    z
    IL_07b8:  ldarg.s    cube
    IL_07ba:  ldarg.s    'flags'
    IL_07bc:  ldarg.s    lValue
    IL_07be:  ldarg.s    loadFromDisk
    IL_07c0:  newobj     instance void TrackStation::.ctor(class Segment,
                                                           int64,
                                                           int64,
                                                           int64,
                                                           uint16,
                                                           uint8,
                                                           uint16,
                                                           bool)
    IL_07c5:  stloc.0
    IL_07c6:  br         IL_089d

    IL_07cb:  ldarg.1
    IL_07cc:  ldarg.3
    IL_07cd:  ldarg.s    y
    IL_07cf:  ldarg.s    z
    IL_07d1:  ldarg.s    cube
    IL_07d3:  ldarg.s    'flags'
    IL_07d5:  ldarg.s    lValue
    IL_07d7:  ldarg.s    loadFromDisk
    IL_07d9:  newobj     instance void MobSpawner::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_07de:  stloc.0
    IL_07df:  br         IL_089d

    IL_07e4:  ldarg.1
    IL_07e5:  ldarg.3
    IL_07e6:  ldarg.s    y
    IL_07e8:  ldarg.s    z
    IL_07ea:  ldarg.s    cube
    IL_07ec:  ldarg.s    'flags'
    IL_07ee:  ldarg.s    lValue
    IL_07f0:  ldarg.s    loadFromDisk
    IL_07f2:  newobj     instance void Wasp_Agitator::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16,
                                                            bool)
    IL_07f7:  stloc.0
    IL_07f8:  br         IL_089d

    IL_07fd:  ldarg.1
    IL_07fe:  ldarg.3
    IL_07ff:  ldarg.s    y
    IL_0801:  ldarg.s    z
    IL_0803:  ldarg.s    cube
    IL_0805:  ldarg.s    'flags'
    IL_0807:  ldarg.s    lValue
    IL_0809:  ldarg.s    loadFromDisk
    IL_080b:  newobj     instance void Wasp_Calmer::.ctor(class Segment,
                                                          int64,
                                                          int64,
                                                          int64,
                                                          uint16,
                                                          uint8,
                                                          uint16,
                                                          bool)
    IL_0810:  stloc.0
    IL_0811:  br         IL_089d

    IL_0816:  ldarg.s    lValue
    IL_0818:  brtrue     IL_0831

    IL_081d:  ldarg.1
    IL_081e:  ldarg.3
    IL_081f:  ldarg.s    y
    IL_0821:  ldarg.s    z
    IL_0823:  ldarg.s    cube
    IL_0825:  ldarg.s    'flags'
    IL_0827:  ldarg.s    lValue
    IL_0829:  ldarg.s    loadFromDisk
    IL_082b:  newobj     instance void MinecartFactory::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16,
                                                              bool)
    IL_0830:  stloc.0
    IL_0831:  ldarg.s    lValue
    IL_0833:  ldc.i4.1
    IL_0834:  bne.un     IL_0839

    IL_0839:  ldarg.s    lValue
    IL_083b:  ldc.i4.2
    IL_083c:  bne.un     IL_0841

    IL_0841:  ldarg.s    lValue
    IL_0843:  ldc.i4.3
    IL_0844:  bne.un     IL_085d

    IL_0849:  ldarg.1
    IL_084a:  ldarg.3
    IL_084b:  ldarg.s    y
    IL_084d:  ldarg.s    z
    IL_084f:  ldarg.s    cube
    IL_0851:  ldarg.s    'flags'
    IL_0853:  ldarg.s    lValue
    IL_0855:  ldarg.s    loadFromDisk
    IL_0857:  newobj     instance void MinecartStation::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16,
                                                              bool)
    IL_085c:  stloc.0
    IL_085d:  ldarg.s    lValue
    IL_085f:  ldc.i4.4
    IL_0860:  bne.un     IL_0879

    IL_0865:  ldarg.1
    IL_0866:  ldarg.3
    IL_0867:  ldarg.s    y
    IL_0869:  ldarg.s    z
    IL_086b:  ldarg.s    cube
    IL_086d:  ldarg.s    'flags'
    IL_086f:  ldarg.s    lValue
    IL_0871:  ldarg.s    loadFromDisk
    IL_0873:  newobj     instance void MinecartStation::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16,
                                                              bool)
    IL_0878:  stloc.0
    IL_0879:  br         IL_089d

    IL_087e:  ldstr      "Entity type "
    IL_0883:  ldarg.2
    IL_0884:  box        eSegmentEntity
    IL_0889:  ldstr      " not supported by CreateSegmentEntity"
    IL_088e:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0893:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_0898:  br         IL_089d

    IL_089d:  ldloc.0
    IL_089e:  brfalse    IL_0915

    IL_08a3:  ldarg.s    fromNetwork
    IL_08a5:  brtrue     IL_08c6

    IL_08aa:  ldloc.0
    IL_08ab:  ldarg.0
    IL_08ac:  dup
    IL_08ad:  ldfld      int32 EntityManager::mnNextId
    IL_08b2:  dup
    IL_08b3:  stloc.2
    IL_08b4:  ldc.i4.1
    IL_08b5:  add
    IL_08b6:  stfld      int32 EntityManager::mnNextId
    IL_08bb:  ldloc.2
    IL_08bc:  stfld      int32 SegmentEntity::mnID
    IL_08c1:  br         IL_08cd

    IL_08c6:  ldloc.0
    IL_08c7:  ldc.i4.m1
    IL_08c8:  stfld      int32 SegmentEntity::mnID
    IL_08cd:  ldarg.1
    IL_08ce:  ldloc.0
    IL_08cf:  ldarg.s    loadFromDisk
    IL_08d1:  ldc.i4.0
    IL_08d2:  ceq
    IL_08d4:  callvirt   instance void Segment::AddEntity(class SegmentEntity,
                                                          bool)
    IL_08d9:  ldsfld     bool NetworkManager::mbHostingServer
    IL_08de:  brfalse    IL_0909

    IL_08e3:  ldarg.s    loadFromDisk
    IL_08e5:  brtrue     IL_0909

    IL_08ea:  ldsfld     class NetworkManager NetworkManager::'instance'
    IL_08ef:  ldfld      class NetworkServerThread NetworkManager::mServerThread
    IL_08f4:  ldfld      class ConcurrentQueue`1<class SegmentEntity> NetworkServerThread::mEntityCreations
    IL_08f9:  ldloc.0
    IL_08fa:  callvirt   instance void class ConcurrentQueue`1<class SegmentEntity>::Enqueue(!0)
    IL_08ff:  ldstr      "Queueing entity for network creation"
    IL_0904:  call       void [UnityEngine]UnityEngine.Debug::Log(object)
    IL_0909:  ldsfld     int32 HUDManager::mnDiskEntitiesLoaded
    IL_090e:  ldc.i4.1
    IL_090f:  add
    IL_0910:  stsfld     int32 HUDManager::mnDiskEntitiesLoaded
    IL_0915:  ldloc.0
    IL_0916:  ret
  } // end of method EntityManager::CreateSegmentEntity