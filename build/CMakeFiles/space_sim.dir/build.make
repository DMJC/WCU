# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = /home/james/development/WCU

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/james/development/WCU/build

# Include any dependencies generated for this target.
include CMakeFiles/space_sim.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/space_sim.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/space_sim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/space_sim.dir/flags.make

CMakeFiles/space_sim.dir/codegen:
.PHONY : CMakeFiles/space_sim.dir/codegen

CMakeFiles/space_sim.dir/src/audio.cpp.o: CMakeFiles/space_sim.dir/flags.make
CMakeFiles/space_sim.dir/src/audio.cpp.o: /home/james/development/WCU/src/audio.cpp
CMakeFiles/space_sim.dir/src/audio.cpp.o: CMakeFiles/space_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/james/development/WCU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/space_sim.dir/src/audio.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/space_sim.dir/src/audio.cpp.o -MF CMakeFiles/space_sim.dir/src/audio.cpp.o.d -o CMakeFiles/space_sim.dir/src/audio.cpp.o -c /home/james/development/WCU/src/audio.cpp

CMakeFiles/space_sim.dir/src/audio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/space_sim.dir/src/audio.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/james/development/WCU/src/audio.cpp > CMakeFiles/space_sim.dir/src/audio.cpp.i

CMakeFiles/space_sim.dir/src/audio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/space_sim.dir/src/audio.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/james/development/WCU/src/audio.cpp -o CMakeFiles/space_sim.dir/src/audio.cpp.s

CMakeFiles/space_sim.dir/src/game.cpp.o: CMakeFiles/space_sim.dir/flags.make
CMakeFiles/space_sim.dir/src/game.cpp.o: /home/james/development/WCU/src/game.cpp
CMakeFiles/space_sim.dir/src/game.cpp.o: CMakeFiles/space_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/james/development/WCU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/space_sim.dir/src/game.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/space_sim.dir/src/game.cpp.o -MF CMakeFiles/space_sim.dir/src/game.cpp.o.d -o CMakeFiles/space_sim.dir/src/game.cpp.o -c /home/james/development/WCU/src/game.cpp

CMakeFiles/space_sim.dir/src/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/space_sim.dir/src/game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/james/development/WCU/src/game.cpp > CMakeFiles/space_sim.dir/src/game.cpp.i

CMakeFiles/space_sim.dir/src/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/space_sim.dir/src/game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/james/development/WCU/src/game.cpp -o CMakeFiles/space_sim.dir/src/game.cpp.s

CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.o: CMakeFiles/space_sim.dir/flags.make
CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.o: /home/james/development/WCU/src/gfx/mesh.cpp
CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.o: CMakeFiles/space_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/james/development/WCU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.o -MF CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.o.d -o CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.o -c /home/james/development/WCU/src/gfx/mesh.cpp

CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/james/development/WCU/src/gfx/mesh.cpp > CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.i

CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/james/development/WCU/src/gfx/mesh.cpp -o CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.s

CMakeFiles/space_sim.dir/src/main.cpp.o: CMakeFiles/space_sim.dir/flags.make
CMakeFiles/space_sim.dir/src/main.cpp.o: /home/james/development/WCU/src/main.cpp
CMakeFiles/space_sim.dir/src/main.cpp.o: CMakeFiles/space_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/james/development/WCU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/space_sim.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/space_sim.dir/src/main.cpp.o -MF CMakeFiles/space_sim.dir/src/main.cpp.o.d -o CMakeFiles/space_sim.dir/src/main.cpp.o -c /home/james/development/WCU/src/main.cpp

CMakeFiles/space_sim.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/space_sim.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/james/development/WCU/src/main.cpp > CMakeFiles/space_sim.dir/src/main.cpp.i

CMakeFiles/space_sim.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/space_sim.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/james/development/WCU/src/main.cpp -o CMakeFiles/space_sim.dir/src/main.cpp.s

CMakeFiles/space_sim.dir/src/menu.cpp.o: CMakeFiles/space_sim.dir/flags.make
CMakeFiles/space_sim.dir/src/menu.cpp.o: /home/james/development/WCU/src/menu.cpp
CMakeFiles/space_sim.dir/src/menu.cpp.o: CMakeFiles/space_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/james/development/WCU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/space_sim.dir/src/menu.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/space_sim.dir/src/menu.cpp.o -MF CMakeFiles/space_sim.dir/src/menu.cpp.o.d -o CMakeFiles/space_sim.dir/src/menu.cpp.o -c /home/james/development/WCU/src/menu.cpp

CMakeFiles/space_sim.dir/src/menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/space_sim.dir/src/menu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/james/development/WCU/src/menu.cpp > CMakeFiles/space_sim.dir/src/menu.cpp.i

CMakeFiles/space_sim.dir/src/menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/space_sim.dir/src/menu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/james/development/WCU/src/menu.cpp -o CMakeFiles/space_sim.dir/src/menu.cpp.s

CMakeFiles/space_sim.dir/src/settings.cpp.o: CMakeFiles/space_sim.dir/flags.make
CMakeFiles/space_sim.dir/src/settings.cpp.o: /home/james/development/WCU/src/settings.cpp
CMakeFiles/space_sim.dir/src/settings.cpp.o: CMakeFiles/space_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/james/development/WCU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/space_sim.dir/src/settings.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/space_sim.dir/src/settings.cpp.o -MF CMakeFiles/space_sim.dir/src/settings.cpp.o.d -o CMakeFiles/space_sim.dir/src/settings.cpp.o -c /home/james/development/WCU/src/settings.cpp

