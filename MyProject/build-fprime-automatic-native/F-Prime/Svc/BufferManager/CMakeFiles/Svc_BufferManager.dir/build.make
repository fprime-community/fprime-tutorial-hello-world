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
include F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/progress.make

# Include the compile flags for this target's objects.
include F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/flags.make

F-Prime/Svc/BufferManager/BufferManagerComponentAc.hpp: F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml
F-Prime/Svc/BufferManager/BufferManagerComponentAc.hpp: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/config/AcConstants.ini
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating BufferManagerComponentAc.hpp, BufferManagerComponentAc.cpp"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && /Applications/CMake.app/Contents/bin/cmake -E env PYTHONPATH=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/src:/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/utils BUILD_ROOT=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime:/Users/asloan/fprime-tutorial-hello-world/MyProject:/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native:/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/python3 /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/bin/codegen.py -p /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager --build_root /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml

F-Prime/Svc/BufferManager/BufferManagerComponentAc.cpp: F-Prime/Svc/BufferManager/BufferManagerComponentAc.hpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/BufferManager/BufferManagerComponentAc.cpp

F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/BufferManager/BufferManager.fpp
F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/BufferManager/Events.fppi
F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/BufferManager/Telemetry.fppi
F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml: lib/Darwin/libFw_Buffer.a
F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml: lib/Darwin/libFw_Log.a
F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml: lib/Darwin/libFw_Time.a
F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml: lib/Darwin/libFw_Tlm.a
F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml: lib/Darwin/libSvc_Sched.a
F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml: lib/Darwin/libOs.a
F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml: lib/Darwin/libFw_Comp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating BufferManagerComponentAi.xml"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/fpp-to-xml -d /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager -i /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Buffer/Buffer.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Log/Log.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Time/Time.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Tlm/Tlm.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/Sched/Sched.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/config/FpConfig.fpp /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/BufferManager/BufferManager.fpp -p /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime,/Users/asloan/fprime-tutorial-hello-world/MyProject

F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.o: F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/flags.make
F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.o: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/BufferManager/BufferManagerComponentImpl.cpp
F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.o: F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.o"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xc5e7706a -DASSERT_RELATIVE_PATH='"Svc/BufferManager/BufferManagerComponentImpl.cpp"' -MD -MT F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.o -MF CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.o.d -o CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.o -c /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/BufferManager/BufferManagerComponentImpl.cpp

F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.i"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xc5e7706a -DASSERT_RELATIVE_PATH='"Svc/BufferManager/BufferManagerComponentImpl.cpp"' -E /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/BufferManager/BufferManagerComponentImpl.cpp > CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.i

F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.s"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xc5e7706a -DASSERT_RELATIVE_PATH='"Svc/BufferManager/BufferManagerComponentImpl.cpp"' -S /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/BufferManager/BufferManagerComponentImpl.cpp -o CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.s

F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.o: F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/flags.make
F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.o: F-Prime/Svc/BufferManager/BufferManagerComponentAc.cpp
F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.o: F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.o"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xd8255cd6 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferManager/BufferManagerComponentAc.cpp"' -MD -MT F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.o -MF CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.o.d -o CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.o -c /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager/BufferManagerComponentAc.cpp

F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.i"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xd8255cd6 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferManager/BufferManagerComponentAc.cpp"' -E /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager/BufferManagerComponentAc.cpp > CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.i

F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.s"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xd8255cd6 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferManager/BufferManagerComponentAc.cpp"' -S /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager/BufferManagerComponentAc.cpp -o CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.s

# Object files for target Svc_BufferManager
Svc_BufferManager_OBJECTS = \
"CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.o" \
"CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.o"

# External object files for target Svc_BufferManager
Svc_BufferManager_EXTERNAL_OBJECTS =

lib/Darwin/libSvc_BufferManager.a: F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentImpl.cpp.o
lib/Darwin/libSvc_BufferManager.a: F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/BufferManagerComponentAc.cpp.o
lib/Darwin/libSvc_BufferManager.a: F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/build.make
lib/Darwin/libSvc_BufferManager.a: F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../../../lib/Darwin/libSvc_BufferManager.a"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && $(CMAKE_COMMAND) -P CMakeFiles/Svc_BufferManager.dir/cmake_clean_target.cmake
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Svc_BufferManager.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/build: lib/Darwin/libSvc_BufferManager.a
.PHONY : F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/build

F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/clean:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager && $(CMAKE_COMMAND) -P CMakeFiles/Svc_BufferManager.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/clean

F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/depend: F-Prime/Svc/BufferManager/BufferManagerComponentAc.cpp
F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/depend: F-Prime/Svc/BufferManager/BufferManagerComponentAc.hpp
F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/depend: F-Prime/Svc/BufferManager/BufferManagerComponentAi.xml
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/asloan/fprime-tutorial-hello-world/MyProject /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/BufferManager /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/BufferManager/CMakeFiles/Svc_BufferManager.dir/depend

