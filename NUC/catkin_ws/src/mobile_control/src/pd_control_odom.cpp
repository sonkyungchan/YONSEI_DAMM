#include <mobile_control/pd_control_odom_feedback.hpp>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "pd_controller");

    pd_control pd_controller;

    pd_controller.init_Variables();
    pd_controller.subscriber_set();
    pd_controller.publisher_set();


    bool is_init_var = false;
    ros::Rate loop_rate(200);

    while (ros::ok())
    {
        pd_controller.cmd_vel_publish();
        ros::spinOnce();
        loop_rate.sleep();
    }
        
}
