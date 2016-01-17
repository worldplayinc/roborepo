
ARCH=arm
CC=/home/zach/zach/opt/android-toolchain/android-17/bin/arm-linux-androideabi-gcc
CXX=/home/zach/zach/opt/android-toolchain/android-17/bin/arm-linux-androideabi-g++

SYSDIR=/home/zach/zach/opt/kodi-android/system/players/VideoPlayer
SOS= libdvdnav-$(ARCH).so
DIRS=	libdvdread \
	libdvdnav

WRAPPER=/home/zach/zach/opt/kodi-android/xbmc/cores/DllLoader/exports/wrapper.o
WRAPPER_MACH_ALIAS=/home/zach/zach/opt/kodi-android/xbmc/cores/DllLoader/exports/wrapper_mach_alias

ifeq ($(findstring osx,$(ARCH)),osx)
LDFLAGS +=-bundle -undefined dynamic_lookup -read_only_relocs suppress
else
LDFLAGS += -shared -fPIC -rdynamic
endif

ifeq ($(ARCH), powerpc-osx)
	# Add -lbundle1.o for powerpc-osx
	BUNDLE1_O = -lbundle1.o
endif

# Allows us to optionally build xbmc with DVDCSS support
ifeq (1,1)
  DIRS += libdvdcss
  SOS += libdvdcss-$(ARCH).so
  DVDCSS_A = libdvdcss/.libs/libdvdcss.a
  DVDCSS_O = libdvdcss/src/.libs/*.o
  DVDNAV_PREREQ = libdvdcss
endif

SLIB=$(addprefix $(SYSDIR)/, $(SOS))

DISTCLEAN_FILES=includes/dvdread/*.h \
		includes/dvdcss/*.h \
		libdvdnav/config.h \
		libdvdread/config.h

.PHONY: $(DIRS) compile

all: $(SLIB)

ifeq ($(findstring osx,$(ARCH)), osx)

$(SYSDIR)/libdvdcss-$(ARCH).so:  $($(WRAPPER)) libdvdcss/.libs/libdvdcss.a
	$(CC) $(LDFLAGS) -Wl,-alias_list,$(WRAPPER_MACH_ALIAS) -o $@ \
		$(WRAPPER) libdvdcss/src/*.o $(BUNDLE1_O)

$(SYSDIR)/libdvdnav-$(ARCH).so: $($(WRAPPER)) $(DVDCSS_A) libdvdread/obj/libdvdread.a libdvdnav/obj/libdvdnav.a
	$(CC) $(LDFLAGS) -Wl,-alias_list,$(WRAPPER_MACH_ALIAS) -o $@ \
		$(WRAPPER) $(DVDCSS_O) libdvdread/obj/*.o libdvdnav/obj/*.o $(BUNDLE1_O)

else

$(SYSDIR)/libdvdcss-$(ARCH).so: $(WRAPPER) libdvdcss/.libs/libdvdcss.a
	$(CC) -o $@ $(LDFLAGS) -Wl,--soname,$@ \
		libdvdcss/src/*.o -Wl,--unresolved-symbols=ignore-all -lm \
		`cat $(WRAPPER:.o=.def)` $(WRAPPER)

$(SYSDIR)/libdvdnav-$(ARCH).so: $(WRAPPER) $(DVDCSS_A) libdvdread/obj/libdvdread.a libdvdnav/obj/libdvdnav.a
	$(CC) -o $@ $(LDFLAGS) -Wl,--soname,$@ $(DVDCSS_O) libdvdread/obj/*.o libdvdnav/obj/*.o -lm \
		-Wl,--unresolved-symbols=ignore-all \
		`cat $(WRAPPER:.o=.def)` $(WRAPPER)

endif

libdvdcss/.libs/libdvdcss.a: libdvdcss;
libdvdcss: compile
	$(MAKE) -C $@

libdvdread/obj/libdvdread.a: libdvdread;
libdvdread: compile
	$(MAKE) -C $@

libdvdnav/obj/libdvdnav.a: libdvdnav;
libdvdnav: compile
	$(MAKE) -C $@

include /home/zach/zach/opt/kodi-android/Makefile.include

