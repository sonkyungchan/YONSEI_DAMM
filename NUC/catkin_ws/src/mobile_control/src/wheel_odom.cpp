#include <mobile_control/wheel_odometry.hpp>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "wheel_odom");
    WheelOdometry wheel_odom;

    bool is_init_var = false;

    wheel_odom.publisher_set();
    wheel_odom.subscriber_set();
    
    if(is_init_var == false){
      wheel_odom.initiate_variables();
      is_init_var = true;
    }
    
    ros::Rate loop_rate(200);

    while (ros::ok())
    {
        wheel_odom.velocity_pose_publish();
        ros::spinOnce();
        loop_rate.sleep();
    }
    
}
