# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mkn/_libssh/libssh

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mkn/_libssh/libssh_build

# Include any dependencies generated for this target.
include examples/CMakeFiles/scp_download.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/scp_download.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/scp_download.dir/flags.make

examples/CMakeFiles/scp_download.dir/scp_download.c.o: examples/CMakeFiles/scp_download.dir/flags.make
examples/CMakeFiles/scp_download.dir/scp_download.c.o: /home/mkn/_libssh/libssh/examples/scp_download.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mkn/_libssh/libssh_build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/scp_download.dir/scp_download.c.o"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/scp_download.dir/scp_download.c.o   -c /home/mkn/_libssh/libssh/examples/scp_download.c

examples/CMakeFiles/scp_download.dir/scp_download.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scp_download.dir/scp_download.c.i"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mkn/_libssh/libssh/examples/scp_download.c > CMakeFiles/scp_download.dir/scp_download.c.i

examples/CMakeFiles/scp_download.dir/scp_download.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scp_download.dir/scp_download.c.s"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mkn/_libssh/libssh/examples/scp_download.c -o CMakeFiles/scp_download.dir/scp_download.c.s

examples/CMakeFiles/scp_download.dir/scp_download.c.o.requires:
.PHONY : examples/CMakeFiles/scp_download.dir/scp_download.c.o.requires

examples/CMakeFiles/scp_download.dir/scp_download.c.o.provides: examples/CMakeFiles/scp_download.dir/scp_download.c.o.requires
	$(MAKE) -f examples/CMakeFiles/scp_download.dir/build.make examples/CMakeFiles/scp_download.dir/scp_download.c.o.provides.build
.PHONY : examples/CMakeFiles/scp_download.dir/scp_download.c.o.provides

examples/CMakeFiles/scp_download.dir/scp_download.c.o.provides.build: examples/CMakeFiles/scp_download.dir/scp_download.c.o

examples/CMakeFiles/scp_download.dir/authentication.c.o: examples/CMakeFiles/scp_download.dir/flags.make
examples/CMakeFiles/scp_download.dir/authentication.c.o: /home/mkn/_libssh/libssh/examples/authentication.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mkn/_libssh/libssh_build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/scp_download.dir/authentication.c.o"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/scp_download.dir/authentication.c.o   -c /home/mkn/_libssh/libssh/examples/authentication.c

examples/CMakeFiles/scp_download.dir/authentication.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scp_download.dir/authentication.c.i"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mkn/_libssh/libssh/examples/authentication.c > CMakeFiles/scp_download.dir/authentication.c.i

examples/CMakeFiles/scp_download.dir/authentication.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scp_download.dir/authentication.c.s"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mkn/_libssh/libssh/examples/authentication.c -o CMakeFiles/scp_download.dir/authentication.c.s

examples/CMakeFiles/scp_download.dir/authentication.c.o.requires:
.PHONY : examples/CMakeFiles/scp_download.dir/authentication.c.o.requires

examples/CMakeFiles/scp_download.dir/authentication.c.o.provides: examples/CMakeFiles/scp_download.dir/authentication.c.o.requires
	$(MAKE) -f examples/CMakeFiles/scp_download.dir/build.make examples/CMakeFiles/scp_download.dir/authentication.c.o.provides.build
.PHONY : examples/CMakeFiles/scp_download.dir/authentication.c.o.provides

examples/CMakeFiles/scp_download.dir/authentication.c.o.provides.build: examples/CMakeFiles/scp_download.dir/authentication.c.o

examples/CMakeFiles/scp_download.dir/knownhosts.c.o: examples/CMakeFiles/scp_download.dir/flags.make
examples/CMakeFiles/scp_download.dir/knownhosts.c.o: /home/mkn/_libssh/libssh/examples/knownhosts.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mkn/_libssh/libssh_build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/scp_download.dir/knownhosts.c.o"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/scp_download.dir/knownhosts.c.o   -c /home/mkn/_libssh/libssh/examples/knownhosts.c

examples/CMakeFiles/scp_download.dir/knownhosts.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scp_download.dir/knownhosts.c.i"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mkn/_libssh/libssh/examples/knownhosts.c > CMakeFiles/scp_download.dir/knownhosts.c.i

examples/CMakeFiles/scp_download.dir/knownhosts.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scp_download.dir/knownhosts.c.s"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mkn/_libssh/libssh/examples/knownhosts.c -o CMakeFiles/scp_download.dir/knownhosts.c.s

examples/CMakeFiles/scp_download.dir/knownhosts.c.o.requires:
.PHONY : examples/CMakeFiles/scp_download.dir/knownhosts.c.o.requires

examples/CMakeFiles/scp_download.dir/knownhosts.c.o.provides: examples/CMakeFiles/scp_download.dir/knownhosts.c.o.requires
	$(MAKE) -f examples/CMakeFiles/scp_download.dir/build.make examples/CMakeFiles/scp_download.dir/knownhosts.c.o.provides.build
.PHONY : examples/CMakeFiles/scp_download.dir/knownhosts.c.o.provides

