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
include F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/progress.make

# Include the compile flags for this target's objects.
include F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/flags.make

F-Prime/Svc/Cycle/CyclePortAi.xml: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/Cycle/Cycle.fpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating CyclePortAi.xml"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/fpp-to-xml -d /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/Cycle/Cycle.fpp -p /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime,/Users/asloan/fprime-tutorial-hello-world/MyProject

F-Prime/Svc/Cycle/CyclePortAc.cpp: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/Cycle/Cycle.fpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating CyclePortAc.cpp, CyclePortAc.hpp"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/fpp-to-cpp -d /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/Cycle/Cycle.fpp -p /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime,/Users/asloan/fprime-tutorial-hello-world/MyProject,/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native

F-Prime/Svc/Cycle/CyclePortAc.hpp: F-Prime/Svc/Cycle/CyclePortAc.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/Cycle/CyclePortAc.hpp

F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.o: F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/flags.make
F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.o: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/Cycle/TimerVal.cpp
F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.o: F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.o"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x7e173548 -DASSERT_RELATIVE_PATH='"Svc/Cycle/TimerVal.cpp"' -MD -MT F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.o -MF CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.o.d -o CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.o -c /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/Cycle/TimerVal.cpp

F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.i"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x7e173548 -DASSERT_RELATIVE_PATH='"Svc/Cycle/TimerVal.cpp"' -E /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/Cycle/TimerVal.cpp > CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.i

F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.s"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x7e173548 -DASSERT_RELATIVE_PATH='"Svc/Cycle/TimerVal.cpp"' -S /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/Cycle/TimerVal.cpp -o CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.s

F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.o: F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/flags.make
F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.o: F-Prime/Svc/Cycle/CyclePortAc.cpp
F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.o: F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.o"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x68556eaf -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/Cycle/CyclePortAc.cpp"' -MD -MT F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.o -MF CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.o.d -o CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.o -c /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle/CyclePortAc.cpp

F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.i"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x68556eaf -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/Cycle/CyclePortAc.cpp"' -E /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle/CyclePortAc.cpp > CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.i

F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.s"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x68556eaf -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/Cycle/CyclePortAc.cpp"' -S /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle/CyclePortAc.cpp -o CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.s

# Object files for target Svc_Cycle
Svc_Cycle_OBJECTS = \
"CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.o" \
"CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.o"

# External object files for target Svc_Cycle
Svc_Cycle_EXTERNAL_OBJECTS =

lib/Darwin/libSvc_Cycle.a: F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/TimerVal.cpp.o
lib/Darwin/libSvc_Cycle.a: F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/CyclePortAc.cpp.o
lib/Darwin/libSvc_Cycle.a: F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/build.make
lib/Darwin/libSvc_Cycle.a: F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../../../lib/Darwin/libSvc_Cycle.a"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && $(CMAKE_COMMAND) -P CMakeFiles/Svc_Cycle.dir/cmake_clean_target.cmake
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Svc_Cycle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/build: lib/Darwin/libSvc_Cycle.a
.PHONY : F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/build

F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/clean:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle && $(CMAKE_COMMAND) -P CMakeFiles/Svc_Cycle.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/clean

F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/depend: F-Prime/Svc/Cycle/CyclePortAc.cpp
F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/depend: F-Prime/Svc/Cycle/CyclePortAc.hpp
F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/depend: F-Prime/Svc/Cycle/CyclePortAi.xml
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/asloan/fprime-tutorial-hello-world/MyProject /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/Cycle /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/Cycle/CMakeFiles/Svc_Cycle.dir/depend

