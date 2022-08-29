#include <mobile_bringup_mservo/bringup_publisher_mservo.hpp>

using Eigen::Vector3d;
using Eigen::VectorXd;

using std::cout;
using std::endl;


int main(int argc, char **argv)
{

  ros::init(argc, argv, "bring_publisher");
  
  encoder_attitude estimator;

  bool odom_init = false;

  // Relative translation info
  Vector3d base_footprint_to_base_link_;
  Vector3d base_link_to_Velodyne1_;
  Vector3d base_link_to_Velodyne2_;
  Vector3d base_link_to_base_arm_;

  VectorXd p_q_b_ = VectorXd(4);
  VectorXd p_q_b0_ = VectorXd(4);
  VectorXd b_q_p_ = VectorXd(4);

  estimator.EncoderSubscriberSetting();
  estimator.InitiateVariables();

  tf::TransformBroadcaster broadcaster;

  rate = 10000;

  ros::Rate loop_rate(rate);

  while(ros::ok())
  {
    estimator.RelativeInfo();
    if(estimator.is_subscription == true) // If subscription occurs --> true!
    {
      base_footprint_to_base_link_ = estimator.base_footprint_to_base_link;
      base_link_to_Velodyne1_ = estimator.base_link_to_Velodyne1;
      base_link_to_Velodyne2_ = estimator.base_link_to_Velodyne2;
      base_link_to_base_arm_ = estimator.base_link_to_base_arm;
      p_q_b_ = estimator.p_q_b;
      b_q_p_ = estimator.b_q_p;

      ros::Time currentTime = ros::Time::now();

      broadcaster.sendTransform(
        tf::StampedTransform(
    	    tf::Transform(tf::Quaternion(q_odom(0),q_odom(1),q_odom(2),q_odom(3)), 
          tf::Vector3(p_odom(0),p_odom(1),p_odom(2))),
    	    currentTime,"odom", "base_footprint"
        )
      );

      broadcaster.sendTransform(
        tf::StampedTransform(
    	    tf::Transform(tf::Quaternion(p_q_b_(0),p_q_b_(1),p_q_b_(2),p_q_b_(3)), 
          tf::Vector3(base_footprint_to_base_link_(0),base_footprint_to_base_link_(1),base_footprint_to_base_link_(2))),
    	    currentTime,"base_footprint", "base_link"
        )
      );

      broadcaster.sendTransform(
        tf::StampedTransform(
    	    tf::Transform(tf::Quaternion(0, 0, 0, 1), 
          tf::Vector3(-0.281, -0.215, -0.020)),
    	    currentTime,"base_link", "br_wheel_link"
        )
      );

      broadcaster.sendTransform(
        tf::StampedTransform(
    	    tf::Transform(tf::Quaternion(0, 0, 0, 1), 
          tf::Vector3(-0.281, 0.215, -0.020)),
    	    currentTime,"base_link", "bl_wheel_link"
        )
      );

      broadcaster.sendTransform(
        tf::StampedTransform(
    	    tf::Transform(tf::Quaternion(0, 0, 0, 1), 
          tf::Vector3(0.281, -0.215, -0.020)),
    	    currentTime,"base_link", "fr_wheel_link"
        )
      );

      broadcaster.sendTransform(
        tf::StampedTransform(
    	    tf::Transform(tf::Quaternion(0, 0, 0, 1), 
          tf::Vector3(0.281, 0.215, -0.020)),
    	    currentTime,"base_link", "fl_wheel_link"
        )
      );

      broadcaster.sendTransform(
        tf::StampedTransform(
    	    tf::Transform(tf::Quaternion(0, 0, 0, 1), 
          tf::Vector3(0.0, 0.0, 0.0)),
    	    currentTime,"base_link", "imu_link"
        )
      );

      broadcaster.sendTransform(
        tf::StampedTransform(
    	    tf::Transform(tf::Quaternion(0,0,sin(M_PI_4/2.0),cos(M_PI_4/2.0)), 
          tf::Vector3(base_link_to_Velodyne1_(0),base_link_to_Velodyne1_(1),base_link_to_Velodyne1_(2))),
    	    currentTime,"base_link", "velodyne"));

      broadcaster.sendTransform(
        tf::StampedTransform(
          tf::Transform(tf::Quaternion(0.0,0.0,0.0,1.0),
          tf::Vector3(base_link_to_base_arm_(0),base_link_to_base_arm_(1),base_link_to_base_arm_(2))),
          currentTime,"base_link","base_arm"
        )
      );

    }
      ros::spinOnce();
      loop_rate.sleep();

  } //End while (ros::ok())

  return 0;

}
