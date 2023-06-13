# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/asloan/fprime-tutorial-hello-world/MyProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native

# Utility rule file for MyComponents_HelloWorld_impl.

# Include any custom commands dependencies for this target.
include MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl.dir/compiler_depend.make

# Include the progress variables for this target.
include MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl.dir/progress.make

MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl: MyComponents/HelloWorld/HelloWorldComponentAi.xml
MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorldComponentImpl.hpp-template
MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorldComponentImpl.cpp-template

/Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorldComponentImpl.hpp-template: MyComponents/HelloWorld/HelloWorldComponentAi.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorldComponentImpl.hpp-template, /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorldComponentImpl.cpp-template"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/MyComponents/HelloWorld && /Applications/CMake.app/Contents/bin/cmake -E env PYTHONPATH=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/src:/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/utils BUILD_ROOT=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime:/Users/asloan/fprime-tutorial-hello-world/MyProject:/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native:/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/python3 /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/bin/codegen.py -p /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld --build_root -t /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/MyComponents/HelloWorld/HelloWorldComponentAi.xml

/Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorldComponentImpl.cpp-template: /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorldComponentImpl.hpp-template
	@$(CMAKE_COMMAND) -E touch_nocreate /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorldComponentImpl.cpp-template

MyComponents/HelloWorld/HelloWorldComponentAi.xml: /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorld.fpp
MyComponents/HelloWorld/HelloWorldComponentAi.xml: lib/Darwin/libFw_Cmd.a
MyComponents/HelloWorld/HelloWorldComponentAi.xml: lib/Darwin/libFw_Log.a
MyComponents/HelloWorld/HelloWorldComponentAi.xml: lib/Darwin/libFw_Prm.a
MyComponents/HelloWorld/HelloWorldComponentAi.xml: lib/Darwin/libFw_Time.a
MyComponents/HelloWorld/HelloWorldComponentAi.xml: lib/Darwin/libFw_Tlm.a
MyComponents/HelloWorld/HelloWorldComponentAi.xml: lib/Darwin/libFw_CompQueued.a
MyComponents/HelloWorld/HelloWorldComponentAi.xml: lib/Darwin/libOs.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating HelloWorldComponentAi.xml"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/MyComponents/HelloWorld && /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/fpp-to-xml -d /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/MyComponents/HelloWorld -i /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Cmd/Cmd.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Log/Log.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Prm/Prm.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Time/Time.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Tlm/Tlm.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/config/FpConfig.fpp /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorld.fpp -p /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime,/Users/asloan/fprime-tutorial-hello-world/MyProject

MyComponents_HelloWorld_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorldComponentImpl.cpp-template
MyComponents_HelloWorld_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld/HelloWorldComponentImpl.hpp-template
MyComponents_HelloWorld_impl: MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl
MyComponents_HelloWorld_impl: MyComponents/HelloWorld/HelloWorldComponentAi.xml
MyComponents_HelloWorld_impl: MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl.dir/build.make
.PHONY : MyComponents_HelloWorld_impl

# Rule to build all files generated by this target.
MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl.dir/build: MyComponents_HelloWorld_impl
.PHONY : MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl.dir/build

MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl.dir/clean:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/MyComponents/HelloWorld && $(CMAKE_COMMAND) -P CMakeFiles/MyComponents_HelloWorld_impl.dir/cmake_clean.cmake
.PHONY : MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl.dir/clean

MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl.dir/depend:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/asloan/fprime-tutorial-hello-world/MyProject /Users/asloan/fprime-tutorial-hello-world/MyProject/MyComponents/HelloWorld /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/MyComponents/HelloWorld /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : MyComponents/HelloWorld/CMakeFiles/MyComponents_HelloWorld_impl.dir/depend

