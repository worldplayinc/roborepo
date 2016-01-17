CXXFLAGS += -D__STDC_FORMAT_MACROS

SRCS  = OMXHelper.cpp
SRCS += OMXAudio.cpp
SRCS += OMXVideo.cpp
SRCS += OMXAudioCodecOMX.cpp
SRCS += OMXPlayerAudio.cpp
SRCS += OMXPlayerVideo.cpp
SRCS += OMXImage.cpp

LIB = omxplayer.a

/home/zach/zach/opt/kodi-android/system/advancedsettings.xml: $(LIB)
	cp -f omxplayer_advancedsettings.xml $@

include /home/zach/zach/opt/kodi-android/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

