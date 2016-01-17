set(CMAKE_SYSTEM_VERSION 1)
set(OS "android")
set(CPU "armeabi-v7a")
set(PLATFORM "")
if("${OS}" STREQUAL "linux" OR "${OS}" STREQUAL "android")
  set(CMAKE_SYSTEM_NAME Linux)
endif()

set(CMAKE_FIND_ROOT_PATH @CMAKE_FIND_ROOT_PATH@)

# set special CORE_SYSTEM_NAME
if("${OS}" STREQUAL "android")
  set(CORE_SYSTEM_NAME android)
  list(APPEND CMAKE_FIND_ROOT_PATH /home/zach/zach/opt/android-toolchain/android-17/sysroot/usr)
elseif("${OS}" STREQUAL "osx")
  set(CORE_SYSTEM_NAME osx)
elseif("${OS}" STREQUAL "ios")
  set(CORE_SYSTEM_NAME ios)
elseif("${PLATFORM}" STREQUAL "raspberry-pi")
  set(CORE_SYSTEM_NAME rbpi)
  list(APPEND CMAKE_FIND_ROOT_PATH /opt/vc)
  set(CMAKE_LIBRARY_PATH @CMAKE_FIND_ROOT_PATH@/lib:/opt/vc/lib)
  set(CMAKE_INCLUDE_PATH @CMAKE_FIND_ROOT_PATH@/include:/opt/vc/include)
endif()


if("${OS}" STREQUAL "ios" OR "${OS}" STREQUAL "osx")
  set(CMAKE_OSX_SYSROOT /home/zach/zach/opt/android-sdk-linux)
  list(APPEND CMAKE_FIND_ROOT_PATH ${CMAKE_OSX_SYSROOT} ${CMAKE_OSX_SYSROOT}/usr /usr/X11R6)
  set(CMAKE_LIBRARY_PATH @CMAKE_FIND_ROOT_PATH@/lib:/home/zach/zach/opt/android-sdk-linux/lib:/usr/X11R6/lib)
  set(CMAKE_INCLUDE_PATH @CMAKE_FIND_ROOT_PATH@/include:/home/zach/zach/opt/android-sdk-linux/include:/usr/X11R6/include)
endif()

# specify the cross compiler
set(CMAKE_C_COMPILER   /home/zach/zach/opt/android-toolchain/android-17/bin/arm-linux-androideabi-gcc)
set(CMAKE_CXX_COMPILER /home/zach/zach/opt/android-toolchain/android-17/bin/arm-linux-androideabi-g++)
set(CMAKE_AR /home/zach/zach/opt/android-toolchain/android-17/bin/arm-linux-androideabi-ar CACHE FILEPATH "Archiver")
set(CMAKE_LINKER /home/zach/zach/opt/android-toolchain/android-17/bin/arm-linux-androideabi-ld CACHE FILEPATH "Linker")
set(CMAKE_C_FLAGS "-DANDROID -Os -fexceptions -march=armv7-a -mtune=cortex-a9 -mfloat-abi=softfp -mfpu=neon  -I/home/zach/zach/opt/xbmc-depends/arm-linux-androideabi-android-17/include/android-17")
set(CMAKE_CXX_FLAGS "-DANDROID -Os -fexceptions -march=armv7-a -mtune=cortex-a9 -mfloat-abi=softfp -mfpu=neon -frtti -g -O2 -std=gnu++11 -I/home/zach/zach/opt/xbmc-depends/arm-linux-androideabi-android-17/include/android-17")
set(CMAKE_CPP_FLAGS "-DANDROID -Os -fexceptions -march=armv7-a -mtune=cortex-a9 -mfloat-abi=softfp -mfpu=neon  -I/home/zach/zach/opt/xbmc-depends/arm-linux-androideabi-android-17/include/android-17")
set(CMAKE_LD_FLAGS "-L/home/zach/zach/opt/xbmc-depends/arm-linux-androideabi-android-17/lib/android-17  ")
set(ENV{CFLAGS} ${CMAKE_C_FLAGS})
set(ENV{CXXFLAGS} ${CMAKE_CXX_FLAGS})
set(ENV{CPPFLAGS} ${CMAKE_CPP_FLAGS})
set(ENV{LDFLAGS} ${CMAKE_LD_FLAGS})

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

if(NOT OS STREQUAL "linux")
  set(ADDONS_PREFER_STATIC_LIBS ON)
endif()
