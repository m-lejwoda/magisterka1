# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /snap/clion/175/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/175/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/saxatachi/CLionProjects/master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/saxatachi/CLionProjects/master/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/master.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/master.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/master.dir/flags.make

CMakeFiles/master.dir/main.cpp.o: CMakeFiles/master.dir/flags.make
CMakeFiles/master.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saxatachi/CLionProjects/master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/master.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/master.dir/main.cpp.o -c /home/saxatachi/CLionProjects/master/main.cpp

CMakeFiles/master.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/master.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/saxatachi/CLionProjects/master/main.cpp > CMakeFiles/master.dir/main.cpp.i

CMakeFiles/master.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/master.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/saxatachi/CLionProjects/master/main.cpp -o CMakeFiles/master.dir/main.cpp.s

CMakeFiles/master.dir/idw.cpp.o: CMakeFiles/master.dir/flags.make
CMakeFiles/master.dir/idw.cpp.o: ../idw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saxatachi/CLionProjects/master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/master.dir/idw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/master.dir/idw.cpp.o -c /home/saxatachi/CLionProjects/master/idw.cpp

CMakeFiles/master.dir/idw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/master.dir/idw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/saxatachi/CLionProjects/master/idw.cpp > CMakeFiles/master.dir/idw.cpp.i

CMakeFiles/master.dir/idw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/master.dir/idw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/saxatachi/CLionProjects/master/idw.cpp -o CMakeFiles/master.dir/idw.cpp.s

CMakeFiles/master.dir/grid.cpp.o: CMakeFiles/master.dir/flags.make
CMakeFiles/master.dir/grid.cpp.o: ../grid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saxatachi/CLionProjects/master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/master.dir/grid.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/master.dir/grid.cpp.o -c /home/saxatachi/CLionProjects/master/grid.cpp

CMakeFiles/master.dir/grid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/master.dir/grid.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/saxatachi/CLionProjects/master/grid.cpp > CMakeFiles/master.dir/grid.cpp.i

CMakeFiles/master.dir/grid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/master.dir/grid.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/saxatachi/CLionProjects/master/grid.cpp -o CMakeFiles/master.dir/grid.cpp.s

CMakeFiles/master.dir/cell.cpp.o: CMakeFiles/master.dir/flags.make
CMakeFiles/master.dir/cell.cpp.o: ../cell.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saxatachi/CLionProjects/master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/master.dir/cell.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/master.dir/cell.cpp.o -c /home/saxatachi/CLionProjects/master/cell.cpp

CMakeFiles/master.dir/cell.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/master.dir/cell.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/saxatachi/CLionProjects/master/cell.cpp > CMakeFiles/master.dir/cell.cpp.i

CMakeFiles/master.dir/cell.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/master.dir/cell.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/saxatachi/CLionProjects/master/cell.cpp -o CMakeFiles/master.dir/cell.cpp.s

# Object files for target master
master_OBJECTS = \
"CMakeFiles/master.dir/main.cpp.o" \
"CMakeFiles/master.dir/idw.cpp.o" \
"CMakeFiles/master.dir/grid.cpp.o" \
"CMakeFiles/master.dir/cell.cpp.o"

# External object files for target master
master_EXTERNAL_OBJECTS =

master: CMakeFiles/master.dir/main.cpp.o
master: CMakeFiles/master.dir/idw.cpp.o
master: CMakeFiles/master.dir/grid.cpp.o
master: CMakeFiles/master.dir/cell.cpp.o
master: CMakeFiles/master.dir/build.make
master: /usr/local/lib/liblas_c.so.2.4.0
master: /usr/lib/libgdal.so
master: /usr/local/lib/liblas.so.2.4.0
master: /usr/lib/libgdal.so
master: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
master: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
master: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
master: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
master: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so.1.71.0
master: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
master: CMakeFiles/master.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/saxatachi/CLionProjects/master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable master"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/master.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/master.dir/build: master
.PHONY : CMakeFiles/master.dir/build

CMakeFiles/master.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/master.dir/cmake_clean.cmake
.PHONY : CMakeFiles/master.dir/clean

CMakeFiles/master.dir/depend:
	cd /home/saxatachi/CLionProjects/master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/saxatachi/CLionProjects/master /home/saxatachi/CLionProjects/master /home/saxatachi/CLionProjects/master/cmake-build-debug /home/saxatachi/CLionProjects/master/cmake-build-debug /home/saxatachi/CLionProjects/master/cmake-build-debug/CMakeFiles/master.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/master.dir/depend

