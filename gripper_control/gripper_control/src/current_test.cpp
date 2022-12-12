#include "ros/ros.h"
#include <dynamixel_sdk_examples/ActuatorCurrent.h>

int main(int argc, char **argv)
{

  ros::init(argc, argv, "talker");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<dynamixel_sdk_examples::ActuatorCurrent>("/sync_set_current", 1);

  ros::Rate loop_rate(100);
  double t_0 = ros::Time::now().toSec();
  double t_curr;
  double slope = 1;
  double current_des = 0;
  bool activation = false;
  while (ros::ok())
  {
    if(activation == false)
    {
      activation = true;
      t_0 = ros::Time::now().toSec();
    }


    t_curr = ros::Time::now().toSec() - t_0;
    dynamixel_sdk_examples::ActuatorCurrent msg;

    msg.id1 = 0;
    msg.id2 = 1;

  if(t_curr >= 5)
  {
    current_des = slope*(t_curr-5);
    if(current_des > 150)
    {
        current_des = 150;
    }
    msg.current1 = (int16_t) 0;
    msg.current2 = (int16_t) current_des;

  }
  else
  {
    msg.current1 = (int32_t) 0;
    msg.current2 = (int32_t) 0;
  }
    chatter_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();

  }


  return 0;
}