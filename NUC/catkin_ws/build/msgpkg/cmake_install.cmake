# Install script for directory: /home/nuc/catkin_ws/src/msgpkg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nuc/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgpkg/msg" TYPE FILE FILES
    "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg"
    "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgpkg/cmake" TYPE FILE FILES "/home/nuc/catkin_ws/build/msgpkg/catkin_generated/installspace/msgpkg-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nuc/catkin_ws/devel/include/msgpkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nuc/catkin_ws/devel/share/roseus/ros/msgpkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nuc/catkin_ws/devel/share/common-lisp/ros/msgpkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nuc/catkin_ws/devel/share/gennodejs/ros/msgpkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/nuc/catkin_ws/devel/lib/python2.7/dist-packages/msgpkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nuc/catkin_ws/devel/lib/python2.7/dist-packages/msgpkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nuc/catkin_ws/build/msgpkg/catkin_generated/installspace/msgpkg.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgpkg/cmake" TYPE FILE FILES "/home/nuc/catkin_ws/build/msgpkg/catkin_generated/installspace/msgpkg-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgpkg/cmake" TYPE FILE FILES
    "/home/nuc/catkin_ws/build/msgpkg/catkin_generated/installspace/msgpkgConfig.cmake"
    "/home/nuc/catkin_ws/build/msgpkg/catkin_generated/installspace/msgpkgConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgpkg" TYPE FILE FILES "/home/nuc/catkin_ws/src/msgpkg/package.xml")
endif()

