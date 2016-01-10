# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "custom_data: 2 messages, 0 services")

set(MSG_I_FLAGS "-Icustom_data:/home/joseph/workspace_catkin/src/custom_data/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(custom_data_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg" NAME_WE)
add_custom_target(_custom_data_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "custom_data" "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg" ""
)

get_filename_component(_filename "/home/joseph/workspace_catkin/src/custom_data/msg/ClientArray.msg" NAME_WE)
add_custom_target(_custom_data_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "custom_data" "/home/joseph/workspace_catkin/src/custom_data/msg/ClientArray.msg" "custom_data/Client"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(custom_data
  "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_data
)
_generate_msg_cpp(custom_data
  "/home/joseph/workspace_catkin/src/custom_data/msg/ClientArray.msg"
  "${MSG_I_FLAGS}"
  "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_data
)

### Generating Services

### Generating Module File
_generate_module_cpp(custom_data
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_data
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(custom_data_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(custom_data_generate_messages custom_data_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg" NAME_WE)
add_dependencies(custom_data_generate_messages_cpp _custom_data_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joseph/workspace_catkin/src/custom_data/msg/ClientArray.msg" NAME_WE)
add_dependencies(custom_data_generate_messages_cpp _custom_data_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_data_gencpp)
add_dependencies(custom_data_gencpp custom_data_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_data_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(custom_data
  "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_data
)
_generate_msg_lisp(custom_data
  "/home/joseph/workspace_catkin/src/custom_data/msg/ClientArray.msg"
  "${MSG_I_FLAGS}"
  "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_data
)

### Generating Services

### Generating Module File
_generate_module_lisp(custom_data
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_data
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(custom_data_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(custom_data_generate_messages custom_data_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg" NAME_WE)
add_dependencies(custom_data_generate_messages_lisp _custom_data_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joseph/workspace_catkin/src/custom_data/msg/ClientArray.msg" NAME_WE)
add_dependencies(custom_data_generate_messages_lisp _custom_data_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_data_genlisp)
add_dependencies(custom_data_genlisp custom_data_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_data_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(custom_data
  "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_data
)
_generate_msg_py(custom_data
  "/home/joseph/workspace_catkin/src/custom_data/msg/ClientArray.msg"
  "${MSG_I_FLAGS}"
  "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_data
)

### Generating Services

### Generating Module File
_generate_module_py(custom_data
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_data
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(custom_data_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(custom_data_generate_messages custom_data_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joseph/workspace_catkin/src/custom_data/msg/Client.msg" NAME_WE)
add_dependencies(custom_data_generate_messages_py _custom_data_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joseph/workspace_catkin/src/custom_data/msg/ClientArray.msg" NAME_WE)
add_dependencies(custom_data_generate_messages_py _custom_data_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(custom_data_genpy)
add_dependencies(custom_data_genpy custom_data_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS custom_data_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_data)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/custom_data
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(custom_data_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_data)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/custom_data
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(custom_data_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_data)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_data\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/custom_data
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(custom_data_generate_messages_py std_msgs_generate_messages_py)
