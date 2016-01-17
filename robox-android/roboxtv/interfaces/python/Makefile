ifeq (0,1)
DOXYGEN=none
endif

TOPDIR = /home/zach/zach/opt/kodi-android
INTERFACES_DIR = /home/zach/zach/opt/kodi-android/xbmc/interfaces
JAVA=/usr/bin/java
SWIG=/home/zach/zach/opt/xbmc-depends/x86_64-linux-gnu-native/bin/swig
LIB=python_binding.a
all: $(LIB)

include ../../../codegenerator.mk

SRCS =	AddonPythonInvoker.cpp \
	CallbackHandler.cpp \
	ContextItemAddonInvoker.cpp \
	LanguageHook.cpp \
	PythonInvoker.cpp \
	XBPython.cpp \
	swig.cpp \
	PyContext.cpp \
	$(GENERATED)

INCLUDES += -I/home/zach/zach/opt/xbmc-depends/arm-linux-androideabi-android-17/include/python2.7
.SECONDARY: $(GENERATED)

include ../../../Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))

