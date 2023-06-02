/*
  Copyright 2018
*/

#include "my_plugin.h"
#include <pluginlib/class_list_macros.h>
#include <QStringList>

double PI = 3.141592;
bool isArm = false;
bool isHover = false;
bool isLanding = false;
bool isTilting = false;
float x = 0;
float y = 0;
float z = 0;
float x_d = 0;
float y_d = 0;
float z_d = 0;



namespace rqt_mypkg_cpp
{



MyPlugin::MyPlugin()
    : rqt_gui_cpp::Plugin()
    , widget_(0)
{
    setObjectName("C++PluginT");
}

void MyPlugin::initPlugin(qt_gui_cpp::PluginContext& context)
{
    // access standalone command line arguments
    QStringList argv = context.argv();
    // create QWidget
    widget_ = new QWidget();
    // extend the widget with all attributes and children from UI file
    ui_.setupUi(widget_);
    // add widget to the user interface
    context.addWidget(widget_);
////////////////////////////////////////////////////////////////////////////////////////
  ros::start();
  ros::NodeHandle n;
  QObject::connect(ui_.slider_x,  SIGNAL(sliderMoved(int)), this, SLOT(slider_moved_Callback(void)));
  QObject::connect(ui_.slider_y,  SIGNAL(sliderMoved(int)), this, SLOT(slider_moved_Callback(void)));
  QObject::connect(ui_.slider_z,  SIGNAL(sliderMoved(int)), this, SLOT(slider_moved_Callback(void)));

/*  QObject::connect(ui_.btn_Arm, SIGNAL(clicked(bool)), this, SLOT(Arm_Callback(bool))); // Arm Button (Toggle)
  QObject::connect(ui_.btn_Kill, SIGNAL(toggled(bool)), this, SLOT(Kill_Callback(bool))); // Kill Button (Toggle)
  QObject::connect(ui_.btn_Hover, SIGNAL(clicked(bool)), this, SLOT(Hover_Callback(bool))); // Hover Button (Click)
  QObject::connect(ui_.btn_Land, SIGNAL(clicked(bool)), this, SLOT(Land_Callback(bool))); // Land Button (Normal)
  QObject::connect(ui_.btn_PosCtrl, SIGNAL(clicked(bool)), this, SLOT(PosCtrl_Callback(bool))); // Pos Ctrl Button (Normal)
  QObject::connect(ui_.btn_Dock, SIGNAL(toggled(bool)), this, SLOT(Dock_Callback(bool)));  // Docking Button (Normal)
  QObject::connect(ui_.btn_Tilt, SIGNAL(toggled(bool)), this, SLOT(Tilt_Callback(bool))); // Tilt Button (Normal)
  QObject::connect(ui_.btn_Manipulator, SIGNAL(clicked(bool)), this, SLOT(Manipulator_Callback(bool))); // Manipulator button (Click)

  ArmClient = n.serviceClient<rqt_mypkg::ArmService>("/ArmService"); // Arm ServiceClient
  KillClient = n.serviceClient<rqt_mypkg::KillService>("/KillService"); // Kill ServiceClient
  PosCtrlClient = n.serviceClient<rqt_mypkg::PosCtrlService>("/PosCtrlService"); // PosCtrl ServiceClient
  DockClient = n.serviceClient<rqt_mypkg::DockService>("/DockService");   // Docking ServiceClient
  HoverClient = n.serviceClient<rqt_mypkg::HoverService>("/HoverService"); //Landing, Hovering, Hovered ServiceClient
  TiltClient = n.serviceClient<rqt_mypkg::TiltService>("/TiltService"); // Tilt Mode Change ServiceClient
  ManipulatorClient = n.serviceClient<rqt_mypkg::ManipulatorService>("/ManipulatorService"); // Battery change with Manipulator ServiceClient
 // HoverServer = n.advertiseService("/FAC_HoverService", &MyPlugin::FAC_Hover_Callback, this); // Get state from Drone to GUI

  SwitchSubscriber = n.subscribe("message", 100, &MyPlugin::Switch_callback, this); // Switch Subscriber callback
*/
  pubname = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 100);   //퍼블리셔 이름은 pubname


