.SUFFIXES : .m .mm .cpp

SRCS  = main.cpp

LIB=posix.a

include /home/zach/zach/opt/kodi-android/Makefile.include
-include $(patsubst %.mm,%.P,$(patsubst %.cpp,%.P,$(patsubst %.c,%.P,$(SRCS))))
