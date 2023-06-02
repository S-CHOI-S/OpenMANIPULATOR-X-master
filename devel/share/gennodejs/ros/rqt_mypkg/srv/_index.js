
"use strict";

let ArmService = require('./ArmService.js')
let HoverService = require('./HoverService.js')
let TiltService = require('./TiltService.js')
let ManipulatorService = require('./ManipulatorService.js')
let PosCtrlService = require('./PosCtrlService.js')
let SetKinematicsPose = require('./SetKinematicsPose.js')
let DockService = require('./DockService.js')
let KillService = require('./KillService.js')

module.exports = {
  ArmService: ArmService,
  HoverService: HoverService,
  TiltService: TiltService,
  ManipulatorService: ManipulatorService,
  PosCtrlService: PosCtrlService,
  SetKinematicsPose: SetKinematicsPose,
  DockService: DockService,
  KillService: KillService,
};
