TARGET=Textures.xbt

IMAGES := $(shell find . -name "*jpg")
IMAGES += $(shell find . -name "*png")
IMAGES += $(shell find . -name "*gif")

all: $(TARGET)

.PHONY: force

$(TARGET): $(IMAGES)
ifeq (arm,arm)
	/home/zach/zach/opt/xbmc-depends/x86_64-linux-gnu-native/bin/TexturePacker -dupecheck -use_none -input . -output $(TARGET)
else
	/home/zach/zach/opt/xbmc-depends/x86_64-linux-gnu-native/bin/TexturePacker -dupecheck -input . -output $(TARGET)

endif

clean:
	rm -f $(TARGET)
distclean: clean

