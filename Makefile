TARGET = iphone:11.2:10.0
PACKAGE_VERSION = 0.0.4.5

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouPip
YouPip_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 YouTube || true"