CMakeFiles/space_sim.dir/src/settings.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/space_sim.dir/src/settings.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/james/development/WCU/src/settings.cpp > CMakeFiles/space_sim.dir/src/settings.cpp.i

CMakeFiles/space_sim.dir/src/settings.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/space_sim.dir/src/settings.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/james/development/WCU/src/settings.cpp -o CMakeFiles/space_sim.dir/src/settings.cpp.s

CMakeFiles/space_sim.dir/src/text_renderer.cpp.o: CMakeFiles/space_sim.dir/flags.make
CMakeFiles/space_sim.dir/src/text_renderer.cpp.o: /home/james/development/WCU/src/text_renderer.cpp
CMakeFiles/space_sim.dir/src/text_renderer.cpp.o: CMakeFiles/space_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/james/development/WCU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/space_sim.dir/src/text_renderer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/space_sim.dir/src/text_renderer.cpp.o -MF CMakeFiles/space_sim.dir/src/text_renderer.cpp.o.d -o CMakeFiles/space_sim.dir/src/text_renderer.cpp.o -c /home/james/development/WCU/src/text_renderer.cpp

CMakeFiles/space_sim.dir/src/text_renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/space_sim.dir/src/text_renderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/james/development/WCU/src/text_renderer.cpp > CMakeFiles/space_sim.dir/src/text_renderer.cpp.i

CMakeFiles/space_sim.dir/src/text_renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/space_sim.dir/src/text_renderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/james/development/WCU/src/text_renderer.cpp -o CMakeFiles/space_sim.dir/src/text_renderer.cpp.s

CMakeFiles/space_sim.dir/src/universe/universe.cpp.o: CMakeFiles/space_sim.dir/flags.make
CMakeFiles/space_sim.dir/src/universe/universe.cpp.o: /home/james/development/WCU/src/universe/universe.cpp
CMakeFiles/space_sim.dir/src/universe/universe.cpp.o: CMakeFiles/space_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/james/development/WCU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/space_sim.dir/src/universe/universe.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/space_sim.dir/src/universe/universe.cpp.o -MF CMakeFiles/space_sim.dir/src/universe/universe.cpp.o.d -o CMakeFiles/space_sim.dir/src/universe/universe.cpp.o -c /home/james/development/WCU/src/universe/universe.cpp

CMakeFiles/space_sim.dir/src/universe/universe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/space_sim.dir/src/universe/universe.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/james/development/WCU/src/universe/universe.cpp > CMakeFiles/space_sim.dir/src/universe/universe.cpp.i

CMakeFiles/space_sim.dir/src/universe/universe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/space_sim.dir/src/universe/universe.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/james/development/WCU/src/universe/universe.cpp -o CMakeFiles/space_sim.dir/src/universe/universe.cpp.s

# Object files for target space_sim
space_sim_OBJECTS = \
"CMakeFiles/space_sim.dir/src/audio.cpp.o" \
"CMakeFiles/space_sim.dir/src/game.cpp.o" \
"CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.o" \
"CMakeFiles/space_sim.dir/src/main.cpp.o" \
"CMakeFiles/space_sim.dir/src/menu.cpp.o" \
"CMakeFiles/space_sim.dir/src/settings.cpp.o" \
"CMakeFiles/space_sim.dir/src/text_renderer.cpp.o" \
"CMakeFiles/space_sim.dir/src/universe/universe.cpp.o"

# External object files for target space_sim
space_sim_EXTERNAL_OBJECTS =

space_sim: CMakeFiles/space_sim.dir/src/audio.cpp.o
space_sim: CMakeFiles/space_sim.dir/src/game.cpp.o
space_sim: CMakeFiles/space_sim.dir/src/gfx/mesh.cpp.o
space_sim: CMakeFiles/space_sim.dir/src/main.cpp.o
space_sim: CMakeFiles/space_sim.dir/src/menu.cpp.o
space_sim: CMakeFiles/space_sim.dir/src/settings.cpp.o
space_sim: CMakeFiles/space_sim.dir/src/text_renderer.cpp.o
space_sim: CMakeFiles/space_sim.dir/src/universe/universe.cpp.o
space_sim: CMakeFiles/space_sim.dir/build.make
space_sim: CMakeFiles/space_sim.dir/compiler_depend.ts
space_sim: libglad.a
space_sim: /usr/lib/x86_64-linux-gnu/libSDL3.so.0.2.10
space_sim: /usr/lib/x86_64-linux-gnu/libopenal.so
space_sim: /usr/lib/x86_64-linux-gnu/libGLX.so
space_sim: /usr/lib/x86_64-linux-gnu/libOpenGL.so
space_sim: CMakeFiles/space_sim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/james/development/WCU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable space_sim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/space_sim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/space_sim.dir/build: space_sim
.PHONY : CMakeFiles/space_sim.dir/build

CMakeFiles/space_sim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/space_sim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/space_sim.dir/clean

CMakeFiles/space_sim.dir/depend:
	cd /home/james/development/WCU/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/james/development/WCU /home/james/development/WCU /home/james/development/WCU/build /home/james/development/WCU/build /home/james/development/WCU/build/CMakeFiles/space_sim.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/space_sim.dir/depend

