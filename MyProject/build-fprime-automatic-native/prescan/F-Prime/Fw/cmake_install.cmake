# Install script for directory: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/asloan/fprime-tutorial-hello-world/MyProject/build-artifacts")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Buffer/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Com/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Cmd/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Log/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Logger/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Time/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Tlm/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Prm/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Cfg/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Comp/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Obj/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Port/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Ports/SuccessCondition/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Types/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/FilePacket/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/SerializableFile/cmake_install.cmake")
  include("/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Fw/Test/cmake_install.cmake")

endif()

