﻿/*******************************************************************************
* Copyright 2018 ROBOTIS CO., LTD.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*******************************************************************************/

/* Authors: Darby Lim, Hye-Jong KIM, Ryan Shim, Yong-Ho Na */

#ifndef OPEN_MANIPULATOR_TELEOP_KEYBOARD_H_
#define OPEN_MANIPULATOR_TELEOP_KEYBOARD_H_

#include <termios.h>

#include <ros/ros.h>
#include <sensor_msgs/JointState.h>

#include "open_manipulator_msgs/SetJointPosition.h"
#include "open_manipulator_msgs/SetKinematicsPose.h"
/***************ADD***************/
#include "open_manipulator_msgs/SetDrawingTrajectory.h"
#include "open_manipulator_msgs/OpenManipulatorState.h"
#include "open_manipulator_msgs/ManipulatorService.h"
#include "open_manipulator_msgs/KillManipulatorService.h"
#include "dynamixel_workbench_toolbox/dynamixel_workbench.h"
#include "dynamixel_workbench_controllers/dynamixel_workbench_controllers.h"

#define NUM_OF_JOINT 4
#define DELTA 0.01
#define JOINT_DELTA 0.05
#define PATH_TIME 0.5

class OpenManipulatorTeleop
{
 public:
  OpenManipulatorTeleop();
  ~OpenManipulatorTeleop();

  // update
  void printText();
  void setGoal(char ch);
/***************ADD***************/
  void manipulatorStatesCallback(const open_manipulator_msgs::OpenManipulatorState::ConstPtr &msg);
  bool getOpenManipulatorMovingState();
  bool getManipulatorService();
  bool getKillManipulatorService();
  bool change_battery;
  bool kill_manipulator;
  void initEndEffector();
  //uint32_t dxl_id_12_position_p_gain;
  //uint32_t dxl_id_13_position_p_gain;

 private:
  /*****************************************************************************
  ** ROS NodeHandle
  *****************************************************************************/
  ros::NodeHandle node_handle_;
  ros::NodeHandle priv_node_handle_;

  /*****************************************************************************
  ** Variables
  *****************************************************************************/
  std::vector<double> present_joint_angle_;
  std::vector<double> present_kinematic_position_;
/***************ADD***************/
  DynamixelWorkbench *dxl_wb_;

  /*****************************************************************************
  ** Init Functions
  *****************************************************************************/
  void initSubscriber();
  void initClient();
  void initService();

  /*****************************************************************************
  ** ROS Subscribers, Callback Functions and Relevant Functions
  *****************************************************************************/
  ros::Subscriber joint_states_sub_;
  ros::Subscriber kinematics_pose_sub_;
/***************ADD***************/
  ros::Subscriber open_manipulator_states_sub_;

  void jointStatesCallback(const sensor_msgs::JointState::ConstPtr &msg);
  void kinematicsPoseCallback(const open_manipulator_msgs::KinematicsPose::ConstPtr &msg);
  bool GUI_Manipulator_Callback(open_manipulator_msgs::ManipulatorService::Request &req, open_manipulator_msgs::ManipulatorService::Response &res);
  bool GUI_KillManipulator_Callback(open_manipulator_msgs::KillManipulatorService::Request &req, open_manipulator_msgs::KillManipulatorService::Response &res);

  /*****************************************************************************
  ** ROS Clients and Callback Functions
  *****************************************************************************/
  ros::ServiceClient goal_joint_space_path_client_;
  ros::ServiceClient goal_joint_space_path_from_present_client_;
  ros::ServiceClient goal_task_space_path_from_present_position_only_client_;
  ros::ServiceClient goal_tool_control_client_;
/***************ADD***************/
  ros::ServiceClient goal_drawing_trajectory_client_;
  ros::ServiceClient DockBatteryClient;
  ros::ServiceServer ManipulatorServer;
  ros::ServiceServer KillManipulatorServer;

  bool setJointSpacePath(std::vector<std::string> joint_name, std::vector<double> joint_angle, double path_time);
  bool setJointSpacePathFromPresent(std::vector<std::string> joint_name, std::vector<double> joint_angle, double path_time);
  bool setTaskSpacePathFromPresentPositionOnly(std::vector<double> kinematics_pose, double path_time);
  bool setToolControl(std::vector<double> joint_angle);
/***************ADD***************/
  bool setDrawingTrajectory(std::string name, std::vector<double> arg, double path_time);
  bool open_manipulator_is_moving_;

  /*****************************************************************************
  ** Others
  *****************************************************************************/
  struct termios oldt_;

  void disableWaitingForEnter(void);
  void restoreTerminalSettings(void);
  std::vector<double> getPresentJointAngle();
  std::vector<double> getPresentKinematicsPose();
};

#endif //OPEN_MANIPULATOR_TELEOP_KEYBOARD_H_
