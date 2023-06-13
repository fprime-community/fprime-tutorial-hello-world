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

# Utility rule file for Svc_PolyDb_impl.

# Include any custom commands dependencies for this target.
include F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl.dir/progress.make

F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl: F-Prime/Svc/PolyDb/PolyDbComponentAi.xml
F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDbComponentImpl.hpp-template
F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDbComponentImpl.cpp-template

F-Prime/Svc/PolyDb/PolyDbComponentAi.xml: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDb.fpp
F-Prime/Svc/PolyDb/PolyDbComponentAi.xml: lib/Darwin/libSvc_PolyIf.a
F-Prime/Svc/PolyDb/PolyDbComponentAi.xml: lib/Darwin/libOs.a
F-Prime/Svc/PolyDb/PolyDbComponentAi.xml: lib/Darwin/libFw_Comp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating PolyDbComponentAi.xml"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/PolyDb && /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/fpp-to-xml -d /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/PolyDb -i /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Time/Time.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Fw/Types/Types.fpp,/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyIf/PolyIf.fpp /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDb.fpp -p /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime,/Users/asloan/fprime-tutorial-hello-world/MyProject

/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDbComponentImpl.hpp-template: F-Prime/Svc/PolyDb/PolyDbComponentAi.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDbComponentImpl.hpp-template, /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDbComponentImpl.cpp-template"
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/PolyDb && /Applications/CMake.app/Contents/bin/cmake -E env PYTHONPATH=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/src:/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/utils BUILD_ROOT=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime:/Users/asloan/fprime-tutorial-hello-world/MyProject:/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native:/Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python /Users/asloan/fprime-tutorial-hello-world/MyProject/venv/bin/python3 /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Autocoders/Python/bin/codegen.py -p /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb --build_root -t /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/PolyDb/PolyDbComponentAi.xml

/Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDbComponentImpl.cpp-template: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDbComponentImpl.hpp-template
	@$(CMAKE_COMMAND) -E touch_nocreate /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDbComponentImpl.cpp-template

Svc_PolyDb_impl: F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl
Svc_PolyDb_impl: F-Prime/Svc/PolyDb/PolyDbComponentAi.xml
Svc_PolyDb_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDbComponentImpl.cpp-template
Svc_PolyDb_impl: /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb/PolyDbComponentImpl.hpp-template
Svc_PolyDb_impl: F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl.dir/build.make
.PHONY : Svc_PolyDb_impl

# Rule to build all files generated by this target.
F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl.dir/build: Svc_PolyDb_impl
.PHONY : F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl.dir/build

F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl.dir/clean:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/PolyDb && $(CMAKE_COMMAND) -P CMakeFiles/Svc_PolyDb_impl.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl.dir/clean

F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl.dir/depend:
	cd /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/asloan/fprime-tutorial-hello-world/MyProject /Users/asloan/fprime-tutorial-hello-world/MyProject/fprime/Svc/PolyDb /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/PolyDb /Users/asloan/fprime-tutorial-hello-world/MyProject/build-fprime-automatic-native/F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/PolyDb/CMakeFiles/Svc_PolyDb_impl.dir/depend

