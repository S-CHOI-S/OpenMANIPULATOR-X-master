#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/PoseStamped.h"

double x = 0;
double y = 0;
double z = 0;

void chatterCallback(const geometry_msgs::PoseStamped& msg)
{
  x = msg.pose.position.x;
  y = msg.pose.position.y;
  z = msg.pose.position.z;
  ROS_INFO("%lf, %lf, %lf", x, y, z);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "haptic");
  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("/phantom/pose", 1000, chatterCallback);

  ros::spin();

  return 0;
}