# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yihengz/Documents/15-662/asst4_sph

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yihengz/Documents/15-662/asst4_sph

# Include any dependencies generated for this target.
include src/CMakeFiles/asst4sph.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/asst4sph.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/asst4sph.dir/flags.make

src/CMakeFiles/asst4sph.dir/main.cpp.o: src/CMakeFiles/asst4sph.dir/flags.make
src/CMakeFiles/asst4sph.dir/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yihengz/Documents/15-662/asst4_sph/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/asst4sph.dir/main.cpp.o"
	cd /home/yihengz/Documents/15-662/asst4_sph/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asst4sph.dir/main.cpp.o -c /home/yihengz/Documents/15-662/asst4_sph/src/main.cpp

src/CMakeFiles/asst4sph.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asst4sph.dir/main.cpp.i"
	cd /home/yihengz/Documents/15-662/asst4_sph/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yihengz/Documents/15-662/asst4_sph/src/main.cpp > CMakeFiles/asst4sph.dir/main.cpp.i

src/CMakeFiles/asst4sph.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asst4sph.dir/main.cpp.s"
	cd /home/yihengz/Documents/15-662/asst4_sph/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yihengz/Documents/15-662/asst4_sph/src/main.cpp -o CMakeFiles/asst4sph.dir/main.cpp.s

src/CMakeFiles/asst4sph.dir/main.cpp.o.requires:

.PHONY : src/CMakeFiles/asst4sph.dir/main.cpp.o.requires

src/CMakeFiles/asst4sph.dir/main.cpp.o.provides: src/CMakeFiles/asst4sph.dir/main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/asst4sph.dir/build.make src/CMakeFiles/asst4sph.dir/main.cpp.o.provides.build
.PHONY : src/CMakeFiles/asst4sph.dir/main.cpp.o.provides

src/CMakeFiles/asst4sph.dir/main.cpp.o.provides.build: src/CMakeFiles/asst4sph.dir/main.cpp.o


# Object files for target asst4sph
asst4sph_OBJECTS = \
"CMakeFiles/asst4sph.dir/main.cpp.o"

# External object files for target asst4sph
asst4sph_EXTERNAL_OBJECTS =

asst4sph: src/CMakeFiles/asst4sph.dir/main.cpp.o
asst4sph: src/CMakeFiles/asst4sph.dir/build.make
asst4sph: external/glew/libglew.a
asst4sph: external/glfw/src/libglfw3.a
asst4sph: /usr/lib/x86_64-linux-gnu/librt.so
asst4sph: /usr/lib/x86_64-linux-gnu/libm.so
asst4sph: /usr/lib/x86_64-linux-gnu/libX11.so
asst4sph: /usr/lib/x86_64-linux-gnu/libXrandr.so
asst4sph: /usr/lib/x86_64-linux-gnu/libXinerama.so
asst4sph: /usr/lib/x86_64-linux-gnu/libXi.so
asst4sph: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
asst4sph: /usr/lib/x86_64-linux-gnu/libXcursor.so
asst4sph: /usr/lib/x86_64-linux-gnu/libGL.so
asst4sph: src/CMakeFiles/asst4sph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yihengz/Documents/15-662/asst4_sph/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../asst4sph"
	cd /home/yihengz/Documents/15-662/asst4_sph/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/asst4sph.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/asst4sph.dir/build: asst4sph

.PHONY : src/CMakeFiles/asst4sph.dir/build

src/CMakeFiles/asst4sph.dir/requires: src/CMakeFiles/asst4sph.dir/main.cpp.o.requires

.PHONY : src/CMakeFiles/asst4sph.dir/requires

src/CMakeFiles/asst4sph.dir/clean:
	cd /home/yihengz/Documents/15-662/asst4_sph/src && $(CMAKE_COMMAND) -P CMakeFiles/asst4sph.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/asst4sph.dir/clean

src/CMakeFiles/asst4sph.dir/depend:
	cd /home/yihengz/Documents/15-662/asst4_sph && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yihengz/Documents/15-662/asst4_sph /home/yihengz/Documents/15-662/asst4_sph/src /home/yihengz/Documents/15-662/asst4_sph /home/yihengz/Documents/15-662/asst4_sph/src /home/yihengz/Documents/15-662/asst4_sph/src/CMakeFiles/asst4sph.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/asst4sph.dir/depend
