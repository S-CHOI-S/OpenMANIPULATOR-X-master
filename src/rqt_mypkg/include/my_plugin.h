/*
  Copyright 2018
*/
#ifndef RQT_MYPKG_CPP_MY_PLUGIN_H
#define RQT_MYPKG_CPP_MY_PLUGIN_H

#include <ros/ros.h>
#include <rqt_gui_cpp/plugin.h>
#include <QWidget>
#include <iostream>
#include <turtlesim/Pose.h>
#include "rqt_mypkg/ui_my_plugin.h"
#include "rqt_mypkg/ArmService.h"
#include "rqt_mypkg/KillService.h"
#include "rqt_mypkg/PosCtrlService.h"
#include "rqt_mypkg/DockService.h"
#include "rqt_mypkg/HoverService.h"
#include "rqt_mypkg/TiltService.h"
#include "rqt_mypkg/ManipulatorService.h"
#include <std_msgs/UInt16.h>
#include <geometry_msgs/Twist.h>
//#include "rqt_mypkg/SetKinematicsPose.h"
//#include "rqt_mypkg/FAC_HoverService.h"
//#include <QKeyEvent> 
namespace rqt_mypkg_cpp
{

class MyPlugin : public rqt_gui_cpp::Plugin
{    
    Q_OBJECT
public:
    MyPlugin();
    virtual void initPlugin(qt_gui_cpp::PluginContext& context);
    virtual void shutdownPlugin();

private slots:

    void run();
    void where_callback(const geometry_msgs::Twist& pose);    
    void callback(const ros::TimerEvent&);
    void slider_moved_Callback(void);    
 //   bool FAC_Hover_Callback(rqt_mypkg::FAC_HoverService::Request &req, rqt_mypkg::FAC_HoverService::Response &res);
 //   void keyPressEvent(QKeyEvent *event); 
    
    private:
    Ui::MyPluginWidget ui_;
    QWidget* widget_;
    ros::Publisher publisher;         //이건 GUI Shutdown 용이라서 건들면 안 됨.
    ros::Subscriber now_endEffector_Position_Subscriber;
    ros::Publisher desired_endEffector_Position_Publisher;
    ros::Publisher bias_endEffector_Position_Publisher;
    ros::Publisher pubname;
    ros::Timer TimerForThread;
};

}  // namespace rqt_mypkg_cpp

#endif  // RQT_MYPKG_CPP_MY_PLUGIN_H
