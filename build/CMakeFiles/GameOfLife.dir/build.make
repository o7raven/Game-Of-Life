# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/raven/Coding/Game-Of-Life

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/raven/Coding/Game-Of-Life/build

# Include any dependencies generated for this target.
include CMakeFiles/GameOfLife.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GameOfLife.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GameOfLife.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GameOfLife.dir/flags.make

CMakeFiles/GameOfLife.dir/src/main.cpp.o: CMakeFiles/GameOfLife.dir/flags.make
CMakeFiles/GameOfLife.dir/src/main.cpp.o: /home/raven/Coding/Game-Of-Life/src/main.cpp
CMakeFiles/GameOfLife.dir/src/main.cpp.o: CMakeFiles/GameOfLife.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/raven/Coding/Game-Of-Life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GameOfLife.dir/src/main.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GameOfLife.dir/src/main.cpp.o -MF CMakeFiles/GameOfLife.dir/src/main.cpp.o.d -o CMakeFiles/GameOfLife.dir/src/main.cpp.o -c /home/raven/Coding/Game-Of-Life/src/main.cpp

CMakeFiles/GameOfLife.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GameOfLife.dir/src/main.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raven/Coding/Game-Of-Life/src/main.cpp > CMakeFiles/GameOfLife.dir/src/main.cpp.i

CMakeFiles/GameOfLife.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GameOfLife.dir/src/main.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raven/Coding/Game-Of-Life/src/main.cpp -o CMakeFiles/GameOfLife.dir/src/main.cpp.s

CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.o: CMakeFiles/GameOfLife.dir/flags.make
CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.o: /home/raven/Coding/Game-Of-Life/src/include/Render/Render.cpp
CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.o: CMakeFiles/GameOfLife.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/raven/Coding/Game-Of-Life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.o -MF CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.o.d -o CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.o -c /home/raven/Coding/Game-Of-Life/src/include/Render/Render.cpp

CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raven/Coding/Game-Of-Life/src/include/Render/Render.cpp > CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.i

CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raven/Coding/Game-Of-Life/src/include/Render/Render.cpp -o CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.s

CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.o: CMakeFiles/GameOfLife.dir/flags.make
CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.o: /home/raven/Coding/Game-Of-Life/src/include/Log/Log.cpp
CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.o: CMakeFiles/GameOfLife.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/raven/Coding/Game-Of-Life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.o -MF CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.o.d -o CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.o -c /home/raven/Coding/Game-Of-Life/src/include/Log/Log.cpp

CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raven/Coding/Game-Of-Life/src/include/Log/Log.cpp > CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.i

CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raven/Coding/Game-Of-Life/src/include/Log/Log.cpp -o CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.s

CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.o: CMakeFiles/GameOfLife.dir/flags.make
CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.o: /home/raven/Coding/Game-Of-Life/src/include/Grid/Grid.cpp
CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.o: CMakeFiles/GameOfLife.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/raven/Coding/Game-Of-Life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.o -MF CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.o.d -o CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.o -c /home/raven/Coding/Game-Of-Life/src/include/Grid/Grid.cpp

CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raven/Coding/Game-Of-Life/src/include/Grid/Grid.cpp > CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.i

CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raven/Coding/Game-Of-Life/src/include/Grid/Grid.cpp -o CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.s

CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.o: CMakeFiles/GameOfLife.dir/flags.make
CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.o: /home/raven/Coding/Game-Of-Life/src/include/Simulation/Simulation.cpp
CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.o: CMakeFiles/GameOfLife.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/raven/Coding/Game-Of-Life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.o -MF CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.o.d -o CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.o -c /home/raven/Coding/Game-Of-Life/src/include/Simulation/Simulation.cpp

CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raven/Coding/Game-Of-Life/src/include/Simulation/Simulation.cpp > CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.i

CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raven/Coding/Game-Of-Life/src/include/Simulation/Simulation.cpp -o CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.s

# Object files for target GameOfLife
GameOfLife_OBJECTS = \
"CMakeFiles/GameOfLife.dir/src/main.cpp.o" \
"CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.o" \
"CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.o" \
"CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.o" \
"CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.o"

# External object files for target GameOfLife
GameOfLife_EXTERNAL_OBJECTS =

GameOfLife: CMakeFiles/GameOfLife.dir/src/main.cpp.o
GameOfLife: CMakeFiles/GameOfLife.dir/src/include/Render/Render.cpp.o
GameOfLife: CMakeFiles/GameOfLife.dir/src/include/Log/Log.cpp.o
GameOfLife: CMakeFiles/GameOfLife.dir/src/include/Grid/Grid.cpp.o
GameOfLife: CMakeFiles/GameOfLife.dir/src/include/Simulation/Simulation.cpp.o
GameOfLife: CMakeFiles/GameOfLife.dir/build.make
GameOfLife: CMakeFiles/GameOfLife.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/raven/Coding/Game-Of-Life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable GameOfLife"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GameOfLife.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GameOfLife.dir/build: GameOfLife
.PHONY : CMakeFiles/GameOfLife.dir/build

CMakeFiles/GameOfLife.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GameOfLife.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GameOfLife.dir/clean

CMakeFiles/GameOfLife.dir/depend:
	cd /home/raven/Coding/Game-Of-Life/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/raven/Coding/Game-Of-Life /home/raven/Coding/Game-Of-Life /home/raven/Coding/Game-Of-Life/build /home/raven/Coding/Game-Of-Life/build /home/raven/Coding/Game-Of-Life/build/CMakeFiles/GameOfLife.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/GameOfLife.dir/depend

