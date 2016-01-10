execute_process(COMMAND "/home/joseph/workspace_catkin/build/python_bindings_tutorial/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/joseph/workspace_catkin/build/python_bindings_tutorial/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
