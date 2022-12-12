// Copyright 2021 ROBOTIS CO., LTD.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/*******************************************************************************
 * This example is written for DYNAMIXEL X(excluding XL-320) and MX(2.0) series with U2D2.
 * For other series, please refer to the product eManual and modify the Control Table addresses and other definitions.
 * To test this example, please follow the commands below.
 *
 * Open terminal #1
 * $ roscore
 *
 * Open terminal #2
 * $ rosrun dynamixel_sdk_examples sync_read_write_node
 *
 * Open terminal #3 (run one of below commands at a time)
 * $ rostopic pub -1 /sync_set_position dynamixel_sdk_examples/SyncSetPosition "{id1: 1, id2: 2, position1: 0, position2: 1000}"
 * $ rostopic pub -1 /sync_set_position dynamixel_sdk_examples/SyncSetPosition "{id1: 1, id2: 2, position1: 1000, position2: 0}"
 * $ rosservice call /sync_get_position "{id1: 1, id2: 2}"
 *
 * Author: Jaehyun Shim
*******************************************************************************/

#include <ros/ros.h>

#include <std_msgs/String.h>
#include <dynamixel_sdk_examples/ActuatorCurrent.h>
#include <dynamixel_sdk_examples/Sensor.h>
#include <dynamixel_sdk/dynamixel_sdk.h>

#include <sensor_msgs/JointState.h>

using namespace dynamixel;

// Control table address
#define ADDR_TORQUE_ENABLE    64
#define ADDR_PRESENT_PWM      124
#define ADDR_PRESENT_CURRENT  126
#define ADDR_PRESENT_VELOCITY 128
#define ADDR_PRESENT_POSITION 132
#define ADDR_PRESENT_TEMPERATURE 146


#define ADDR_GOAL_PWM         100
#define ADDR_GOAL_CURRENT     102

// Protocol version
#define PROTOCOL_VERSION      2.0             // Default Protocol version of DYNAMIXEL X series.

// Default setting
#define DXL1_ID               0               // DXL1 ID
#define DXL2_ID               1               // DXL2 ID
#define BAUDRATE              4500000           // Default Baudrate of DYNAMIXEL X series
#define DEVICE_NAME           "/dev/ttyUSB0"  // [Linux] To find assigned port, use "$ ls /dev/ttyUSB*" command

PortHandler * portHandler = PortHandler::getPortHandler(DEVICE_NAME);
PacketHandler * packetHandler = PacketHandler::getPacketHandler(PROTOCOL_VERSION);

GroupSyncRead groupSyncRead(portHandler, packetHandler, ADDR_PRESENT_POSITION, 4);
GroupSyncRead groupSyncRead2(portHandler, packetHandler, ADDR_PRESENT_VELOCITY, 4);
GroupSyncRead groupSyncRead3(portHandler, packetHandler, ADDR_PRESENT_CURRENT, 2);
GroupSyncRead groupSyncRead4(portHandler, packetHandler, ADDR_PRESENT_PWM, 2);
GroupSyncRead groupSyncRead5(portHandler, packetHandler, ADDR_PRESENT_TEMPERATURE, 1);


GroupSyncWrite groupSyncWrite(portHandler, packetHandler, ADDR_GOAL_CURRENT, 2);

uint32_t position1_meas;
uint32_t position2_meas;

int32_t velocity1_meas;
int32_t velocity2_meas;

int16_t current1_meas;
int16_t current2_meas;

int16_t pwm1_meas;
int16_t pwm2_meas;

int8_t temp1_meas;
int8_t temp2_meas;

void syncSetPwmCallback(const dynamixel_sdk_examples::ActuatorCurrent::ConstPtr & msg)
{
  uint8_t dxl_error = 0;
  int dxl_comm_result = COMM_TX_FAIL;
  int dxl_addparam_result = false;
  uint8_t param_goal_current1[2];
  uint8_t param_goal_current2[2];

  // Position Value of X series is 4 byte data. For AX & MX(1.0) use 2 byte data(uint16_t) for the Position Value.
  int16_t current1 = msg->current1; // Convert int32 -> uint32
  param_goal_current1[0] = DXL_LOBYTE(DXL_LOWORD(current1));
  param_goal_current1[1] = DXL_HIBYTE(DXL_LOWORD(current1));


  int16_t current2 = msg->current2; // Convert int32 -> uint32
  param_goal_current2[0] = DXL_LOBYTE(DXL_LOWORD(current2));
  param_goal_current2[1] = DXL_HIBYTE(DXL_LOWORD(current2));

  dxl_addparam_result = groupSyncWrite.addParam((uint8_t)msg->id1, param_goal_current1);
  if (dxl_addparam_result != true) {
    ROS_ERROR( "Failed to addparam to groupSyncWrite for Dynamixel ID %d", msg->id1);
  }

  dxl_addparam_result = groupSyncWrite.addParam((uint8_t)msg->id2, param_goal_current2);
  if (dxl_addparam_result != true) {
    ROS_ERROR( "Failed to addparam to groupSyncWrite for Dynamixel ID %d", msg->id2);
  }

  dxl_comm_result = groupSyncWrite.txPacket();
  if (dxl_comm_result == COMM_SUCCESS) {
    //ROS_INFO("setPosition : [ID:%d] [POSITION:%d]", msg->id1, msg->position1);
    //ROS_INFO("setPosition : [ID:%d] [POSITION:%d]", msg->id2, msg->position2);
  } else {
    ROS_ERROR("Failed to set position! Result: %d", dxl_comm_result);
  }

  groupSyncWrite.clearParam();
  // Write Goal Position (length : 4 bytes)
  // When writing 2 byte data to AX / MX(1.0), use write2ByteTxRx() instead.
}

