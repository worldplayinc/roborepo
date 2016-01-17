SRCS  = HTTPPythonInvoker.cpp \
        HTTPPythonWsgiInvoker.cpp \

LIB = httprequesthandlers-python.a

INCLUDES += -I/home/zach/zach/opt/xbmc-depends/arm-linux-androideabi-android-17/include/python2.7

include /home/zach/zach/opt/kodi-android/Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))
