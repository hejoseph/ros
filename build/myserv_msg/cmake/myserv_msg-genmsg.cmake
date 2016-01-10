# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "myserv_msg: 1 messages, 1 services")

set(MSG_I_FLAGS "-Imyserv_msg:/home/joseph/workspace_catkin/src/myserv_msg/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(myserv_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/joseph/workspace_catkin/src/myserv_msg/msg/num.msg" NAME_WE)
add_custom_target(_myserv_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "myserv_msg" "/home/joseph/workspace_catkin/src/myserv_msg/msg/num.msg" ""
)

get_filename_component(_filename "/home/joseph/workspace_catkin/src/myserv_msg/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_myserv_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "myserv_msg" "/home/joseph/workspace_catkin/src/myserv_msg/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(myserv_msg
  "/home/joseph/workspace_catkin/src/myserv_msg/msg/num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myserv_msg
)

### Generating Services
_generate_srv_cpp(myserv_msg
  "/home/joseph/workspace_catkin/src/myserv_msg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myserv_msg
)

### Generating Module File
_generate_module_cpp(myserv_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myserv_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(myserv_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(myserv_msg_generate_messages myserv_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joseph/workspace_catkin/src/myserv_msg/msg/num.msg" NAME_WE)
add_dependencies(myserv_msg_generate_messages_cpp _myserv_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joseph/workspace_catkin/src/myserv_msg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(myserv_msg_generate_messages_cpp _myserv_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myserv_msg_gencpp)
add_dependencies(myserv_msg_gencpp myserv_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myserv_msg_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(myserv_msg
  "/home/joseph/workspace_catkin/src/myserv_msg/msg/num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myserv_msg
)

### Generating Services
_generate_srv_lisp(myserv_msg
  "/home/joseph/workspace_catkin/src/myserv_msg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myserv_msg
)

### Generating Module File
_generate_module_lisp(myserv_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myserv_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(myserv_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(myserv_msg_generate_messages myserv_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joseph/workspace_catkin/src/myserv_msg/msg/num.msg" NAME_WE)
add_dependencies(myserv_msg_generate_messages_lisp _myserv_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joseph/workspace_catkin/src/myserv_msg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(myserv_msg_generate_messages_lisp _myserv_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myserv_msg_genlisp)
add_dependencies(myserv_msg_genlisp myserv_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myserv_msg_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(myserv_msg
  "/home/joseph/workspace_catkin/src/myserv_msg/msg/num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserv_msg
)

### Generating Services
_generate_srv_py(myserv_msg
  "/home/joseph/workspace_catkin/src/myserv_msg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserv_msg
)

### Generating Module File
_generate_module_py(myserv_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserv_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(myserv_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(myserv_msg_generate_messages myserv_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joseph/workspace_catkin/src/myserv_msg/msg/num.msg" NAME_WE)
add_dependencies(myserv_msg_generate_messages_py _myserv_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joseph/workspace_catkin/src/myserv_msg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(myserv_msg_generate_messages_py _myserv_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myserv_msg_genpy)
add_dependencies(myserv_msg_genpy myserv_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myserv_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myserv_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myserv_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(myserv_msg_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myserv_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myserv_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(myserv_msg_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserv_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserv_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myserv_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(myserv_msg_generate_messages_py std_msgs_generate_messages_py)
