
"use strict";

let SetDrawingTrajectory = require('./SetDrawingTrajectory.js')
let GetKinematicsPose = require('./GetKinematicsPose.js')
let SetActuatorState = require('./SetActuatorState.js')
let DockBatteryService = require('./DockBatteryService.js')
let ManipulatorService = require('./ManipulatorService.js')
let KillManipulatorService = require('./KillManipulatorService.js')
let GetJointPosition = require('./GetJointPosition.js')
let SetKinematicsPose = require('./SetKinematicsPose.js')
let SetJointPosition = require('./SetJointPosition.js')

module.exports = {
  SetDrawingTrajectory: SetDrawingTrajectory,
  GetKinematicsPose: GetKinematicsPose,
  SetActuatorState: SetActuatorState,
  DockBatteryService: DockBatteryService,
  ManipulatorService: ManipulatorService,
  KillManipulatorService: KillManipulatorService,
  GetJointPosition: GetJointPosition,
  SetKinematicsPose: SetKinematicsPose,
  SetJointPosition: SetJointPosition,
};
