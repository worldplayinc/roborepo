INCLUDES+=-I/home/zach/zach/opt/kodi-android/xbmc/cores/VideoPlayer

CXXFLAGS+=-DHAVE_MMX

SRCS  = DVDAudioCodecFFmpeg.cpp
SRCS += DVDAudioCodecPassthrough.cpp

LIB=Audio.a

include /home/zach/zach/opt/kodi-android/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

