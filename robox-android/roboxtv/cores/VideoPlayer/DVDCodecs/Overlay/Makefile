INCLUDES+=-I/home/zach/zach/opt/kodi-android/xbmc/cores/VideoPlayer

SRCS  = DVDOverlayCodec.cpp
SRCS += DVDOverlayCodecFFmpeg.cpp
SRCS += DVDOverlayCodecSSA.cpp
SRCS += DVDOverlayCodecText.cpp
SRCS += DVDOverlayCodecTX3G.cpp
SRCS += contrib/cc_decoder.c
SRCS += contrib/cc_decoder708.cpp

LIB = Overlay.a

include /home/zach/zach/opt/kodi-android/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

