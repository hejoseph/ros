# Install script for directory: /home/joseph/workspace_catkin/src/learning_actionlib

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/joseph/workspace_catkin/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_actionlib/action" TYPE FILE FILES
    "/home/joseph/workspace_catkin/src/learning_actionlib/action/Fibonacci.action"
    "/home/joseph/workspace_catkin/src/learning_actionlib/action/Averaging.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_actionlib/msg" TYPE FILE FILES
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/FibonacciAction.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/FibonacciActionGoal.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/FibonacciActionResult.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/FibonacciActionFeedback.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/FibonacciGoal.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/FibonacciResult.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/FibonacciFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_actionlib/msg" TYPE FILE FILES
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/AveragingAction.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/AveragingActionGoal.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/AveragingActionResult.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/AveragingActionFeedback.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/AveragingGoal.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/AveragingResult.msg"
    "/home/joseph/workspace_catkin/devel/share/learning_actionlib/msg/AveragingFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_actionlib/cmake" TYPE FILE FILES "/home/joseph/workspace_catkin/build/learning_actionlib/catkin_generated/installspace/learning_actionlib-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/joseph/workspace_catkin/devel/include/learning_actionlib")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/joseph/workspace_catkin/devel/share/common-lisp/ros/learning_actionlib")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/joseph/workspace_catkin/devel/lib/python2.7/dist-packages/learning_actionlib")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/joseph/workspace_catkin/devel/lib/python2.7/dist-packages/learning_actionlib")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/joseph/workspace_catkin/build/learning_actionlib/catkin_generated/installspace/learning_actionlib.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_actionlib/cmake" TYPE FILE FILES "/home/joseph/workspace_catkin/build/learning_actionlib/catkin_generated/installspace/learning_actionlib-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_actionlib/cmake" TYPE FILE FILES
    "/home/joseph/workspace_catkin/build/learning_actionlib/catkin_generated/installspace/learning_actionlibConfig.cmake"
    "/home/joseph/workspace_catkin/build/learning_actionlib/catkin_generated/installspace/learning_actionlibConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_actionlib" TYPE FILE FILES "/home/joseph/workspace_catkin/src/learning_actionlib/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
