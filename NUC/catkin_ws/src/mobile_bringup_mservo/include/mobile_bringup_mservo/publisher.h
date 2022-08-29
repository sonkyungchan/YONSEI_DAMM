#ifndef PUBLISHER_H
#define PUBLISHER_H

#include <ros/ros.h>

#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Time.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>

#include <math.h>

#define PI 3.141592653589793238462643383279502884L

int rate;

std::string topic_name;

tf::StampedTransform transform;

nav_msgs::Odometry odom;

ros::Time currentTime;

#endif