  TimerForThread = n.createTimer(ros::Duration(0.005), &MyPlugin::callback, this);
	now_endEffector_Position_Subscriber = n.subscribe("Now_endEffector_Position", 100, &MyPlugin::where_callback, this);  
  desired_endEffector_Position_Publisher = n.advertise<geometry_msgs::Twist>("Desired_endEffector_Position", 100);
  bias_endEffector_Position_Publisher = n.advertise<geometry_msgs::Twist>("bias_endEffector_Position", 100);
}

bool publishFlag = false;

double desired_x_from_slide = 0;
double desired_y_from_slide = 0;
double desired_z_from_slide = 0;

double desired_x = 0;
double desired_y = 0;
double desired_z = 0;

double now_x = 0;
double now_y = 0;
double now_z = 0;

double bias_x = 0;
double bias_y = 0;
double bias_z = 0;



void MyPlugin::callback(const ros::TimerEvent&)
{
	geometry_msgs::Twist desired_endEffector_Pose;
	geometry_msgs::Twist bias_endEffector_Position;


  desired_endEffector_Pose.linear.x = ui_.lbl_desiredX->text().toDouble();
  desired_endEffector_Pose.linear.y = ui_.lbl_desiredY->text().toDouble();
  desired_endEffector_Pose.linear.z = ui_.lbl_desiredZ->text().toDouble();
  
  bias_endEffector_Position.linear.x = bias_x;
  bias_endEffector_Position.linear.y = bias_y;
  bias_endEffector_Position.linear.z = bias_z;
  
  now_x = ui_.lbl_nowX -> text().toDouble();
  now_y = ui_.lbl_nowY -> text().toDouble();
  now_z = ui_.lbl_nowZ -> text().toDouble();

  bias_x = desired_x - now_x;
  bias_y = desired_y - now_y; 
  bias_z = desired_z - now_z; 

  ui_.lbl_biasX -> setText(QString::number(bias_x));
  ui_.lbl_biasY -> setText(QString::number(bias_y));
  ui_.lbl_biasZ -> setText(QString::number(bias_z));


  if(publishFlag) 
  {
    desired_endEffector_Position_Publisher.publish(desired_endEffector_Pose);
    bias_endEffector_Position_Publisher.publish(bias_endEffector_Position);
  }
	ros::spinOnce();


}


void MyPlugin::slider_moved_Callback(void)
{
publishFlag = true;

desired_x_from_slide = ui_.slider_x -> value();
desired_y_from_slide = ui_.slider_y -> value();
desired_z_from_slide = ui_.slider_z -> value();

desired_x = desired_x_from_slide/10000000000 + 0.125; 
desired_y = desired_y_from_slide/10000000000 + 0.122; 
desired_z = desired_z_from_slide/10000000000 + 0.020; 


ui_.lbl_desiredX -> setText(QString::number(desired_x));
ui_.lbl_desiredY -> setText(QString::number(desired_y));
ui_.lbl_desiredZ -> setText(QString::number(desired_z));

}



void MyPlugin::shutdownPlugin()
{
    // unregister all publishers here
    publisher.shutdown();
}

void MyPlugin::run() 
{
	geometry_msgs::Twist velocity;
  velocity.linear.x = 3;
   ros::Rate loop_rate(10); //일단주파수는 10정도로 해놓자
	while ( ros::ok() ) 
  {
    pubname.publish(velocity);
		ros::spinOnce();
		loop_rate.sleep();
	}
}

void MyPlugin::where_callback(const geometry_msgs::Twist& pose)
{
  x = pose.linear.x;
  y = pose.linear.y;
  z = pose.linear.z;
  ui_.lbl_nowX ->setText(QString::number(x));
  ui_.lbl_nowY ->setText(QString::number(y));
  ui_.lbl_nowZ ->setText(QString::number(z));    
}







