ARCH=arm

OBJS +=libexif.o ExifParse.o IptcParse.o JpegParse.o
CFLAGS +=-D_LINUX -D_DLL -fPIC -O2
CXXFLAGS +=-D_LINUX -D_DLL -fPIC -O2

SYSDIR=/home/zach/zach/opt/kodi-android/system
SO=libexif-$(ARCH).so
SLIB=/home/zach/zach/opt/kodi-android/system/$(SO)

$(SLIB): $(OBJS)
ifeq ($(findstring osx,$(ARCH)), osx)
	$(CXX) $(LDFLAGS) -Wl,-alias_list,/home/zach/zach/opt/kodi-android/xbmc/cores/DllLoader/exports/wrapper_mach_alias \
		-bundle -undefined dynamic_lookup -read_only_relocs suppress -o $@ \
		/home/zach/zach/opt/kodi-android/xbmc/cores/DllLoader/exports/wrapper.o $(OBJS)
else
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -shared -o $@ $(OBJS) -Wl,--unresolved-symbols=ignore-all \
		`cat /home/zach/zach/opt/kodi-android/xbmc/cores/DllLoader/exports/wrapper.def` /home/zach/zach/opt/kodi-android/xbmc/cores/DllLoader/exports/wrapper.o
endif

include /home/zach/zach/opt/kodi-android/Makefile.include