examples/CMakeFiles/scp_download.dir/knownhosts.c.o.provides.build: examples/CMakeFiles/scp_download.dir/knownhosts.c.o

examples/CMakeFiles/scp_download.dir/connect_ssh.c.o: examples/CMakeFiles/scp_download.dir/flags.make
examples/CMakeFiles/scp_download.dir/connect_ssh.c.o: /home/mkn/_libssh/libssh/examples/connect_ssh.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mkn/_libssh/libssh_build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/scp_download.dir/connect_ssh.c.o"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/scp_download.dir/connect_ssh.c.o   -c /home/mkn/_libssh/libssh/examples/connect_ssh.c

examples/CMakeFiles/scp_download.dir/connect_ssh.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scp_download.dir/connect_ssh.c.i"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/mkn/_libssh/libssh/examples/connect_ssh.c > CMakeFiles/scp_download.dir/connect_ssh.c.i

examples/CMakeFiles/scp_download.dir/connect_ssh.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scp_download.dir/connect_ssh.c.s"
	cd /home/mkn/_libssh/libssh_build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/mkn/_libssh/libssh/examples/connect_ssh.c -o CMakeFiles/scp_download.dir/connect_ssh.c.s

examples/CMakeFiles/scp_download.dir/connect_ssh.c.o.requires:
.PHONY : examples/CMakeFiles/scp_download.dir/connect_ssh.c.o.requires

examples/CMakeFiles/scp_download.dir/connect_ssh.c.o.provides: examples/CMakeFiles/scp_download.dir/connect_ssh.c.o.requires
	$(MAKE) -f examples/CMakeFiles/scp_download.dir/build.make examples/CMakeFiles/scp_download.dir/connect_ssh.c.o.provides.build
.PHONY : examples/CMakeFiles/scp_download.dir/connect_ssh.c.o.provides

examples/CMakeFiles/scp_download.dir/connect_ssh.c.o.provides.build: examples/CMakeFiles/scp_download.dir/connect_ssh.c.o

# Object files for target scp_download
scp_download_OBJECTS = \
"CMakeFiles/scp_download.dir/scp_download.c.o" \
"CMakeFiles/scp_download.dir/authentication.c.o" \
"CMakeFiles/scp_download.dir/knownhosts.c.o" \
"CMakeFiles/scp_download.dir/connect_ssh.c.o"

# External object files for target scp_download
scp_download_EXTERNAL_OBJECTS =

examples/scp_download: examples/CMakeFiles/scp_download.dir/scp_download.c.o
examples/scp_download: examples/CMakeFiles/scp_download.dir/authentication.c.o
examples/scp_download: examples/CMakeFiles/scp_download.dir/knownhosts.c.o
examples/scp_download: examples/CMakeFiles/scp_download.dir/connect_ssh.c.o
examples/scp_download: examples/CMakeFiles/scp_download.dir/build.make
examples/scp_download: src/libssh.so.4.4.0
examples/scp_download: /usr/local/ssl/lib/libcrypto.a
examples/scp_download: /usr/local/ssl/lib/libcrypto.a
examples/scp_download: /usr/lib/i386-linux-gnu/libgcrypt.so
examples/scp_download: /usr/lib/i386-linux-gnu/libz.so
examples/scp_download: /usr/lib/i386-linux-gnu/libgssapi_krb5.so
examples/scp_download: /usr/lib/i386-linux-gnu/libkrb5.so
examples/scp_download: /usr/lib/i386-linux-gnu/libk5crypto.so
examples/scp_download: /usr/lib/i386-linux-gnu/libcom_err.so
examples/scp_download: examples/CMakeFiles/scp_download.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable scp_download"
	cd /home/mkn/_libssh/libssh_build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scp_download.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/scp_download.dir/build: examples/scp_download
.PHONY : examples/CMakeFiles/scp_download.dir/build

examples/CMakeFiles/scp_download.dir/requires: examples/CMakeFiles/scp_download.dir/scp_download.c.o.requires
examples/CMakeFiles/scp_download.dir/requires: examples/CMakeFiles/scp_download.dir/authentication.c.o.requires
examples/CMakeFiles/scp_download.dir/requires: examples/CMakeFiles/scp_download.dir/knownhosts.c.o.requires
examples/CMakeFiles/scp_download.dir/requires: examples/CMakeFiles/scp_download.dir/connect_ssh.c.o.requires
.PHONY : examples/CMakeFiles/scp_download.dir/requires

examples/CMakeFiles/scp_download.dir/clean:
	cd /home/mkn/_libssh/libssh_build/examples && $(CMAKE_COMMAND) -P CMakeFiles/scp_download.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/scp_download.dir/clean

examples/CMakeFiles/scp_download.dir/depend:
	cd /home/mkn/_libssh/libssh_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mkn/_libssh/libssh /home/mkn/_libssh/libssh/examples /home/mkn/_libssh/libssh_build /home/mkn/_libssh/libssh_build/examples /home/mkn/_libssh/libssh_build/examples/CMakeFiles/scp_download.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/scp_download.dir/depend

