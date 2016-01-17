WII_EXTRA_OPTS=
CLEAN_FILES=Clients/WiiRemote/WiiRemote
PYTHON_SITEDIR := $(shell python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()")

all: install

wiimote: Clients/WiiRemote/WiiRemote

Clients/WiiRemote/WiiRemote:
	cd Clients/WiiRemote && \
	$(CXX) $(CXXFLAGS) $(LDFLAGS) CWIID_WiiRemote.cpp -lcwiid -lbluetooth -DICON_PATH="\"$(datarootdir)/pixmaps/roboxtv/\"" $(WII_EXTRA_OPTS) -o WiiRemote

j2me-remote:
	cd Clients/J2ME\ Client
	ant -f build.xml

install: Clients/WiiRemote/WiiRemote
	mkdir -p $(DESTDIR)$(bindir)
	cp -a Clients/WiiRemote/WiiRemote $(DESTDIR)$(bindir)/roboxtv-wiiremote
	cp -a Clients/J2ME\ Client/j2me_remote.py $(DESTDIR)$(bindir)/roboxtv-j2meremote
	cp -a Clients/PS3\ BD\ Remote/ps3_remote.py $(DESTDIR)$(bindir)/roboxtv-ps3remote
	cp -a Clients/PS3\ Sixaxis\ Controller/ps3d.py $(DESTDIR)$(bindir)/roboxtv-ps3d
	cp -a Clients/Kodi\ Send/kodi-send.py $(DESTDIR)$(bindir)/roboxtv-send
	mkdir -p $(DESTDIR)$(PYTHON_SITEDIR)/roboxtv
	echo 'ICON_PATH="$(datarootdir)/pixmaps/roboxtv/"' > $(DESTDIR)$(PYTHON_SITEDIR)/roboxtv/defs.py
	cp -a lib/python/* $(DESTDIR)$(PYTHON_SITEDIR)/roboxtv/
	cp -a Clients/PS3\ BD\ Remote/ps3_remote.py $(DESTDIR)$(PYTHON_SITEDIR)/roboxtv/
	mkdir -p $(DESTDIR)$(includedir)/roboxtv
	cp -a lib/c++/* $(DESTDIR)$(includedir)/roboxtv/
	mkdir -p $(DESTDIR)$(datarootdir)/pixmaps/roboxtv
	cp -a icons/* $(DESTDIR)$(datarootdir)/pixmaps/roboxtv/

include ../../Makefile.include
