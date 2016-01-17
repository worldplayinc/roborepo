SET(OS "linux")
SET(CPU "x86_64")
SET(PLATFORM "")
IF("${OS}" STREQUAL "linux" OR "${OS}" STREQUAL "android")
SET(CMAKE_SYSTEM_NAME Linux)
ENDIF()

# set special CORE_SYSTEM_NAME
IF("${OS}" STREQUAL "android")
SET(CORE_SYSTEM_NAME android)
ELSEIF("${OS}" STREQUAL "ios")
SET(CORE_SYSTEM_NAME ios)
ELSEIF("${PLATFORM}" STREQUAL "raspberry-pi")
SET(CORE_SYSTEM_NAME rbpi)
ENDIF()

IF("${OS}" STREQUAL "ios" OR "${OS}" STREQUAL "osx")
SET(CMAKE_OSX_SYSROOT )
ENDIF()
SET(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler
SET(CMAKE_C_COMPILER   /usr/bin/gcc)
SET(CMAKE_CXX_COMPILER /usr/bin/g++)
SET(CMAKE_AR /usr/bin/ar CACHE FILEPATH "Archiver")
SET(CMAKE_LINKER /usr/bin/ld CACHE FILEPATH "Linker")

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH  /home/zach/zach/opt/xbmc-depends/x86_64-linux-gnu /home/zach/zach/opt/android-toolchain/android-17 /home/zach/zach/opt/android-toolchain/android-17/usr  /usr /home/zach/zach/opt/android-toolchain/android-17/sysroot/usr)
SET(CMAKE_LIBRARY_PATH /home/zach/zach/opt/xbmc-depends/x86_64-linux-gnu/lib:/home/zach/zach/opt/android-toolchain/android-17/usr/lib/x86_64-linux-gnu:/home/zach/zach/opt/android-toolchain/android-17/lib/x86_64-linux-gnu)

# add RBPI's firmware directories
IF("${CORE_SYSTEM_NAME}" STREQUAL "rbpi")
  LIST(APPEND CMAKE_FIND_ROOT_PATH /opt/vc)
  LIST(APPEND CMAKE_LIBRARY_PATH /opt/vc/lib)
ENDIF()

SET(CMAKE_C_FLAGS "-fPIC -DPIC   -isystem /home/zach/zach/opt/xbmc-depends/x86_64-linux-gnu/include")
SET(CMAKE_CXX_FLAGS "-fPIC -DPIC -g -O2 -std=gnu++11  -isystem /home/zach/zach/opt/xbmc-depends/x86_64-linux-gnu/include")
SET(CMAKE_CPP_FLAGS "-fPIC -DPIC   -isystem /home/zach/zach/opt/xbmc-depends/x86_64-linux-gnu/include")
SET(ENV{CFLAGS} ${CMAKE_C_FLAGS})
SET(ENV{CXXFLAGS} ${CMAKE_CXX_FLAGS})
SET(ENV{CPPFLAGS} ${CMAKE_CPP_FLAGS})
SET(ENV{LDFLAGS} "-L/home/zach/zach/opt/xbmc-depends/x86_64-linux-gnu/lib   ")
# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Binary Addons
IF(NOT OS STREQUAL "linux")
SET(ADDONS_PREFER_STATIC_LIBS ON)
ENDIF()
