SRCS  = PeripheralBus.cpp

ifeq (0,1)
SRCS += linux/PeripheralBusUSBLibUdev.cpp
endif

ifeq (1,1)
SRCS += linux/PeripheralBusUSBLibUSB.cpp
endif

ifeq ($(findstring osx,arm),osx)
SRCS += osx/PeripheralBusUSB.cpp
endif

ifeq (1,1)
SRCS += virtual/PeripheralBusCEC.cpp
endif

LIB = peripheral-bus.a

include /home/zach/zach/opt/kodi-android/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))
