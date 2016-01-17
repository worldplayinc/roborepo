ifeq (1, 1)
INCLUDES+=-I/home/zach/zach/opt/kodi-android/lib/libUPnP \
          -I/home/zach/zach/opt/kodi-android/lib/libUPnP/Platinum/Source/Core \
          -I/home/zach/zach/opt/kodi-android/lib/libUPnP/Platinum/Source/Platinum \
          -I/home/zach/zach/opt/kodi-android/lib/libUPnP/Platinum/Source/Devices/MediaConnect \
          -I/home/zach/zach/opt/kodi-android/lib/libUPnP/Platinum/Source/Devices/MediaRenderer \
          -I/home/zach/zach/opt/kodi-android/lib/libUPnP/Platinum/Source/Devices/MediaServer \
          -I/home/zach/zach/opt/kodi-android/lib/libUPnP/Platinum/Source/Extras \
          -I/home/zach/zach/opt/kodi-android/lib/libUPnP/Neptune/Source/System/Posix \
          -I/home/zach/zach/opt/kodi-android/lib/libUPnP/Neptune/Source/Core

SRCS= UPnP.cpp \
      UPnPInternal.cpp \
      UPnPPlayer.cpp \
      UPnPRenderer.cpp \
      UPnPServer.cpp \
      UPnPSettings.cpp \

LIB=upnp.a

include /home/zach/zach/opt/kodi-android/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

endif