/*


void MyPlugin::Kill_Callback(bool val)
{
    rqt_mypkg::KillService Service;
    if(ui_.btn_Kill->isChecked())
    {
      Service.request.Kill_isChecked = true;

        if (KillClient.call(Service))
        {
        ui_.btn_Kill->setText("Killed");
        ui_.btn_Kill->setStyleSheet("background-color:none");        
        }
        else 
        {
          ui_.btn_Kill->setText("Kill Failed");
          ui_.btn_Kill->setStyleSheet("background-color:red");
        }
    }
    else 
    {
      Service.request.Kill_isChecked = false;
      ui_.btn_Kill->setText("Kill");
      ui_.btn_Kill->setStyleSheet("background-color:none");
    }
    KillClient.call(Service);
    ros::spinOnce();
}


void MyPlugin::Hover_Callback(bool val)
{   
  if(isArm)
  {
      rqt_mypkg::HoverService Service;
      ui_.edi_Alti->setText("100");
      
      Service.request.isHover = true;
      Service.request.isHovering = true;
      Service.request.isLanding = false;

          if(HoverClient.call(Service))
          {
          isHover = true;
          ui_.btn_Hover->setText("Hovering");
          ui_.btn_Hover->setStyleSheet("background-color:Yellow");
          ui_.btn_Land->setText("Land");
          ui_.btn_Land->setStyleSheet("background-color:None");
          }
          else
          {
          ui_.btn_Hover->setText("Failed Hover");
          ui_.btn_Hover->setStyleSheet("background-color:Red");
          }



      HoverClient.call(Service);
      ros::spinOnce();
  }
}


void MyPlugin::Land_Callback(bool val)
{
  if(isHover)
  {
      rqt_mypkg::HoverService Service;
      ui_.edi_Alti->setText("0");
      Service.request.isHover = true;
      Service.request.isLanding = true;
      Service.request.isHovering = false;

          if(HoverClient.call(Service))
          {
          isHover = false;
          isArm = false;
          ui_.btn_Hover->setText("Hover");
          ui_.btn_Hover->setStyleSheet("background-color:None");
          ui_.btn_Arm->setText("Arm");
          ui_.btn_Arm->setStyleSheet("background-color:None");
          }
          else
          {
          ui_.btn_Land->setText("Failed Land");
          ui_.btn_Land->setStyleSheet("background-color:Red");
          }


      HoverClient.call(Service);
      ros::spinOnce();
  }
}


void MyPlugin::PosCtrl_Callback(bool val)
{
  if(isHover)
  {
  rqt_mypkg::PosCtrlService Service;


  Service.request.desired_X = ui_.edi_X->text().toDouble() / 100;
  Service.request.desired_Y = ui_.edi_Y->text().toDouble() / 100;
  Service.request.desired_Yaw = ui_.edi_Yaw->text().toDouble() * PI / 180.0; 
  Service.request.desired_Alti = ui_.edi_Alti->text().toDouble() / 100;


      if(PosCtrlClient.call(Service))
      {
      ui_.btn_PosCtrl->setText("Position Ctrl");
      ui_.btn_PosCtrl->setStyleSheet("background-color:none");
      }
      else
      {
      ui_.btn_PosCtrl->setText("Failed Ctrl");
      ui_.btn_PosCtrl->setStyleSheet("background-color:Red");
      }

  PosCtrlClient.call(Service);
  ros::spinOnce();
  }
}


void MyPlugin::Tilt_Callback(bool val)
{

    rqt_mypkg::TiltService Service;
    if(ui_.btn_Tilt->isChecked())
    {
      Service.request.Tilt_isChecked = true;

        if (TiltClient.call(Service))
        {
        ui_.btn_Tilt->setText("Tilted");
        ui_.btn_Tilt->setStyleSheet("background-color:Green");        
        }
        else 
        {
          ui_.btn_Tilt->setText("Tilt Failed");
          ui_.btn_Tilt->setStyleSheet("background-color:red");
        }
    }
    else 
    {
      Service.request.Tilt_isChecked = false;
      ui_.btn_Tilt->setText("Tilt");
      ui_.btn_Tilt->setStyleSheet("background-color:none");
    }
    TiltClient.call(Service);
    ros::spinOnce();

}



//------------------------Docking-----------------------//



void MyPlugin::Dock_Callback(bool val)
{
    rqt_mypkg::DockService Service;
      

          if(ui_.btn_Dock->isChecked())
          {
          Service.request.Dock_Do = true;
          ui_.btn_Dock->setText("Docking");
          ui_.btn_Dock->setStyleSheet("background-color:Green");
          }
          else
          { 
          Service.request.Dock_Do=false;
          ui_.btn_Dock->setText("Dock");
          ui_.btn_Dock->setStyleSheet("background-color:None");
          }

      DockClient.call(Service);
      ros::spinOnce();
}




//-----------------------Battery Change with Manipulator---------------------------//
void MyPlugin::Manipulator_Callback(bool val)
{
    rqt_mypkg::ManipulatorService Service;
    Service.request.Manipul = true;
   
    ManipulatorClient.call(Service);
    ros::spinOnce();
    return ;
}






*/




