# Gripper control

# To do list

# 1. Add Message in DynamixelSDK

path directory : DynamixelSDK/ros/dynamixel_sdk_examples/msg

msg for actuator name: ActuatorPwm.msg

Data field:

uint8 id1

uint8 id2

int16 pwm1

int16 pwm2

msg for sensing name: Sensor.msg

int32 position1

int32 position2

int32 velocity1

int32 velocity2

int16 current1

int16 current2

int16 pwm1

int16 pwm2

int16 Temperature1

int16 Temperature2

In CmakeLists.txt file,

add_message_files(

  Files
    
    ActuatorPwm.msg
    
    Sensor.msg
    
    SetPosition.msg
    
    SyncSetPosition.msg
    
    BulkSetItem.msg
)

# 2. Copy the pkg, paste at catkin_ws/src/, and compile it.

$ cd ~/catkin_ws

$ catkin_make

# 3. Execute dynamixel

$ roscore

$ rosrun gripper_control pwm_control_node

# 4. Topic name

Actuator topic name: /sync_set_pwm

Sensor topic name: /meas

