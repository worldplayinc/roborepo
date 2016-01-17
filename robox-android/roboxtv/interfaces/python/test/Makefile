SRCS=	\
	TestSwig.cpp

LIB=pythonSwigTest.a

INCLUDES += -I../../../../lib/gtest/include
INCLUDES += -I/home/zach/zach/opt/xbmc-depends/arm-linux-androideabi-android-17/include/python2.7

include ../../../../Makefile.include
-include $(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS)))
