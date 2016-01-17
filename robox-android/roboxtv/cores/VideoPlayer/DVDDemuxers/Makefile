INCLUDES+=-I/home/zach/zach/opt/kodi-android/xbmc/cores/VideoPlayer

SRCS  = DVDDemux.cpp
SRCS += DVDDemuxBXA.cpp
SRCS += DVDDemuxCDDA.cpp
SRCS += DVDDemuxFFmpeg.cpp
SRCS += DVDDemuxPVRClient.cpp
SRCS += DVDDemuxShoutcast.cpp
SRCS += DVDDemuxUtils.cpp
SRCS += DVDDemuxVobsub.cpp
SRCS += DVDDemuxCC.cpp
SRCS += DVDFactoryDemuxer.cpp

LIB = DVDDemuxers.a

include /home/zach/zach/opt/kodi-android/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

