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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dede/Code/Github/sipetoBot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dede/Code/Github/sipetoBot

# Include any dependencies generated for this target.
include CMakeFiles/sipeto.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sipeto.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sipeto.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sipeto.dir/flags.make

CMakeFiles/sipeto.dir/src/main.cpp.o: CMakeFiles/sipeto.dir/flags.make
CMakeFiles/sipeto.dir/src/main.cpp.o: src/main.cpp
CMakeFiles/sipeto.dir/src/main.cpp.o: CMakeFiles/sipeto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dede/Code/Github/sipetoBot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sipeto.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sipeto.dir/src/main.cpp.o -MF CMakeFiles/sipeto.dir/src/main.cpp.o.d -o CMakeFiles/sipeto.dir/src/main.cpp.o -c /Users/dede/Code/Github/sipetoBot/src/main.cpp

CMakeFiles/sipeto.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sipeto.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dede/Code/Github/sipetoBot/src/main.cpp > CMakeFiles/sipeto.dir/src/main.cpp.i

CMakeFiles/sipeto.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sipeto.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dede/Code/Github/sipetoBot/src/main.cpp -o CMakeFiles/sipeto.dir/src/main.cpp.s

CMakeFiles/sipeto.dir/src/tiktok.cpp.o: CMakeFiles/sipeto.dir/flags.make
CMakeFiles/sipeto.dir/src/tiktok.cpp.o: src/tiktok.cpp
CMakeFiles/sipeto.dir/src/tiktok.cpp.o: CMakeFiles/sipeto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dede/Code/Github/sipetoBot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sipeto.dir/src/tiktok.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sipeto.dir/src/tiktok.cpp.o -MF CMakeFiles/sipeto.dir/src/tiktok.cpp.o.d -o CMakeFiles/sipeto.dir/src/tiktok.cpp.o -c /Users/dede/Code/Github/sipetoBot/src/tiktok.cpp

CMakeFiles/sipeto.dir/src/tiktok.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sipeto.dir/src/tiktok.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dede/Code/Github/sipetoBot/src/tiktok.cpp > CMakeFiles/sipeto.dir/src/tiktok.cpp.i

CMakeFiles/sipeto.dir/src/tiktok.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sipeto.dir/src/tiktok.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dede/Code/Github/sipetoBot/src/tiktok.cpp -o CMakeFiles/sipeto.dir/src/tiktok.cpp.s

CMakeFiles/sipeto.dir/src/sipeto.cpp.o: CMakeFiles/sipeto.dir/flags.make
CMakeFiles/sipeto.dir/src/sipeto.cpp.o: src/sipeto.cpp
CMakeFiles/sipeto.dir/src/sipeto.cpp.o: CMakeFiles/sipeto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dede/Code/Github/sipetoBot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sipeto.dir/src/sipeto.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sipeto.dir/src/sipeto.cpp.o -MF CMakeFiles/sipeto.dir/src/sipeto.cpp.o.d -o CMakeFiles/sipeto.dir/src/sipeto.cpp.o -c /Users/dede/Code/Github/sipetoBot/src/sipeto.cpp

CMakeFiles/sipeto.dir/src/sipeto.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sipeto.dir/src/sipeto.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dede/Code/Github/sipetoBot/src/sipeto.cpp > CMakeFiles/sipeto.dir/src/sipeto.cpp.i

CMakeFiles/sipeto.dir/src/sipeto.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sipeto.dir/src/sipeto.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dede/Code/Github/sipetoBot/src/sipeto.cpp -o CMakeFiles/sipeto.dir/src/sipeto.cpp.s

CMakeFiles/sipeto.dir/src/twitter.cpp.o: CMakeFiles/sipeto.dir/flags.make
CMakeFiles/sipeto.dir/src/twitter.cpp.o: src/twitter.cpp
CMakeFiles/sipeto.dir/src/twitter.cpp.o: CMakeFiles/sipeto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dede/Code/Github/sipetoBot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sipeto.dir/src/twitter.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sipeto.dir/src/twitter.cpp.o -MF CMakeFiles/sipeto.dir/src/twitter.cpp.o.d -o CMakeFiles/sipeto.dir/src/twitter.cpp.o -c /Users/dede/Code/Github/sipetoBot/src/twitter.cpp

CMakeFiles/sipeto.dir/src/twitter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sipeto.dir/src/twitter.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dede/Code/Github/sipetoBot/src/twitter.cpp > CMakeFiles/sipeto.dir/src/twitter.cpp.i

CMakeFiles/sipeto.dir/src/twitter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sipeto.dir/src/twitter.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dede/Code/Github/sipetoBot/src/twitter.cpp -o CMakeFiles/sipeto.dir/src/twitter.cpp.s

CMakeFiles/sipeto.dir/src/instagram.cpp.o: CMakeFiles/sipeto.dir/flags.make
CMakeFiles/sipeto.dir/src/instagram.cpp.o: src/instagram.cpp
CMakeFiles/sipeto.dir/src/instagram.cpp.o: CMakeFiles/sipeto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dede/Code/Github/sipetoBot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sipeto.dir/src/instagram.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sipeto.dir/src/instagram.cpp.o -MF CMakeFiles/sipeto.dir/src/instagram.cpp.o.d -o CMakeFiles/sipeto.dir/src/instagram.cpp.o -c /Users/dede/Code/Github/sipetoBot/src/instagram.cpp

