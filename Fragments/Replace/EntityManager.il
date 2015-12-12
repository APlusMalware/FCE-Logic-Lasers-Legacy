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
    // Code size       2347 (0x92b)
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
                          IL_0249,
                          IL_0892,
                          IL_018c,
                          IL_019d,
                          IL_01b4,
                          IL_01cb,
                          IL_01e2,
                          IL_01f9,
                          IL_020c,
                          IL_0223,
                          IL_0236,
                          IL_0892,
                          IL_025c,
                          IL_0271,
                          IL_038d,
                          IL_0288,
                          IL_0892,
                          IL_02a1,
                          IL_02b8,
                          IL_02d1,
                          IL_02e8,
                          IL_02ff,
                          IL_0316,
                          IL_032d,
                          IL_0344,
                          IL_035b,
                          IL_0374,
                          IL_0608,
                          IL_03a4,
                          IL_03bd,
                          IL_03d4,
                          IL_03eb,
                          IL_041d,
                          IL_0434,
                          IL_044d,
                          IL_0466,
                          IL_0892,
                          IL_0892,
                          IL_047d,
                          IL_0494,
                          IL_04ab,
                          IL_04c4,
                          IL_04db,
                          IL_04f4,
                          IL_050d,
                          IL_0526,
                          IL_0892,
                          IL_053f,
                          IL_0556,
                          IL_059b,
                          IL_05f1,
                          IL_05b2,
                          IL_061f,
                          IL_06e5,
                          IL_0717,
                          IL_0730,
                          IL_0749,
                          IL_06b5,
                          IL_05dc,
                          IL_05c7,
                          IL_06cc,
                          IL_082a,
                          IL_056d,
                          IL_0404,
                          IL_0584,
                          IL_06fe,
                          IL_0638,
                          IL_0762,
                          IL_0651,
                          IL_066a,
                          IL_0683,
                          IL_0794,
                          IL_077b,
                          IL_07ad,
                          IL_07c6,
                          IL_069c,
                          IL_07df,
                          IL_07f8,
                          IL_0811)
    IL_014e:  br         IL_0892

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
    IL_0176:  br         IL_08b1

    IL_017b:  ldarg.1
    IL_017c:  ldarg.3
    IL_017d:  ldarg.s    y
    IL_017f:  ldarg.s    z
    IL_0181:  newobj     instance void InjectionEntity::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64)
    IL_0186:  stloc.0
    IL_0187:  br         IL_08b1

    IL_018c:  ldarg.1
    IL_018d:  ldarg.3
    IL_018e:  ldarg.s    y
    IL_0190:  ldarg.s    z
    IL_0192:  newobj     instance void DoodadFactory::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64)
    IL_0197:  stloc.0
    IL_0198:  br         IL_08b1

    IL_019d:  ldarg.1
    IL_019e:  ldarg.3
    IL_019f:  ldarg.s    y
    IL_01a1:  ldarg.s    z
    IL_01a3:  ldarg.s    cube
    IL_01a5:  ldarg.s    'flags'
    IL_01a7:  ldarg.s    lValue
    IL_01a9:  newobj     instance void LaserEmitterEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16)
    IL_01ae:  stloc.0
    IL_01af:  br         IL_08b1

    IL_01b4:  ldarg.1
    IL_01b5:  ldarg.3
    IL_01b6:  ldarg.s    y
    IL_01b8:  ldarg.s    z
    IL_01ba:  ldarg.s    cube
    IL_01bc:  ldarg.s    'flags'
    IL_01be:  ldarg.s    lValue
    IL_01c0:  newobj     instance void LaserAndGateEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16)
    IL_01c5:  stloc.0
    IL_01c6:  br         IL_08b1

    IL_01cb:  ldarg.1
    IL_01cc:  ldarg.3
    IL_01cd:  ldarg.s    y
    IL_01cf:  ldarg.s    z
    IL_01d1:  ldarg.s    cube
    IL_01d3:  ldarg.s    'flags'
    IL_01d5:  ldarg.s    lValue
    IL_01d7:  newobj     instance void LaserOrGateEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16)
    IL_01dc:  stloc.0
    IL_01dd:  br         IL_08b1

    IL_01e2:  ldarg.1
    IL_01e3:  ldarg.3
    IL_01e4:  ldarg.s    y
    IL_01e6:  ldarg.s    z
    IL_01e8:  ldarg.s    cube
    IL_01ea:  ldarg.s    'flags'
    IL_01ec:  ldarg.s    lValue
    IL_01ee:  newobj     instance void LaserNotGateEntity::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16)
    IL_01f3:  stloc.0
    IL_01f4:  br         IL_08b1

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
    IL_0207:  br         IL_08b1

    IL_020c:  ldarg.1
    IL_020d:  ldarg.3
    IL_020e:  ldarg.s    y
    IL_0210:  ldarg.s    z
    IL_0212:  ldarg.s    cube
    IL_0214:  ldarg.s    'flags'
    IL_0216:  ldarg.s    lValue
    IL_0218:  newobj     instance void LaserSplitterEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16)
    IL_021d:  stloc.0
    IL_021e:  br         IL_08b1

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
    IL_0231:  br         IL_08b1

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
    IL_0244:  br         IL_08b1

    IL_0249:  ldarg.1
    IL_024a:  ldarg.3
    IL_024b:  ldarg.s    y
    IL_024d:  ldarg.s    z
    IL_024f:  ldarg.s    'flags'
    IL_0251:  newobj     instance void Sign::.ctor(class Segment,
                                                   int64,
                                                   int64,
                                                   int64,
                                                   uint8)
    IL_0256:  stloc.0
    IL_0257:  br         IL_08b1

    IL_025c:  ldarg.1
    IL_025d:  ldarg.3
    IL_025e:  ldarg.s    y
    IL_0260:  ldarg.s    z
    IL_0262:  ldarg.s    'flags'
    IL_0264:  ldarg.s    lValue
    IL_0266:  newobj     instance void ConfigurableLight::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint8,
                                                                uint16)
    IL_026b:  stloc.0
    IL_026c:  br         IL_08b1

    IL_0271:  ldarg.1
    IL_0272:  ldarg.3
    IL_0273:  ldarg.s    y
    IL_0275:  ldarg.s    z
    IL_0277:  ldarg.s    cube
    IL_0279:  ldarg.s    'flags'
    IL_027b:  ldarg.s    lValue
    IL_027d:  newobj     instance void CentralPowerHub::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16)
    IL_0282:  stloc.0
    IL_0283:  br         IL_08b1

    IL_0288:  ldarg.1
    IL_0289:  ldarg.3
    IL_028a:  ldarg.s    y
    IL_028c:  ldarg.s    z
    IL_028e:  ldarg.s    cube
    IL_0290:  ldarg.s    'flags'
    IL_0292:  ldarg.s    lValue
    IL_0294:  ldarg.s    loadFromDisk
    IL_0296:  newobj     instance void OreExtractor::.ctor(class Segment,
                                                           int64,
                                                           int64,
                                                           int64,
                                                           uint16,
                                                           uint8,
                                                           uint16,
                                                           bool)
    IL_029b:  stloc.0
    IL_029c:  br         IL_08b1

    IL_02a1:  ldarg.1
    IL_02a2:  ldarg.3
    IL_02a3:  ldarg.s    y
    IL_02a5:  ldarg.s    z
    IL_02a7:  ldarg.s    cube
    IL_02a9:  ldarg.s    'flags'
    IL_02ab:  ldarg.s    lValue
    IL_02ad:  newobj     instance void PowerStorageBlock::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16)
    IL_02b2:  stloc.0
    IL_02b3:  br         IL_08b1

    IL_02b8:  ldarg.1
    IL_02b9:  ldarg.3
    IL_02ba:  ldarg.s    y
    IL_02bc:  ldarg.s    z
    IL_02be:  ldarg.s    cube
    IL_02c0:  ldarg.s    'flags'
    IL_02c2:  ldarg.s    lValue
    IL_02c4:  ldarg.s    loadFromDisk
    IL_02c6:  newobj     instance void StorageHopper::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16,
                                                            bool)
    IL_02cb:  stloc.0
    IL_02cc:  br         IL_08b1

    IL_02d1:  ldarg.1
    IL_02d2:  ldarg.3
    IL_02d3:  ldarg.s    y
    IL_02d5:  ldarg.s    z
    IL_02d7:  ldarg.s    cube
    IL_02d9:  ldarg.s    'flags'
    IL_02db:  ldarg.s    lValue
    IL_02dd:  newobj     instance void LaserPowerTransmitter::.ctor(class Segment,
                                                                    int64,
                                                                    int64,
                                                                    int64,
                                                                    uint16,
                                                                    uint8,
                                                                    uint16)
    IL_02e2:  stloc.0
    IL_02e3:  br         IL_08b1

    IL_02e8:  ldarg.1
    IL_02e9:  ldarg.3
    IL_02ea:  ldarg.s    y
    IL_02ec:  ldarg.s    z
    IL_02ee:  ldarg.s    cube
    IL_02f0:  ldarg.s    'flags'
    IL_02f2:  ldarg.s    lValue
    IL_02f4:  newobj     instance void BFL9000::.ctor(class Segment,
                                                      int64,
                                                      int64,
                                                      int64,
                                                      uint16,
                                                      uint8,
                                                      uint16)
    IL_02f9:  stloc.0
    IL_02fa:  br         IL_08b1

    IL_02ff:  ldarg.1
    IL_0300:  ldarg.3
    IL_0301:  ldarg.s    y
    IL_0303:  ldarg.s    z
    IL_0305:  ldarg.s    cube
    IL_0307:  ldarg.s    'flags'
    IL_0309:  ldarg.s    lValue
    IL_030b:  newobj     instance void PyrothermicGenerator::.ctor(class Segment,
                                                                   int64,
                                                                   int64,
                                                                   int64,
                                                                   uint16,
                                                                   uint8,
                                                                   uint16)
    IL_0310:  stloc.0
    IL_0311:  br         IL_08b1

    IL_0316:  ldarg.1
    IL_0317:  ldarg.3
    IL_0318:  ldarg.s    y
    IL_031a:  ldarg.s    z
    IL_031c:  ldarg.s    cube
    IL_031e:  ldarg.s    'flags'
    IL_0320:  ldarg.s    lValue
    IL_0322:  newobj     instance void SolarPanel::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16)
    IL_0327:  stloc.0
    IL_0328:  br         IL_08b1

    IL_032d:  ldarg.1
    IL_032e:  ldarg.3
    IL_032f:  ldarg.s    y
    IL_0331:  ldarg.s    z
    IL_0333:  ldarg.s    cube
    IL_0335:  ldarg.s    'flags'
    IL_0337:  ldarg.s    lValue
    IL_0339:  newobj     instance void AIMover::.ctor(class Segment,
                                                      int64,
                                                      int64,
                                                      int64,
                                                      uint16,
                                                      uint8,
                                                      uint16)
    IL_033e:  stloc.0
    IL_033f:  br         IL_08b1

    IL_0344:  ldarg.1
    IL_0345:  ldarg.3
    IL_0346:  ldarg.s    y
    IL_0348:  ldarg.s    z
    IL_034a:  ldarg.s    cube
    IL_034c:  ldarg.s    'flags'
    IL_034e:  ldarg.s    lValue
    IL_0350:  newobj     instance void MatterMover::.ctor(class Segment,
                                                          int64,
                                                          int64,
                                                          int64,
                                                          uint16,
                                                          uint8,
                                                          uint16)
    IL_0355:  stloc.0
    IL_0356:  br         IL_08b1

    IL_035b:  ldarg.1
    IL_035c:  ldarg.3
    IL_035d:  ldarg.s    y
    IL_035f:  ldarg.s    z
    IL_0361:  ldarg.s    cube
    IL_0363:  ldarg.s    'flags'
    IL_0365:  ldarg.s    lValue
    IL_0367:  ldarg.s    loadFromDisk
    IL_0369:  newobj     instance void ManufacturingPlant::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16,
                                                                 bool)
    IL_036e:  stloc.0
    IL_036f:  br         IL_08b1

    IL_0374:  ldarg.1
    IL_0375:  ldarg.3
    IL_0376:  ldarg.s    y
    IL_0378:  ldarg.s    z
    IL_037a:  ldarg.s    cube
    IL_037c:  ldarg.s    'flags'
    IL_037e:  ldarg.s    lValue
    IL_0380:  ldarg.s    loadFromDisk
    IL_0382:  newobj     instance void ManufacturingPlantModule::.ctor(class Segment,
                                                                       int64,
                                                                       int64,
                                                                       int64,
                                                                       uint16,
                                                                       uint8,
                                                                       uint16,
                                                                       bool)
    IL_0387:  stloc.0
    IL_0388:  br         IL_08b1

    IL_038d:  ldarg.1
    IL_038e:  ldarg.3
    IL_038f:  ldarg.s    y
    IL_0391:  ldarg.s    z
    IL_0393:  ldarg.s    cube
    IL_0395:  ldarg.s    'flags'
    IL_0397:  ldarg.s    lValue
    IL_0399:  newobj     instance void OreSmelter::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16)
    IL_039e:  stloc.0
    IL_039f:  br         IL_08b1

    IL_03a4:  ldarg.1
    IL_03a5:  ldarg.3
    IL_03a6:  ldarg.s    y
    IL_03a8:  ldarg.s    z
    IL_03aa:  ldarg.s    cube
    IL_03ac:  ldarg.s    'flags'
    IL_03ae:  ldarg.s    lValue
    IL_03b0:  ldarg.s    loadFromDisk
    IL_03b2:  newobj     instance void ConveyorEntity::.ctor(class Segment,
                                                             int64,
                                                             int64,
                                                             int64,
                                                             uint16,
                                                             uint8,
                                                             uint16,
                                                             bool)
    IL_03b7:  stloc.0
    IL_03b8:  br         IL_08b1

    IL_03bd:  ldarg.1
    IL_03be:  ldarg.3
    IL_03bf:  ldarg.s    y
    IL_03c1:  ldarg.s    z
    IL_03c3:  ldarg.s    cube
    IL_03c5:  ldarg.s    'flags'
    IL_03c7:  ldarg.s    lValue
    IL_03c9:  newobj     instance void ResearchStation::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16)
    IL_03ce:  stloc.0
    IL_03cf:  br         IL_08b1

    IL_03d4:  ldarg.1
    IL_03d5:  ldarg.3
    IL_03d6:  ldarg.s    y
    IL_03d8:  ldarg.s    z
    IL_03da:  ldarg.s    cube
    IL_03dc:  ldarg.s    'flags'
    IL_03de:  ldarg.s    lValue
    IL_03e0:  newobj     instance void ForcedInduction::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16)
    IL_03e5:  stloc.0
    IL_03e6:  br         IL_08b1

    IL_03eb:  ldarg.1
    IL_03ec:  ldarg.3
    IL_03ed:  ldarg.s    y
    IL_03ef:  ldarg.s    z
    IL_03f1:  ldarg.s    cube
    IL_03f3:  ldarg.s    'flags'
    IL_03f5:  ldarg.s    lValue
    IL_03f7:  ldarg.s    loadFromDisk
    IL_03f9:  newobj     instance void PopupTurretEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16,
                                                                bool)
    IL_03fe:  stloc.0
    IL_03ff:  br         IL_08b1

    IL_0404:  ldarg.1
    IL_0405:  ldarg.3
    IL_0406:  ldarg.s    y
    IL_0408:  ldarg.s    z
    IL_040a:  ldarg.s    cube
    IL_040c:  ldarg.s    'flags'
    IL_040e:  ldarg.s    lValue
    IL_0410:  ldarg.s    loadFromDisk
    IL_0412:  newobj     instance void ThreatScanner::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16,
                                                            bool)
    IL_0417:  stloc.0
    IL_0418:  br         IL_08b1

    IL_041d:  ldarg.1
    IL_041e:  ldarg.3
    IL_041f:  ldarg.s    y
    IL_0421:  ldarg.s    z
    IL_0423:  ldarg.s    cube
    IL_0425:  ldarg.s    'flags'
    IL_0427:  ldarg.s    lValue
    IL_0429:  newobj     instance void AutoExcavator::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16)
    IL_042e:  stloc.0
    IL_042f:  br         IL_08b1

    IL_0434:  ldarg.1
    IL_0435:  ldarg.3
    IL_0436:  ldarg.s    y
    IL_0438:  ldarg.s    z
    IL_043a:  ldarg.s    cube
    IL_043c:  ldarg.s    'flags'
    IL_043e:  ldarg.s    lValue
    IL_0440:  ldarg.s    loadFromDisk
    IL_0442:  newobj     instance void RefineryController::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16,
                                                                 bool)
    IL_0447:  stloc.0
    IL_0448:  br         IL_08b1

    IL_044d:  ldarg.1
    IL_044e:  ldarg.3
    IL_044f:  ldarg.s    y
    IL_0451:  ldarg.s    z
    IL_0453:  ldarg.s    cube
    IL_0455:  ldarg.s    'flags'
    IL_0457:  ldarg.s    lValue
    IL_0459:  ldarg.s    loadFromDisk
    IL_045b:  newobj     instance void RefineryReactorVat::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16,
                                                                 bool)
    IL_0460:  stloc.0
    IL_0461:  br         IL_08b1

    IL_0466:  ldarg.1
    IL_0467:  ldarg.3
    IL_0468:  ldarg.s    y
    IL_046a:  ldarg.s    z
    IL_046c:  ldarg.s    cube
    IL_046e:  ldarg.s    'flags'
    IL_0470:  ldarg.s    lValue
    IL_0472:  newobj     instance void T1_LiftEntity::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16)
    IL_0477:  stloc.0
    IL_0478:  br         IL_08b1

    IL_047d:  ldarg.1
    IL_047e:  ldarg.3
    IL_047f:  ldarg.s    y
    IL_0481:  ldarg.s    z
    IL_0483:  ldarg.s    cube
    IL_0485:  ldarg.s    'flags'
    IL_0487:  ldarg.s    lValue
    IL_0489:  newobj     instance void LiftCompressorEntity::.ctor(class Segment,
                                                                   int64,
                                                                   int64,
                                                                   int64,
                                                                   uint16,
                                                                   uint8,
                                                                   uint16)
    IL_048e:  stloc.0
    IL_048f:  br         IL_08b1

    IL_0494:  ldarg.1
    IL_0495:  ldarg.3
    IL_0496:  ldarg.s    y
    IL_0498:  ldarg.s    z
    IL_049a:  ldarg.s    cube
    IL_049c:  ldarg.s    'flags'
    IL_049e:  ldarg.s    lValue
    IL_04a0:  newobj     instance void LiftManualControlEntity::.ctor(class Segment,
                                                                      int64,
                                                                      int64,
                                                                      int64,
                                                                      uint16,
                                                                      uint8,
                                                                      uint16)
    IL_04a5:  stloc.0
    IL_04a6:  br         IL_08b1

    IL_04ab:  ldarg.1
    IL_04ac:  ldarg.3
    IL_04ad:  ldarg.s    y
    IL_04af:  ldarg.s    z
    IL_04b1:  ldarg.s    cube
    IL_04b3:  ldarg.s    'flags'
    IL_04b5:  ldarg.s    lValue
    IL_04b7:  ldarg.s    loadFromDisk
    IL_04b9:  newobj     instance void JetTurbineGenerator::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16,
                                                                  bool)
    IL_04be:  stloc.0
    IL_04bf:  br         IL_08b1

    IL_04c4:  ldarg.1
    IL_04c5:  ldarg.3
    IL_04c6:  ldarg.s    y
    IL_04c8:  ldarg.s    z
    IL_04ca:  ldarg.s    cube
    IL_04cc:  ldarg.s    'flags'
    IL_04ce:  ldarg.s    lValue
    IL_04d0:  newobj     instance void MK1RobotArmEntity::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16)
    IL_04d5:  stloc.0
    IL_04d6:  br         IL_08b1

    IL_04db:  ldarg.1
    IL_04dc:  ldarg.3
    IL_04dd:  ldarg.s    y
    IL_04df:  ldarg.s    z
    IL_04e1:  ldarg.s    cube
    IL_04e3:  ldarg.s    'flags'
    IL_04e5:  ldarg.s    lValue
    IL_04e7:  ldarg.s    loadFromDisk
    IL_04e9:  newobj     instance void StorageCrate::.ctor(class Segment,
                                                           int64,
                                                           int64,
                                                           int64,
                                                           uint16,
                                                           uint8,
                                                           uint16,
                                                           bool)
    IL_04ee:  stloc.0
    IL_04ef:  br         IL_08b1

    IL_04f4:  ldarg.1
    IL_04f5:  ldarg.3
    IL_04f6:  ldarg.s    y
    IL_04f8:  ldarg.s    z
    IL_04fa:  ldarg.s    cube
    IL_04fc:  ldarg.s    'flags'
    IL_04fe:  ldarg.s    lValue
    IL_0500:  ldarg.s    loadFromDisk
    IL_0502:  newobj     instance void MassStorageCrate::.ctor(class Segment,
                                                               int64,
                                                               int64,
                                                               int64,
                                                               uint16,
                                                               uint8,
                                                               uint16,
                                                               bool)
    IL_0507:  stloc.0
    IL_0508:  br         IL_08b1

    IL_050d:  ldarg.1
    IL_050e:  ldarg.3
    IL_050f:  ldarg.s    y
    IL_0511:  ldarg.s    z
    IL_0513:  ldarg.s    cube
    IL_0515:  ldarg.s    'flags'
    IL_0517:  ldarg.s    lValue
    IL_0519:  ldarg.s    loadFromDisk
    IL_051b:  newobj     instance void MassStorageInputPort::.ctor(class Segment,
                                                                   int64,
                                                                   int64,
                                                                   int64,
                                                                   uint16,
                                                                   uint8,
                                                                   uint16,
                                                                   bool)
    IL_0520:  stloc.0
    IL_0521:  br         IL_08b1

    IL_0526:  ldarg.1
    IL_0527:  ldarg.3
    IL_0528:  ldarg.s    y
    IL_052a:  ldarg.s    z
    IL_052c:  ldarg.s    cube
    IL_052e:  ldarg.s    'flags'
    IL_0530:  ldarg.s    lValue
    IL_0532:  ldarg.s    loadFromDisk
    IL_0534:  newobj     instance void MassStorageOutputPort::.ctor(class Segment,
                                                                    int64,
                                                                    int64,
                                                                    int64,
                                                                    uint16,
                                                                    uint8,
                                                                    uint16,
                                                                    bool)
    IL_0539:  stloc.0
    IL_053a:  br         IL_08b1

    IL_053f:  ldarg.1
    IL_0540:  ldarg.3
    IL_0541:  ldarg.s    y
    IL_0543:  ldarg.s    z
    IL_0545:  ldarg.s    cube
    IL_0547:  ldarg.s    'flags'
    IL_0549:  ldarg.s    lValue
    IL_054b:  newobj     instance void Macerator::.ctor(class Segment,
                                                        int64,
                                                        int64,
                                                        int64,
                                                        uint16,
                                                        uint8,
                                                        uint16)
    IL_0550:  stloc.0
    IL_0551:  br         IL_08b1

    IL_0556:  ldarg.1
    IL_0557:  ldarg.3
    IL_0558:  ldarg.s    y
    IL_055a:  ldarg.s    z
    IL_055c:  ldarg.s    cube
    IL_055e:  ldarg.s    'flags'
    IL_0560:  ldarg.s    lValue
    IL_0562:  newobj     instance void ARTHERRechargeStation::.ctor(class Segment,
                                                                    int64,
                                                                    int64,
                                                                    int64,
                                                                    uint16,
                                                                    uint8,
                                                                    uint16)
    IL_0567:  stloc.0
    IL_0568:  br         IL_08b1

    IL_056d:  ldarg.1
    IL_056e:  ldarg.3
    IL_056f:  ldarg.s    y
    IL_0571:  ldarg.s    z
    IL_0573:  ldarg.s    cube
    IL_0575:  ldarg.s    'flags'
    IL_0577:  ldarg.s    lValue
    IL_0579:  newobj     instance void ARTHERTurretStation::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16)
    IL_057e:  stloc.0
    IL_057f:  br         IL_08b1

    IL_0584:  ldarg.1
    IL_0585:  ldarg.3
    IL_0586:  ldarg.s    y
    IL_0588:  ldarg.s    z
    IL_058a:  ldarg.s    cube
    IL_058c:  ldarg.s    'flags'
    IL_058e:  ldarg.s    lValue
    IL_0590:  newobj     instance void MissileTurretEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint16,
                                                                  uint8,
                                                                  uint16)
    IL_0595:  stloc.0
    IL_0596:  br         IL_08b1

    IL_059b:  ldarg.1
    IL_059c:  ldarg.3
    IL_059d:  ldarg.s    y
    IL_059f:  ldarg.s    z
    IL_05a1:  ldarg.s    cube
    IL_05a3:  ldarg.s    'flags'
    IL_05a5:  ldarg.s    lValue
    IL_05a7:  newobj     instance void AutoBuilder::.ctor(class Segment,
                                                          int64,
                                                          int64,
                                                          int64,
                                                          uint16,
                                                          uint8,
                                                          uint16)
    IL_05ac:  stloc.0
    IL_05ad:  br         IL_08b1

    IL_05b2:  ldarg.1
    IL_05b3:  ldarg.3
    IL_05b4:  ldarg.s    y
    IL_05b6:  ldarg.s    z
    IL_05b8:  ldarg.s    'flags'
    IL_05ba:  ldarg.s    lValue
    IL_05bc:  newobj     instance void CrystalEntity::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint8,
                                                            uint16)
    IL_05c1:  stloc.0
    IL_05c2:  br         IL_08b1

    IL_05c7:  ldarg.1
    IL_05c8:  ldarg.3
    IL_05c9:  ldarg.s    y
    IL_05cb:  ldarg.s    z
    IL_05cd:  ldarg.s    'flags'
    IL_05cf:  ldarg.s    lValue
    IL_05d1:  newobj     instance void ElectricLightEntity::.ctor(class Segment,
                                                                  int64,
                                                                  int64,
                                                                  int64,
                                                                  uint8,
                                                                  uint16)
    IL_05d6:  stloc.0
    IL_05d7:  br         IL_08b1

    IL_05dc:  ldarg.1
    IL_05dd:  ldarg.3
    IL_05de:  ldarg.s    y
    IL_05e0:  ldarg.s    z
    IL_05e2:  ldarg.s    'flags'
    IL_05e4:  ldarg.s    lValue
    IL_05e6:  newobj     instance void PlantEntity::.ctor(class Segment,
                                                          int64,
                                                          int64,
                                                          int64,
                                                          uint8,
                                                          uint16)
    IL_05eb:  stloc.0
    IL_05ec:  br         IL_08b1

    IL_05f1:  ldarg.1
    IL_05f2:  ldarg.3
    IL_05f3:  ldarg.s    y
    IL_05f5:  ldarg.s    z
    IL_05f7:  ldarg.s    cube
    IL_05f9:  ldarg.s    'flags'
    IL_05fb:  ldarg.s    lValue
    IL_05fd:  newobj     instance void ChargeExplosive::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16)
    IL_0602:  stloc.0
    IL_0603:  br         IL_08b1

    IL_0608:  ldarg.1
    IL_0609:  ldarg.3
    IL_060a:  ldarg.s    y
    IL_060c:  ldarg.s    z
    IL_060e:  ldarg.s    cube
    IL_0610:  ldarg.s    'flags'
    IL_0612:  ldarg.s    lValue
    IL_0614:  newobj     instance void Teleporter::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16)
    IL_0619:  stloc.0
    IL_061a:  br         IL_08b1

    IL_061f:  ldarg.1
    IL_0620:  ldarg.3
    IL_0621:  ldarg.s    y
    IL_0623:  ldarg.s    z
    IL_0625:  ldarg.s    cube
    IL_0627:  ldarg.s    'flags'
    IL_0629:  ldarg.s    lValue
    IL_062b:  ldarg.s    loadFromDisk
    IL_062d:  newobj     instance void Laboratory::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_0632:  stloc.0
    IL_0633:  br         IL_08b1

    IL_0638:  ldarg.1
    IL_0639:  ldarg.3
    IL_063a:  ldarg.s    y
    IL_063c:  ldarg.s    z
    IL_063e:  ldarg.s    cube
    IL_0640:  ldarg.s    'flags'
    IL_0642:  ldarg.s    lValue
    IL_0644:  ldarg.s    loadFromDisk
    IL_0646:  newobj     instance void OrbitalEnergyTransmitter::.ctor(class Segment,
                                                                       int64,
                                                                       int64,
                                                                       int64,
                                                                       uint16,
                                                                       uint8,
                                                                       uint16,
                                                                       bool)
    IL_064b:  stloc.0
    IL_064c:  br         IL_08b1

    IL_0651:  ldarg.1
    IL_0652:  ldarg.3
    IL_0653:  ldarg.s    y
    IL_0655:  ldarg.s    z
    IL_0657:  ldarg.s    cube
    IL_0659:  ldarg.s    'flags'
    IL_065b:  ldarg.s    lValue
    IL_065d:  ldarg.s    loadFromDisk
    IL_065f:  newobj     instance void T4_Battery::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_0664:  stloc.0
    IL_0665:  br         IL_08b1

    IL_066a:  ldarg.1
    IL_066b:  ldarg.3
    IL_066c:  ldarg.s    y
    IL_066e:  ldarg.s    z
    IL_0670:  ldarg.s    cube
    IL_0672:  ldarg.s    'flags'
    IL_0674:  ldarg.s    lValue
    IL_0676:  ldarg.s    loadFromDisk
    IL_0678:  newobj     instance void T5_Battery::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_067d:  stloc.0
    IL_067e:  br         IL_08b1

    IL_0683:  ldarg.1
    IL_0684:  ldarg.3
    IL_0685:  ldarg.s    y
    IL_0687:  ldarg.s    z
    IL_0689:  ldarg.s    cube
    IL_068b:  ldarg.s    'flags'
    IL_068d:  ldarg.s    lValue
    IL_068f:  ldarg.s    loadFromDisk
    IL_0691:  newobj     instance void Solar_MK2::.ctor(class Segment,
                                                        int64,
                                                        int64,
                                                        int64,
                                                        uint16,
                                                        uint8,
                                                        uint16,
                                                        bool)
    IL_0696:  stloc.0
    IL_0697:  br         IL_08b1

    IL_069c:  ldarg.1
    IL_069d:  ldarg.3
    IL_069e:  ldarg.s    y
    IL_06a0:  ldarg.s    z
    IL_06a2:  ldarg.s    cube
    IL_06a4:  ldarg.s    'flags'
    IL_06a6:  ldarg.s    lValue
    IL_06a8:  ldarg.s    loadFromDisk
    IL_06aa:  newobj     instance void T4_Turret::.ctor(class Segment,
                                                        int64,
                                                        int64,
                                                        int64,
                                                        uint16,
                                                        uint8,
                                                        uint16,
                                                        bool)
    IL_06af:  stloc.0
    IL_06b0:  br         IL_08b1

    IL_06b5:  ldarg.1
    IL_06b6:  ldarg.3
    IL_06b7:  ldarg.s    y
    IL_06b9:  ldarg.s    z
    IL_06bb:  ldarg.s    cube
    IL_06bd:  ldarg.s    'flags'
    IL_06bf:  ldarg.s    lValue
    IL_06c1:  newobj     instance void CreeperEntity::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16)
    IL_06c6:  stloc.0
    IL_06c7:  br         IL_08b1

    IL_06cc:  ldarg.1
    IL_06cd:  ldarg.3
    IL_06ce:  ldarg.s    y
    IL_06d0:  ldarg.s    z
    IL_06d2:  ldarg.s    cube
    IL_06d4:  ldarg.s    'flags'
    IL_06d6:  ldarg.s    lValue
    IL_06d8:  ldarg.s    loadFromDisk
    IL_06da:  newobj     instance void HiveEntity::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_06df:  stloc.0
    IL_06e0:  br         IL_08b1

    IL_06e5:  ldarg.1
    IL_06e6:  ldarg.3
    IL_06e7:  ldarg.s    y
    IL_06e9:  ldarg.s    z
    IL_06eb:  ldarg.s    cube
    IL_06ed:  ldarg.s    'flags'
    IL_06ef:  ldarg.s    lValue
    IL_06f1:  ldarg.s    loadFromDisk
    IL_06f3:  newobj     instance void ResearchAssembler::.ctor(class Segment,
                                                                int64,
                                                                int64,
                                                                int64,
                                                                uint16,
                                                                uint8,
                                                                uint16,
                                                                bool)
    IL_06f8:  stloc.0
    IL_06f9:  br         IL_08b1

    IL_06fe:  ldarg.1
    IL_06ff:  ldarg.3
    IL_0700:  ldarg.s    y
    IL_0702:  ldarg.s    z
    IL_0704:  ldarg.s    cube
    IL_0706:  ldarg.s    'flags'
    IL_0708:  ldarg.s    lValue
    IL_070a:  ldarg.s    loadFromDisk
    IL_070c:  newobj     instance void GenericAutoCrafter::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16,
                                                                 bool)
    IL_0711:  stloc.0
    IL_0712:  br         IL_08b1

    IL_0717:  ldarg.1
    IL_0718:  ldarg.3
    IL_0719:  ldarg.s    y
    IL_071b:  ldarg.s    z
    IL_071d:  ldarg.s    cube
    IL_071f:  ldarg.s    'flags'
    IL_0721:  ldarg.s    lValue
    IL_0723:  ldarg.s    loadFromDisk
    IL_0725:  newobj     instance void GeologicalSurveyor::.ctor(class Segment,
                                                                 int64,
                                                                 int64,
                                                                 int64,
                                                                 uint16,
                                                                 uint8,
                                                                 uint16,
                                                                 bool)
    IL_072a:  stloc.0
    IL_072b:  br         IL_08b1

    IL_0730:  ldarg.1
    IL_0731:  ldarg.3
    IL_0732:  ldarg.s    y
    IL_0734:  ldarg.s    z
    IL_0736:  ldarg.s    cube
    IL_0738:  ldarg.s    'flags'
    IL_073a:  ldarg.s    lValue
    IL_073c:  ldarg.s    loadFromDisk
    IL_073e:  newobj     instance void Quarry::.ctor(class Segment,
                                                     int64,
                                                     int64,
                                                     int64,
                                                     uint16,
                                                     uint8,
                                                     uint16,
                                                     bool)
    IL_0743:  stloc.0
    IL_0744:  br         IL_08b1

    IL_0749:  ldarg.1
    IL_074a:  ldarg.3
    IL_074b:  ldarg.s    y
    IL_074d:  ldarg.s    z
    IL_074f:  ldarg.s    cube
    IL_0751:  ldarg.s    'flags'
    IL_0753:  ldarg.s    lValue
    IL_0755:  ldarg.s    loadFromDisk
    IL_0757:  newobj     instance void LaunchPad::.ctor(class Segment,
                                                        int64,
                                                        int64,
                                                        int64,
                                                        uint16,
                                                        uint8,
                                                        uint16,
                                                        bool)
    IL_075c:  stloc.0
    IL_075d:  br         IL_08b1

    IL_0762:  ldarg.1
    IL_0763:  ldarg.3
    IL_0764:  ldarg.s    y
    IL_0766:  ldarg.s    z
    IL_0768:  ldarg.s    cube
    IL_076a:  ldarg.s    'flags'
    IL_076c:  ldarg.s    lValue
    IL_076e:  ldarg.s    loadFromDisk
    IL_0770:  newobj     instance void AutoUpgrader::.ctor(class Segment,
                                                           int64,
                                                           int64,
                                                           int64,
                                                           uint16,
                                                           uint8,
                                                           uint16,
                                                           bool)
    IL_0775:  stloc.0
    IL_0776:  br         IL_08b1

    IL_077b:  ldarg.1
    IL_077c:  ldarg.3
    IL_077d:  ldarg.s    y
    IL_077f:  ldarg.s    z
    IL_0781:  ldarg.s    cube
    IL_0783:  ldarg.s    'flags'
    IL_0785:  ldarg.s    lValue
    IL_0787:  ldarg.s    loadFromDisk
    IL_0789:  newobj     instance void TrackGate::.ctor(class Segment,
                                                        int64,
                                                        int64,
                                                        int64,
                                                        uint16,
                                                        uint8,
                                                        uint16,
                                                        bool)
    IL_078e:  stloc.0
    IL_078f:  br         IL_08b1

    IL_0794:  ldarg.1
    IL_0795:  ldarg.3
    IL_0796:  ldarg.s    y
    IL_0798:  ldarg.s    z
    IL_079a:  ldarg.s    cube
    IL_079c:  ldarg.s    'flags'
    IL_079e:  ldarg.s    lValue
    IL_07a0:  ldarg.s    loadFromDisk
    IL_07a2:  newobj     instance void TrackTerminus::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16,
                                                            bool)
    IL_07a7:  stloc.0
    IL_07a8:  br         IL_08b1

    IL_07ad:  ldarg.1
    IL_07ae:  ldarg.3
    IL_07af:  ldarg.s    y
    IL_07b1:  ldarg.s    z
    IL_07b3:  ldarg.s    cube
    IL_07b5:  ldarg.s    'flags'
    IL_07b7:  ldarg.s    lValue
    IL_07b9:  ldarg.s    loadFromDisk
    IL_07bb:  newobj     instance void TrackPoint::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_07c0:  stloc.0
    IL_07c1:  br         IL_08b1

    IL_07c6:  ldarg.1
    IL_07c7:  ldarg.3
    IL_07c8:  ldarg.s    y
    IL_07ca:  ldarg.s    z
    IL_07cc:  ldarg.s    cube
    IL_07ce:  ldarg.s    'flags'
    IL_07d0:  ldarg.s    lValue
    IL_07d2:  ldarg.s    loadFromDisk
    IL_07d4:  newobj     instance void TrackStation::.ctor(class Segment,
                                                           int64,
                                                           int64,
                                                           int64,
                                                           uint16,
                                                           uint8,
                                                           uint16,
                                                           bool)
    IL_07d9:  stloc.0
    IL_07da:  br         IL_08b1

    IL_07df:  ldarg.1
    IL_07e0:  ldarg.3
    IL_07e1:  ldarg.s    y
    IL_07e3:  ldarg.s    z
    IL_07e5:  ldarg.s    cube
    IL_07e7:  ldarg.s    'flags'
    IL_07e9:  ldarg.s    lValue
    IL_07eb:  ldarg.s    loadFromDisk
    IL_07ed:  newobj     instance void MobSpawner::.ctor(class Segment,
                                                         int64,
                                                         int64,
                                                         int64,
                                                         uint16,
                                                         uint8,
                                                         uint16,
                                                         bool)
    IL_07f2:  stloc.0
    IL_07f3:  br         IL_08b1

    IL_07f8:  ldarg.1
    IL_07f9:  ldarg.3
    IL_07fa:  ldarg.s    y
    IL_07fc:  ldarg.s    z
    IL_07fe:  ldarg.s    cube
    IL_0800:  ldarg.s    'flags'
    IL_0802:  ldarg.s    lValue
    IL_0804:  ldarg.s    loadFromDisk
    IL_0806:  newobj     instance void Wasp_Agitator::.ctor(class Segment,
                                                            int64,
                                                            int64,
                                                            int64,
                                                            uint16,
                                                            uint8,
                                                            uint16,
                                                            bool)
    IL_080b:  stloc.0
    IL_080c:  br         IL_08b1

    IL_0811:  ldarg.1
    IL_0812:  ldarg.3
    IL_0813:  ldarg.s    y
    IL_0815:  ldarg.s    z
    IL_0817:  ldarg.s    cube
    IL_0819:  ldarg.s    'flags'
    IL_081b:  ldarg.s    lValue
    IL_081d:  ldarg.s    loadFromDisk
    IL_081f:  newobj     instance void Wasp_Calmer::.ctor(class Segment,
                                                          int64,
                                                          int64,
                                                          int64,
                                                          uint16,
                                                          uint8,
                                                          uint16,
                                                          bool)
    IL_0824:  stloc.0
    IL_0825:  br         IL_08b1

    IL_082a:  ldarg.s    lValue
    IL_082c:  brtrue     IL_0845

    IL_0831:  ldarg.1
    IL_0832:  ldarg.3
    IL_0833:  ldarg.s    y
    IL_0835:  ldarg.s    z
    IL_0837:  ldarg.s    cube
    IL_0839:  ldarg.s    'flags'
    IL_083b:  ldarg.s    lValue
    IL_083d:  ldarg.s    loadFromDisk
    IL_083f:  newobj     instance void MinecartFactory::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16,
                                                              bool)
    IL_0844:  stloc.0
    IL_0845:  ldarg.s    lValue
    IL_0847:  ldc.i4.1
    IL_0848:  bne.un     IL_084d

    IL_084d:  ldarg.s    lValue
    IL_084f:  ldc.i4.2
    IL_0850:  bne.un     IL_0855

    IL_0855:  ldarg.s    lValue
    IL_0857:  ldc.i4.3
    IL_0858:  bne.un     IL_0871

    IL_085d:  ldarg.1
    IL_085e:  ldarg.3
    IL_085f:  ldarg.s    y
    IL_0861:  ldarg.s    z
    IL_0863:  ldarg.s    cube
    IL_0865:  ldarg.s    'flags'
    IL_0867:  ldarg.s    lValue
    IL_0869:  ldarg.s    loadFromDisk
    IL_086b:  newobj     instance void MinecartStation::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16,
                                                              bool)
    IL_0870:  stloc.0
    IL_0871:  ldarg.s    lValue
    IL_0873:  ldc.i4.4
    IL_0874:  bne.un     IL_088d

    IL_0879:  ldarg.1
    IL_087a:  ldarg.3
    IL_087b:  ldarg.s    y
    IL_087d:  ldarg.s    z
    IL_087f:  ldarg.s    cube
    IL_0881:  ldarg.s    'flags'
    IL_0883:  ldarg.s    lValue
    IL_0885:  ldarg.s    loadFromDisk
    IL_0887:  newobj     instance void MinecartStation::.ctor(class Segment,
                                                              int64,
                                                              int64,
                                                              int64,
                                                              uint16,
                                                              uint8,
                                                              uint16,
                                                              bool)
    IL_088c:  stloc.0
    IL_088d:  br         IL_08b1

    IL_0892:  ldstr      "Entity type "
    IL_0897:  ldarg.2
    IL_0898:  box        eSegmentEntity
    IL_089d:  ldstr      " not supported by CreateSegmentEntity"
    IL_08a2:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_08a7:  call       void [UnityEngine]UnityEngine.Debug::LogError(object)
    IL_08ac:  br         IL_08b1

    IL_08b1:  ldloc.0
    IL_08b2:  brfalse    IL_0929

    IL_08b7:  ldarg.s    fromNetwork
    IL_08b9:  brtrue     IL_08da

    IL_08be:  ldloc.0
    IL_08bf:  ldarg.0
    IL_08c0:  dup
    IL_08c1:  ldfld      int32 EntityManager::mnNextId
    IL_08c6:  dup
    IL_08c7:  stloc.2
    IL_08c8:  ldc.i4.1
    IL_08c9:  add
    IL_08ca:  stfld      int32 EntityManager::mnNextId
    IL_08cf:  ldloc.2
    IL_08d0:  stfld      int32 SegmentEntity::mnID
    IL_08d5:  br         IL_08e1

    IL_08da:  ldloc.0
    IL_08db:  ldc.i4.m1
    IL_08dc:  stfld      int32 SegmentEntity::mnID
    IL_08e1:  ldarg.1
    IL_08e2:  ldloc.0
    IL_08e3:  ldarg.s    loadFromDisk
    IL_08e5:  ldc.i4.0
    IL_08e6:  ceq
    IL_08e8:  callvirt   instance void Segment::AddEntity(class SegmentEntity,
                                                          bool)
    IL_08ed:  ldsfld     bool NetworkManager::mbHostingServer
    IL_08f2:  brfalse    IL_091d

    IL_08f7:  ldarg.s    loadFromDisk
    IL_08f9:  brtrue     IL_091d

    IL_08fe:  ldsfld     class NetworkManager NetworkManager::'instance'
    IL_0903:  ldfld      class NetworkServerThread NetworkManager::mServerThread
    IL_0908:  ldfld      class ConcurrentQueue`1<class SegmentEntity> NetworkServerThread::mEntityCreations
    IL_090d:  ldloc.0
    IL_090e:  callvirt   instance void class ConcurrentQueue`1<class SegmentEntity>::Enqueue(!0)
    IL_0913:  ldstr      "Queueing entity for network creation"
    IL_0918:  call       void [UnityEngine]UnityEngine.Debug::Log(object)
    IL_091d:  ldsfld     int32 HUDManager::mnDiskEntitiesLoaded
    IL_0922:  ldc.i4.1
    IL_0923:  add
    IL_0924:  stsfld     int32 HUDManager::mnDiskEntitiesLoaded
    IL_0929:  ldloc.0
    IL_092a:  ret
  } // end of method EntityManager::CreateSegmentEntity