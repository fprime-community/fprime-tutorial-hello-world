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

# Utility rule file for Drv_LinuxI2cDriver_impl.

# Include any custom commands dependencies for this target.
include F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl.dir/progress.make

F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl: F-Prime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentAi.xml
F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentImpl.hpp-template
F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentImpl.cpp-template

F-Prime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentAi.xml: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriver.fpp
F-Prime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentAi.xml: lib/Darwin/libDrv_I2cDriverPorts.a
F-Prime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentAi.xml: lib/Darwin/libOs.a
F-Prime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentAi.xml: lib/Darwin/libFw_Comp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating LinuxI2cDriverComponentAi.xml"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/LinuxI2cDriver && /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/fpp-to-xml -d /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/LinuxI2cDriver -i /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/I2cDriverPorts/I2cDriverPorts.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Buffer/Buffer.fpp /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriver.fpp -p /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime,/Users/asloan/fprime-tutorial-hello-world/MyProject

/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentImpl.hpp-template: F-Prime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentAi.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentImpl.hpp-template, /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentImpl.cpp-template"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/LinuxI2cDriver && /Applications/CMake.app/Contents/bin/cmake -E env PYTHONPATH=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/src:/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/utils BUILD_ROOT=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime:/Users/asloan/fprime-tutorial-hello-world/MyProject:/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native:/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/python3 /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/bin/codegen.py -p /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver --build_root -t /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentAi.xml

/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentImpl.cpp-template: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentImpl.hpp-template
	@$(CMAKE_COMMAND) -E touch_nocreate /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentImpl.cpp-template

Drv_LinuxI2cDriver_impl: F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl
Drv_LinuxI2cDriver_impl: F-Prime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentAi.xml
Drv_LinuxI2cDriver_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentImpl.cpp-template
Drv_LinuxI2cDriver_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver/LinuxI2cDriverComponentImpl.hpp-template
Drv_LinuxI2cDriver_impl: F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl.dir/build.make
.PHONY : Drv_LinuxI2cDriver_impl

# Rule to build all files generated by this target.
F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl.dir/build: Drv_LinuxI2cDriver_impl
.PHONY : F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl.dir/build

F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl.dir/clean:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/LinuxI2cDriver && $(CMAKE_COMMAND) -P CMakeFiles/Drv_LinuxI2cDriver_impl.dir/cmake_clean.cmake
.PHONY : F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl.dir/clean

F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl.dir/depend:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/asloan/fprime-tutorial-hello-world/MyProject /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/LinuxI2cDriver /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/LinuxI2cDriver /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Drv/LinuxI2cDriver/CMakeFiles/Drv_LinuxI2cDriver_impl.dir/depend

