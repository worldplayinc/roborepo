SRCS=

ifeq (0,1)
SRCS += RendererVAAPI.cpp
SRCS += RendererVDPAU.cpp
SRCS += RendererMediaCodec.cpp
endif

ifeq (,1)
SRCS += MMALRenderer.cpp
endif

ifeq (1,1)
SRCS += RendererVTB.cpp
SRCS += RendererIMX.cpp
SRCS += RendererOpenMax.cpp
SRCS += RendererMediaCodec.cpp
SRCS += RendererMediaCodecSurface.cpp
endif

ifeq (1,1)
SRCS += RendererAML.cpp
endif

ifeq ($(findstring osx,arm),osx)
SRCS += RendererVDA.cpp
endif

LIB=HwDecRender.a

include ../../../../../Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))