/*
//-----------------------------Back UP --------------------//
//-----------------------------멀티쓰레드 루프 --------------------//
void MyPlugin::run() {
  ros::Rate loop_rate(10); //일단주파수는 10정도로 해놓자
	while ( ros::ok() ) {
		ros::spinOnce();
		loop_rate.sleep();
	}
}


//------------------------------Drone to GUI callback. --------------------//

bool MyPlugin::FAC_Hover_Callback(rqt_mypkg::FAC_HoverService::Request &req, 
                                  rqt_mypkg::FAC_HoverService::Response &res){  //ASDF
isHover = req.FAC_isHover;
isHovering = req.FAC_isHovering;
isLanding = req.FAC_isLanding;

  if(!req.FAC_isHovering && req.FAC_isHover)  // 드론에서 Hover 했다고 신호가 옴
  {
    ui_.btn_Hover->setText("Hovered");
    ui_.btn_Hover->setStyleSheet("background-color:Green");
    ui_.btn_PosCtrl->setStyleSheet("background-color:Green");
  }

  if(!req.FAC_isLanding && !req.FAC_isHover)  //드론에서 Land 했다고 신호가 옴
  {
    ui_.btn_Land->setText("Land");
    ui_.btn_Land->setStyleSheet("background-color:None");

    isArm = false;
    isHovering = false;
    ui_.btn_Arm->setText("Arm");
    ui_.btn_Arm->setStyleSheet("background-color:None");
  }
return true;
}

//------------------------------스페이스바를 누르면 Kill 상태로 보낼 수 있게 만들려고 했는데 일단 실패함 --------------------//
void MyPlugin::keyPressEvent(QKeyEvent *event)
{
  if(event->key() == Qt::Key_Space)
  { 
  ui_.btn_Kill->isChecked();
  }
}


//------------------------------아마도 군집 조종하기 위해 사용할 것 같음.... --------------------//
void MyPlugin::gotogether(bool val)
{
  secondturtles::turtlesrv server;

    if(ui_.chk_t1->isChecked())
    {
    server.request.a = ui_.lbl_a->text().toDouble();
    server.request.b = ui_.lbl_b->text().toDouble(); 
    servicecaller.call(server);   
    ros::spinOnce();    
    }

    if(ui_.chk_t2->isChecked())
    {
    server.request.c = ui_.lbl_c->text().toDouble();
    server.request.d = ui_.lbl_d->text().toDouble();    
    secondservicecaller.call(server);   
    ros::spinOnce();
    }

}
*/



}  // namespace rqt_mypkg_cpp









// #define PLUGINLIB_DECLARE_CLASS(pkg, class_name, class_type, base_class_type)
PLUGINLIB_EXPORT_CLASS(rqt_mypkg_cpp::MyPlugin, rqt_gui_cpp::Plugin)