CMakeFiles/sipeto.dir/src/instagram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sipeto.dir/src/instagram.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dede/Code/Github/sipetoBot/src/instagram.cpp > CMakeFiles/sipeto.dir/src/instagram.cpp.i

CMakeFiles/sipeto.dir/src/instagram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sipeto.dir/src/instagram.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dede/Code/Github/sipetoBot/src/instagram.cpp -o CMakeFiles/sipeto.dir/src/instagram.cpp.s

CMakeFiles/sipeto.dir/src/media_downloader.cpp.o: CMakeFiles/sipeto.dir/flags.make
CMakeFiles/sipeto.dir/src/media_downloader.cpp.o: src/media_downloader.cpp
CMakeFiles/sipeto.dir/src/media_downloader.cpp.o: CMakeFiles/sipeto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dede/Code/Github/sipetoBot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/sipeto.dir/src/media_downloader.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sipeto.dir/src/media_downloader.cpp.o -MF CMakeFiles/sipeto.dir/src/media_downloader.cpp.o.d -o CMakeFiles/sipeto.dir/src/media_downloader.cpp.o -c /Users/dede/Code/Github/sipetoBot/src/media_downloader.cpp

CMakeFiles/sipeto.dir/src/media_downloader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sipeto.dir/src/media_downloader.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dede/Code/Github/sipetoBot/src/media_downloader.cpp > CMakeFiles/sipeto.dir/src/media_downloader.cpp.i

CMakeFiles/sipeto.dir/src/media_downloader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sipeto.dir/src/media_downloader.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dede/Code/Github/sipetoBot/src/media_downloader.cpp -o CMakeFiles/sipeto.dir/src/media_downloader.cpp.s

CMakeFiles/sipeto.dir/src/simple_http_server.cpp.o: CMakeFiles/sipeto.dir/flags.make
CMakeFiles/sipeto.dir/src/simple_http_server.cpp.o: src/simple_http_server.cpp
CMakeFiles/sipeto.dir/src/simple_http_server.cpp.o: CMakeFiles/sipeto.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dede/Code/Github/sipetoBot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/sipeto.dir/src/simple_http_server.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sipeto.dir/src/simple_http_server.cpp.o -MF CMakeFiles/sipeto.dir/src/simple_http_server.cpp.o.d -o CMakeFiles/sipeto.dir/src/simple_http_server.cpp.o -c /Users/dede/Code/Github/sipetoBot/src/simple_http_server.cpp

CMakeFiles/sipeto.dir/src/simple_http_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sipeto.dir/src/simple_http_server.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dede/Code/Github/sipetoBot/src/simple_http_server.cpp > CMakeFiles/sipeto.dir/src/simple_http_server.cpp.i

CMakeFiles/sipeto.dir/src/simple_http_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sipeto.dir/src/simple_http_server.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dede/Code/Github/sipetoBot/src/simple_http_server.cpp -o CMakeFiles/sipeto.dir/src/simple_http_server.cpp.s

# Object files for target sipeto
sipeto_OBJECTS = \
"CMakeFiles/sipeto.dir/src/main.cpp.o" \
"CMakeFiles/sipeto.dir/src/tiktok.cpp.o" \
"CMakeFiles/sipeto.dir/src/sipeto.cpp.o" \
"CMakeFiles/sipeto.dir/src/twitter.cpp.o" \
"CMakeFiles/sipeto.dir/src/instagram.cpp.o" \
"CMakeFiles/sipeto.dir/src/media_downloader.cpp.o" \
"CMakeFiles/sipeto.dir/src/simple_http_server.cpp.o"

# External object files for target sipeto
sipeto_EXTERNAL_OBJECTS =

sipeto: CMakeFiles/sipeto.dir/src/main.cpp.o
sipeto: CMakeFiles/sipeto.dir/src/tiktok.cpp.o
sipeto: CMakeFiles/sipeto.dir/src/sipeto.cpp.o
sipeto: CMakeFiles/sipeto.dir/src/twitter.cpp.o
sipeto: CMakeFiles/sipeto.dir/src/instagram.cpp.o
sipeto: CMakeFiles/sipeto.dir/src/media_downloader.cpp.o
sipeto: CMakeFiles/sipeto.dir/src/simple_http_server.cpp.o
sipeto: CMakeFiles/sipeto.dir/build.make
sipeto: /usr/local/lib/libspdlog.1.11.0.dylib
sipeto: /usr/local/lib/libboost_system-mt.dylib
sipeto: /usr/local/lib/libboost_thread-mt.dylib
sipeto: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.3.sdk/usr/lib/libcurl.tbd
sipeto: /usr/local/lib/libtdjson.dylib
sipeto: /usr/local/Cellar/jsoncpp/1.9.5/lib/libjsoncpp.dylib
sipeto: /usr/local/lib/libfmt.9.1.0.dylib
sipeto: CMakeFiles/sipeto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dede/Code/Github/sipetoBot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable sipeto"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sipeto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sipeto.dir/build: sipeto
.PHONY : CMakeFiles/sipeto.dir/build

CMakeFiles/sipeto.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sipeto.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sipeto.dir/clean

CMakeFiles/sipeto.dir/depend:
	cd /Users/dede/Code/Github/sipetoBot && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dede/Code/Github/sipetoBot /Users/dede/Code/Github/sipetoBot /Users/dede/Code/Github/sipetoBot /Users/dede/Code/Github/sipetoBot /Users/dede/Code/Github/sipetoBot/CMakeFiles/sipeto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sipeto.dir/depend

