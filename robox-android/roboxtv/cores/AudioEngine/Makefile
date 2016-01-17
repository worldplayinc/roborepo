ARCH=arm

INCLUDES  = -I.
INCLUDES += -I/home/zach/zach/opt/kodi-android/xbmc
INCLUDES += -I/home/zach/zach/opt/kodi-android/xbmc/linux
INCLUDES += -I/home/zach/zach/opt/kodi-android/xbmc/utils
INCLUDES += -I/home/zach/zach/opt/kodi-android/xbmc/guilib
INCLUDES += -I/home/zach/zach/opt/kodi-android/xbmc/cores
INCLUDES += -I/home/zach/zach/opt/kodi-android/xbmc/cores/VideoPlayer
INCLUDES += -I/home/zach/zach/opt/kodi-android/xbmc/cores/VideoPlayer/Codecs/ffmpeg

OSSLIBDIR=0
-include /etc/oss.conf
ifneq (0,${OSSLIBDIR})
  INCLUDES += -I$(OSSLIBDIR)/include
  CXXFLAGS += -DOSS4
endif

CXXFLAGS += -D__STDC_LIMIT_MACROS

SRCS  = AEFactory.cpp

SRCS += AESinkFactory.cpp
SRCS += Sinks/AESinkNULL.cpp

SRCS += Sinks/AESinkPi.cpp

SRCS += AEResampleFactory.cpp

SRCS += Engines/ActiveAE/ActiveAE.cpp
SRCS += Engines/ActiveAE/ActiveAESink.cpp
SRCS += Engines/ActiveAE/ActiveAEStream.cpp
SRCS += Engines/ActiveAE/ActiveAESound.cpp
SRCS += Engines/ActiveAE/ActiveAEResampleFFMPEG.cpp
SRCS += Engines/ActiveAE/ActiveAEResamplePi.cpp
SRCS += Engines/ActiveAE/ActiveAEBuffer.cpp

ifeq (1,1)
SRCS += Sinks/AESinkAUDIOTRACK.cpp
else ifeq ($(findstring ios,arm),ios)
SRCS += Sinks/AESinkDARWINIOS.cpp
else ifeq ($(findstring osx,arm),osx)
SRCS += Sinks/AESinkDARWINOSX.cpp
SRCS += Sinks/osx/AEDeviceEnumerationOSX.cpp
SRCS += Sinks/osx/CoreAudioChannelLayout.cpp
SRCS += Sinks/osx/CoreAudioDevice.cpp
SRCS += Sinks/osx/CoreAudioHardware.cpp
SRCS += Sinks/osx/CoreAudioHelpers.cpp
SRCS += Sinks/osx/CoreAudioStream.cpp
else
SRCS += Sinks/AESinkALSA.cpp
SRCS += Sinks/alsa/ALSADeviceMonitor.cpp
SRCS += Sinks/alsa/ALSAHControlMonitor.cpp
SRCS += Sinks/AESinkOSS.cpp
ifeq (0,1)
SRCS += Sinks/AESinkPULSE.cpp
endif
endif

SRCS += DSPAddons/ActiveAEDSP.cpp
SRCS += DSPAddons/ActiveAEDSPMode.cpp
SRCS += DSPAddons/ActiveAEDSPAddon.cpp
SRCS += DSPAddons/ActiveAEDSPDatabase.cpp
SRCS += DSPAddons/ActiveAEDSPProcess.cpp

SRCS += Utils/AEChannelInfo.cpp
SRCS += Utils/AEBuffer.cpp
SRCS += Utils/AEUtil.cpp
SRCS += Utils/AEStreamInfo.cpp
SRCS += Utils/AEPackIEC61937.cpp
SRCS += Utils/AEBitstreamPacker.cpp
SRCS += Utils/AEELDParser.cpp
SRCS += Utils/AEDeviceInfo.cpp
SRCS += Utils/AELimiter.cpp

SRCS += Encoders/AEEncoderFFmpeg.cpp

LIB   = audioengine.a

include /home/zach/zach/opt/kodi-android/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))
