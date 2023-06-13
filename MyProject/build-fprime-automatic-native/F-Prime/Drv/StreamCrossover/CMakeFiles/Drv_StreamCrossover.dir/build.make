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

# Include any dependencies generated for this target.
include F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/progress.make

# Include the compile flags for this target's objects.
include F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/flags.make

F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.hpp: F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAi.xml
F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.hpp: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/config/AcConstants.ini
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating StreamCrossoverComponentAc.hpp, StreamCrossoverComponentAc.cpp"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && /Applications/CMake.app/Contents/bin/cmake -E env PYTHONPATH=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/src:/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/utils BUILD_ROOT=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime:/Users/asloan/fprime-tutorial-hello-world/MyProject:/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native:/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/python3 /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/bin/codegen.py -p /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover --build_root /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAi.xml

F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.cpp: F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.hpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.cpp

F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAi.xml: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/StreamCrossover/StreamCrossover.fpp
F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAi.xml: lib/Darwin/libDrv_ByteStreamDriverModel.a
F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAi.xml: lib/Darwin/libFw_Log.a
F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAi.xml: lib/Darwin/libFw_Time.a
F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAi.xml: lib/Darwin/libFw_Comp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating StreamCrossoverComponentAi.xml"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/fpp-to-xml -d /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover -i /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/ByteStreamDriverModel/ByteStreamDriverModel.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Buffer/Buffer.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Log/Log.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Time/Time.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/config/FpConfig.fpp /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/StreamCrossover/StreamCrossover.fpp -p /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime,/Users/asloan/fprime-tutorial-hello-world/MyProject

F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.o: F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/flags.make
F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.o: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/StreamCrossover/StreamCrossover.cpp
F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.o: F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.o"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xa0103272 -DASSERT_RELATIVE_PATH='"Drv/StreamCrossover/StreamCrossover.cpp"' -MD -MT F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.o -MF CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.o.d -o CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.o -c /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/StreamCrossover/StreamCrossover.cpp

F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.i"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xa0103272 -DASSERT_RELATIVE_PATH='"Drv/StreamCrossover/StreamCrossover.cpp"' -E /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/StreamCrossover/StreamCrossover.cpp > CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.i

F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.s"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xa0103272 -DASSERT_RELATIVE_PATH='"Drv/StreamCrossover/StreamCrossover.cpp"' -S /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/StreamCrossover/StreamCrossover.cpp -o CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.s

F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.o: F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/flags.make
F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.o: F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.cpp
F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.o: F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.o"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x786c066b -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.cpp"' -MD -MT F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.o -MF CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.o.d -o CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.o -c /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.cpp

F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.i"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x786c066b -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.cpp"' -E /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.cpp > CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.i

F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.s"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x786c066b -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.cpp"' -S /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.cpp -o CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.s

# Object files for target Drv_StreamCrossover
Drv_StreamCrossover_OBJECTS = \
"CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.o" \
"CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.o"

# External object files for target Drv_StreamCrossover
Drv_StreamCrossover_EXTERNAL_OBJECTS =

lib/Darwin/libDrv_StreamCrossover.a: F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossover.cpp.o
lib/Darwin/libDrv_StreamCrossover.a: F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/StreamCrossoverComponentAc.cpp.o
lib/Darwin/libDrv_StreamCrossover.a: F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/build.make
lib/Darwin/libDrv_StreamCrossover.a: F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../../../lib/Darwin/libDrv_StreamCrossover.a"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && $(CMAKE_COMMAND) -P CMakeFiles/Drv_StreamCrossover.dir/cmake_clean_target.cmake
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Drv_StreamCrossover.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/build: lib/Darwin/libDrv_StreamCrossover.a
.PHONY : F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/build

F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/clean:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover && $(CMAKE_COMMAND) -P CMakeFiles/Drv_StreamCrossover.dir/cmake_clean.cmake
.PHONY : F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/clean

F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/depend: F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.cpp
F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/depend: F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAc.hpp
F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/depend: F-Prime/Drv/StreamCrossover/StreamCrossoverComponentAi.xml
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/asloan/fprime-tutorial-hello-world/MyProject /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Drv/StreamCrossover /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Drv/StreamCrossover/CMakeFiles/Drv_StreamCrossover.dir/depend

