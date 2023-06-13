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
CMAKE_BINARY_DIR = /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan

# Include any dependencies generated for this target.
include F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/progress.make

# Include the compile flags for this target's objects.
include F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/flags.make

F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.o: F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/flags.make
F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.o: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/cmake/empty.cpp
F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.o: F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.o"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Utils/Hash && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.o -MF CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.o.d -o CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.o -c /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/cmake/empty.cpp

F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.i"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Utils/Hash && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/cmake/empty.cpp > CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.i

F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.s"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Utils/Hash && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/cmake/empty.cpp -o CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.s

# Object files for target Utils_Hash
Utils_Hash_OBJECTS = \
"CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.o"

# External object files for target Utils_Hash
Utils_Hash_EXTERNAL_OBJECTS =

lib/Darwin/libUtils_Hash.a: F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/__/__/cmake/empty.cpp.o
lib/Darwin/libUtils_Hash.a: F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/build.make
lib/Darwin/libUtils_Hash.a: F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/Darwin/libUtils_Hash.a"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Utils/Hash && $(CMAKE_COMMAND) -P CMakeFiles/Utils_Hash.dir/cmake_clean_target.cmake
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Utils/Hash && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Utils_Hash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/build: lib/Darwin/libUtils_Hash.a
.PHONY : F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/build

F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/clean:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Utils/Hash && $(CMAKE_COMMAND) -P CMakeFiles/Utils_Hash.dir/cmake_clean.cmake
.PHONY : F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/clean

F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/depend:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/asloan/fprime-tutorial-hello-world/MyProject /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Utils/Hash /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Utils/Hash /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/prescan/F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Utils/Hash/CMakeFiles/Utils_Hash.dir/depend

