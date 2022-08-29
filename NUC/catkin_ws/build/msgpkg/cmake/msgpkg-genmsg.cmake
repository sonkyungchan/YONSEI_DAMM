# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "msgpkg: 20 messages, 0 services")

set(MSG_I_FLAGS "-Imsgpkg:/home/nuc/catkin_ws/src/msgpkg/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(msgpkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg" ""
)

get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg" NAME_WE)
add_custom_target(_msgpkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgpkg" "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)
_generate_msg_cpp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(msgpkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(msgpkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(msgpkg_generate_messages msgpkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_cpp _msgpkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgpkg_gencpp)
add_dependencies(msgpkg_gencpp msgpkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgpkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)
_generate_msg_eus(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
)

### Generating Services

### Generating Module File
_generate_module_eus(msgpkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(msgpkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(msgpkg_generate_messages msgpkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_eus _msgpkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgpkg_geneus)
add_dependencies(msgpkg_geneus msgpkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgpkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)
_generate_msg_lisp(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(msgpkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(msgpkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(msgpkg_generate_messages msgpkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_lisp _msgpkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgpkg_genlisp)
add_dependencies(msgpkg_genlisp msgpkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgpkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)
_generate_msg_nodejs(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(msgpkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(msgpkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(msgpkg_generate_messages msgpkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_nodejs _msgpkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgpkg_gennodejs)
add_dependencies(msgpkg_gennodejs msgpkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgpkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)
_generate_msg_py(msgpkg
  "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
)

### Generating Services

### Generating Module File
_generate_module_py(msgpkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(msgpkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(msgpkg_generate_messages msgpkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/magnetic_encoder.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/exo_tor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/Val.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/contact_force.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/load_cell.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/tactile.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fabric.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/realVal3.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgtor2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgmag2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/fsr_sensor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/multi_sensor.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/gripper_dis.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/msgf1.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nuc/catkin_ws/src/msgpkg/msg/angle_finger2.msg" NAME_WE)
add_dependencies(msgpkg_generate_messages_py _msgpkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgpkg_genpy)
add_dependencies(msgpkg_genpy msgpkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgpkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgpkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(msgpkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgpkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(msgpkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgpkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(msgpkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgpkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(msgpkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgpkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(msgpkg_generate_messages_py std_msgs_generate_messages_py)
endif()
