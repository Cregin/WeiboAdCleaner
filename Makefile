THEOS_DEVICE_IP = 192.168.1.105

include $(THEOS)/makefiles/common.mk
ARCHS = armv7 arm64
TARGET = iphone:8.0:10.0
iOSREProject_FRAMEWORKS = UIKit

TWEAK_NAME = weiboADCleaner
weiboADCleaner_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
