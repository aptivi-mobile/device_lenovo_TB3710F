DEVICE_DIR := device/lenovo/TB3710F

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_DIR)/overlay

# Additional includes
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_DIR)/include

# Install init.d scripts
PRODUCT_COPY_FILES += \
    $(DEVICE_DIR)/configs/99exfat-support:system/etc/init.d/99exfat-support

# Ramdisk
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_DIR)/ramdisk,root)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(DEVICE_DIR)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(DEVICE_DIR)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(DEVICE_DIR)/configs/media/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(DEVICE_DIR)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Wifi config files
PRODUCT_COPY_FILES += \
    $(DEVICE_DIR)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_DIR)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(DEVICE_DIR)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(DEVICE_DIR)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(DEVICE_DIR)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(DEVICE_DIR)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

# TWRP
PRODUCT_COPY_FILES += \
    $(DEVICE_DIR)/ramdisk/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(DEVICE_DIR)/ramdisk/fstab.mt8127:recovery/root/fstab.mt8127 \
    $(DEVICE_DIR)/ramdisk/init.mt8127.rc:recovery/root/init.mt8127.rc \
    $(DEVICE_DIR)/ramdisk/init.mt8127.usb.rc:recovery/root/init.mt8127.usb.rc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="TB3-710F"

# no RIL
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=1 \
    ro.radio.use-ppp=no \
    ro.config.nocheckin=yes \
    ro.radio.noril=1 \
    ro.carrier=wifi-only \
    persist.radio.noril=1

# red border fix - Thx to thp@1997
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.strictmode.visual=0 \
    persist.sys.strictmode.disable=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1

# Don't enable sdcardfs! It won't work and will cause apps to fail to write data to the
# internal storage, causing some of them to FC! It's not compatible with the TB3-710F.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=false
