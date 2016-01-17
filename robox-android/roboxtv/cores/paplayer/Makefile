ARCH=arm

.PHONY: compile

ifneq ($(findstring osx,$(ARCH)), osx)
CFLAGS += -DHAS_ALSA
CXXFLAGS += -DHAS_ALSA
endif

SRCS  = AudioDecoder.cpp
SRCS += CodecFactory.cpp
SRCS += VideoPlayerCodec.cpp
SRCS += PAPlayer.cpp

LIB = paplayer.a

include /home/zach/zach/opt/kodi-android/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))
