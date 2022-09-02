cmake_minimum_required(VERSION 2.8.3)
project(dualarm_sensor_msgs)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  message_generation
  roscpp
  std_msgs
)

  add_message_files(
    FILES
    as5047Msg.msg
    vl53l1xMsg.msg
  )


## Generate added messages and services with any dependencies listed here
  generate_messages(
    DEPENDENCIES
     std_msgs
  )


catkin_package(
   CATKIN_DEPENDS
    roscpp
    std_msgs
    message_runtime
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

