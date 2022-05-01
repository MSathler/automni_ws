# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "automni_resolution: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iautomni_resolution:/home/itv/automni_ws/devel/share/automni_resolution/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(automni_resolution_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg" NAME_WE)
add_custom_target(_automni_resolution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "automni_resolution" "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg" "std_msgs/Header:actionlib_msgs/GoalID:automni_resolution/mazeActionResult:automni_resolution/mazeActionGoal:automni_resolution/mazeActionActionResult:automni_resolution/mazeActionActionFeedback:actionlib_msgs/GoalStatus:automni_resolution/mazeActionActionGoal:automni_resolution/mazeActionFeedback"
)

get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg" NAME_WE)
add_custom_target(_automni_resolution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "automni_resolution" "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:automni_resolution/mazeActionGoal"
)

get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg" NAME_WE)
add_custom_target(_automni_resolution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "automni_resolution" "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg" "std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:automni_resolution/mazeActionResult"
)

get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg" NAME_WE)
add_custom_target(_automni_resolution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "automni_resolution" "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg" "std_msgs/Header:automni_resolution/mazeActionFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg" NAME_WE)
add_custom_target(_automni_resolution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "automni_resolution" "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg" ""
)

get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg" NAME_WE)
add_custom_target(_automni_resolution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "automni_resolution" "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg" ""
)

get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg" NAME_WE)
add_custom_target(_automni_resolution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "automni_resolution" "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automni_resolution
)
_generate_msg_cpp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automni_resolution
)
_generate_msg_cpp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automni_resolution
)
_generate_msg_cpp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automni_resolution
)
_generate_msg_cpp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automni_resolution
)
_generate_msg_cpp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automni_resolution
)
_generate_msg_cpp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automni_resolution
)

### Generating Services

### Generating Module File
_generate_module_cpp(automni_resolution
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automni_resolution
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(automni_resolution_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(automni_resolution_generate_messages automni_resolution_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_cpp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_cpp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_cpp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_cpp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_cpp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_cpp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_cpp _automni_resolution_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(automni_resolution_gencpp)
add_dependencies(automni_resolution_gencpp automni_resolution_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS automni_resolution_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/automni_resolution
)
_generate_msg_eus(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/automni_resolution
)
_generate_msg_eus(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/automni_resolution
)
_generate_msg_eus(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/automni_resolution
)
_generate_msg_eus(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/automni_resolution
)
_generate_msg_eus(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/automni_resolution
)
_generate_msg_eus(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/automni_resolution
)

### Generating Services

### Generating Module File
_generate_module_eus(automni_resolution
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/automni_resolution
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(automni_resolution_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(automni_resolution_generate_messages automni_resolution_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_eus _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_eus _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_eus _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_eus _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_eus _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_eus _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_eus _automni_resolution_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(automni_resolution_geneus)
add_dependencies(automni_resolution_geneus automni_resolution_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS automni_resolution_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automni_resolution
)
_generate_msg_lisp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automni_resolution
)
_generate_msg_lisp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automni_resolution
)
_generate_msg_lisp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automni_resolution
)
_generate_msg_lisp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automni_resolution
)
_generate_msg_lisp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automni_resolution
)
_generate_msg_lisp(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automni_resolution
)

### Generating Services

### Generating Module File
_generate_module_lisp(automni_resolution
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automni_resolution
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(automni_resolution_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(automni_resolution_generate_messages automni_resolution_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_lisp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_lisp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_lisp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_lisp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_lisp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_lisp _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_lisp _automni_resolution_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(automni_resolution_genlisp)
add_dependencies(automni_resolution_genlisp automni_resolution_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS automni_resolution_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/automni_resolution
)
_generate_msg_nodejs(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/automni_resolution
)
_generate_msg_nodejs(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/automni_resolution
)
_generate_msg_nodejs(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/automni_resolution
)
_generate_msg_nodejs(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/automni_resolution
)
_generate_msg_nodejs(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/automni_resolution
)
_generate_msg_nodejs(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/automni_resolution
)

### Generating Services

### Generating Module File
_generate_module_nodejs(automni_resolution
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/automni_resolution
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(automni_resolution_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(automni_resolution_generate_messages automni_resolution_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_nodejs _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_nodejs _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_nodejs _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_nodejs _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_nodejs _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_nodejs _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_nodejs _automni_resolution_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(automni_resolution_gennodejs)
add_dependencies(automni_resolution_gennodejs automni_resolution_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS automni_resolution_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution
)
_generate_msg_py(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution
)
_generate_msg_py(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution
)
_generate_msg_py(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution
)
_generate_msg_py(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution
)
_generate_msg_py(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution
)
_generate_msg_py(automni_resolution
  "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution
)

### Generating Services

### Generating Module File
_generate_module_py(automni_resolution
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(automni_resolution_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(automni_resolution_generate_messages automni_resolution_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionAction.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_py _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionGoal.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_py _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionResult.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_py _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionActionFeedback.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_py _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionGoal.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_py _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionResult.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_py _automni_resolution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itv/automni_ws/devel/share/automni_resolution/msg/mazeActionFeedback.msg" NAME_WE)
add_dependencies(automni_resolution_generate_messages_py _automni_resolution_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(automni_resolution_genpy)
add_dependencies(automni_resolution_genpy automni_resolution_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS automni_resolution_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automni_resolution)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automni_resolution
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(automni_resolution_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(automni_resolution_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/automni_resolution)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/automni_resolution
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(automni_resolution_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(automni_resolution_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automni_resolution)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automni_resolution
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(automni_resolution_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(automni_resolution_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/automni_resolution)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/automni_resolution
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(automni_resolution_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(automni_resolution_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automni_resolution
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(automni_resolution_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(automni_resolution_generate_messages_py std_msgs_generate_messages_py)
endif()