int main(int argc, char ** argv)
{  

  uint8_t dxl_error = 0;
  int dxl_comm_result = COMM_TX_FAIL;
  int dxl_addparam_result = false;
  
  if (!portHandler->openPort()) {
    ROS_ERROR("Failed to open the port!");
    return -1;
  }

  if (!portHandler->setBaudRate(BAUDRATE)) {
    ROS_ERROR("Failed to set the baudrate!");
    return -1;
  }

  dxl_comm_result = packetHandler->write1ByteTxRx(
    portHandler, DXL1_ID, ADDR_TORQUE_ENABLE, 1, &dxl_error);
  if (dxl_comm_result != COMM_SUCCESS) {
    ROS_ERROR("Failed to enable torque for Dynamixel ID %d", DXL1_ID);
    return -1;
  }

  dxl_comm_result = packetHandler->write1ByteTxRx(
    portHandler, DXL2_ID, ADDR_TORQUE_ENABLE, 1, &dxl_error);
  if (dxl_comm_result != COMM_SUCCESS) {
    ROS_ERROR("Failed to enable torque for Dynamixel ID %d", DXL2_ID);
    return -1;
  }

  ros::init(argc, argv, "sync_read_write_node");
  ros::NodeHandle nh;
  //ros::ServiceServer sync_get_position_srv = nh.advertiseService("/sync_get_position", syncGetPresentPositionCallback);
  ros::Subscriber sync_set_position_sub = nh.subscribe("/sync_set_current", 1, syncSetPwmCallback);
  ros::Publisher position_pub = nh.advertise<dynamixel_sdk_examples::Sensor>("/meas",1);
  ros::Rate loop_rate(100);

  double t_curr;
  double t_prev;
  double loop_time;

  t_curr = ros::Time::now().toSec();
  t_prev = t_curr;


  while (ros::ok())
  {

    t_curr = ros::Time::now().toSec();
    loop_time = t_curr - t_prev;
    ROS_INFO("Loop Time: %lf",loop_time);
  // Read Present Position (length : 4 bytes) and Convert uint32 -> int32
  // When reading 2 byte data from AX / MX(1.0), use read2ByteTxRx() instead.

// Position Read
  dxl_addparam_result = groupSyncRead.addParam((uint8_t)DXL1_ID);
  if (dxl_addparam_result != true) {
    ROS_ERROR("Failed to addparam to groupSyncRead for Dynamixel ID %d", DXL1_ID);

  }

  dxl_addparam_result = groupSyncRead.addParam((uint8_t)DXL2_ID);
  if (dxl_addparam_result != true) {
    ROS_ERROR("Failed to addparam to groupSyncRead for Dynamixel ID %d", DXL2_ID);
  }

  dxl_comm_result = groupSyncRead.txRxPacket();
  if (dxl_comm_result == COMM_SUCCESS) {
    position1_meas = groupSyncRead.getData((uint8_t)DXL1_ID, ADDR_PRESENT_POSITION, 4);
    position2_meas = groupSyncRead.getData((uint8_t)DXL2_ID, ADDR_PRESENT_POSITION, 4);
    //ROS_INFO("getPosition : [POSITION:%d]", position1_meas);
    //ROS_INFO("getPosition : [POSITION:%d]", position2_meas);
    groupSyncRead.clearParam();
  } else {
    ROS_ERROR("Failed to get position! Result: %d", dxl_comm_result);
    groupSyncRead.clearParam();
  }

// Velocity Read
  dxl_addparam_result = groupSyncRead2.addParam((uint8_t)DXL1_ID);
  if (dxl_addparam_result != true) {
    ROS_ERROR("Failed to addparam to groupSyncRead for Dynamixel ID %d", DXL1_ID);

  }

  dxl_addparam_result = groupSyncRead2.addParam((uint8_t)DXL2_ID);
  if (dxl_addparam_result != true) {
    ROS_ERROR("Failed to addparam to groupSyncRead for Dynamixel ID %d", DXL2_ID);
  }

  dxl_comm_result = groupSyncRead2.txRxPacket();
  if (dxl_comm_result == COMM_SUCCESS) {
    velocity1_meas = groupSyncRead2.getData((uint8_t)DXL1_ID, ADDR_PRESENT_VELOCITY, 4);
    velocity2_meas = groupSyncRead2.getData((uint8_t)DXL2_ID, ADDR_PRESENT_VELOCITY, 4);
    groupSyncRead2.clearParam();
  } else {
    ROS_ERROR("Failed to get velocity! Result: %d", dxl_comm_result);
    groupSyncRead2.clearParam();
  }

// Current Read
  dxl_addparam_result = groupSyncRead3.addParam((uint8_t)DXL1_ID);
  if (dxl_addparam_result != true) {
    ROS_ERROR("Failed to addparam to groupSyncRead for Dynamixel ID %d", DXL1_ID);

  }

  dxl_addparam_result = groupSyncRead3.addParam((uint8_t)DXL2_ID);
  if (dxl_addparam_result != true) {
    ROS_ERROR("Failed to addparam to groupSyncRead for Dynamixel ID %d", DXL2_ID);
  }

    dxl_comm_result = groupSyncRead3.txRxPacket();
  if (dxl_comm_result == COMM_SUCCESS) {
    current1_meas = groupSyncRead3.getData((uint8_t)DXL1_ID, ADDR_PRESENT_CURRENT, 2);
    current2_meas = groupSyncRead3.getData((uint8_t)DXL2_ID, ADDR_PRESENT_CURRENT, 2);
      groupSyncRead3.clearParam();
  } else {
    ROS_ERROR("Failed to get current! Result: %d", dxl_comm_result);
    groupSyncRead3.clearParam();
  }

// PWM Read

  dxl_addparam_result = groupSyncRead4.addParam((uint8_t)DXL1_ID);
  if (dxl_addparam_result != true) {
    ROS_ERROR("Failed to addparam to groupSyncRead for Dynamixel ID %d", DXL1_ID);

  }

  dxl_addparam_result = groupSyncRead4.addParam((uint8_t)DXL2_ID);
  if (dxl_addparam_result != true) {
    ROS_ERROR("Failed to addparam to groupSyncRead for Dynamixel ID %d", DXL2_ID);
  }

    dxl_comm_result = groupSyncRead4.txRxPacket();
  if (dxl_comm_result == COMM_SUCCESS) {
    pwm1_meas = groupSyncRead4.getData((uint8_t)DXL1_ID, ADDR_PRESENT_PWM, 2);
    pwm2_meas = groupSyncRead4.getData((uint8_t)DXL2_ID, ADDR_PRESENT_PWM, 2);
      groupSyncRead4.clearParam();
  } else {
    ROS_ERROR("Failed to get current! Result: %d", dxl_comm_result);
    groupSyncRead4.clearParam();
  }

  // Tmeperature Read

  dxl_addparam_result = groupSyncRead5.addParam((uint8_t)DXL1_ID);
  if (dxl_addparam_result != true) {
    ROS_ERROR("Failed to addparam to groupSyncRead for Dynamixel ID %d", DXL1_ID);

  }

  dxl_addparam_result = groupSyncRead5.addParam((uint8_t)DXL2_ID);
  if (dxl_addparam_result != true) {
    ROS_ERROR("Failed to addparam to groupSyncRead for Dynamixel ID %d", DXL2_ID);
  }

    dxl_comm_result = groupSyncRead5.txRxPacket();
  if (dxl_comm_result == COMM_SUCCESS) {
    temp1_meas = groupSyncRead5.getData((uint8_t)DXL1_ID, ADDR_PRESENT_TEMPERATURE, 1);
    temp2_meas = groupSyncRead5.getData((uint8_t)DXL2_ID, ADDR_PRESENT_TEMPERATURE, 1);
      groupSyncRead5.clearParam();
  } else {
    ROS_ERROR("Failed to get current! Result: %d", dxl_comm_result);
    groupSyncRead5.clearParam();
  }

    dynamixel_sdk_examples::Sensor msg;

    msg.position1 = position1_meas;
    msg.position2 = position2_meas;
    
    msg.velocity1 = velocity1_meas;
    msg.velocity2 = velocity2_meas;
    
    msg.current1 = current1_meas;
    msg.current2 = current2_meas;
    
    msg.pwm1 = pwm1_meas;
    msg.pwm2 = pwm2_meas;

    msg.Temperature1 = temp1_meas;
    msg.Temperature2 = temp2_meas;
    
    position_pub.publish(msg);

    t_prev = t_curr;
    ros::spinOnce();
    loop_rate.sleep();
  }
  


  portHandler->closePort();
  return 0;
}
