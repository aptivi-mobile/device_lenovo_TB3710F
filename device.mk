LOCAL_PATH  := device/lenovo/TB3710F

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Additional includes
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Install init.d scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/99exfat-support:system/etc/init.d/99exfat-support

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := hdpi mdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

ifeq ($(TARGET_BUILD_VARIANT),eng)

PRODUCT_PROPERTY_OVERRIDES += \
       ro.secure=0 \
       ro.adb.secure=0 \
       persist.service.adb.enable=1 \
       persist.service.debuggable=1 \
       persist.sys.usb.config=adb \
       ro.securestorage.support=false

endif

# no RIL
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=1 \
    ro.radio.use-ppp=no \
    ro.config.nocheckin=yes \
    ro.radio.noril=1 \
    ro.carrier=wifi-only \
    persist.radio.noril=1

# Ramdisk
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/ramdisk,root)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:system/vendor/etc/seccomp_policy/mediacodec.policy

# Bluetooth config files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    $(LOCAL_PATH)/configs/bluetooth/btconfig.xml:system/etc/bluetooth/btconfig.xml

# Wifi config files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Audio policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# ramdisk
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/ramdisk,root)

# Product Packages

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx \
    libwifi-hal-mt66xx \
    wifi_hal \
    libwpa_client \
    hostapd \
    wpa_supplicant

# Bluetooth
PRODUCT_PACKAGES += \
	bluetooth.default \
    libbt-vendor

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
    audio_policy.default \
    audio_policy.stub \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudiopolicymanager \
    libtinymix \
    libtinyalsa \
    libtinycompress \
    libtinyxml

# camera
PRODUCT_PACKAGES += \
    Camera2

# Power
PRODUCT_PACKAGES += \
	power.default

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    cm_charger_res_images \
    libnl_2

# network
PRODUCT_PACKAGES += \
    netd

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Mtk old binaries
PRODUCT_PACKAGES += \
    libxlog \
    libmtk_symbols \
    libstlport \
    lights.mt8127

# Display
PRODUCT_PACKAGES += \
    libion

# Root
PRODUCT_PACKAGES += \
    su

# Misc
PRODUCT_PACKAGES += \
    libcurl \
    libdpframework \
    libmemtrack \
    libstlport \
    clatd.conf \
    bt_stack.conf \
    bt_did.conf

# DRM
PRODUCT_PACKAGES += \
    libdrm \
    libmockdrmcryptoplugin \
    libdrmclearkeyplugin

# Sensor Calibration
PRODUCT_PACKAGES += \
    libem_sensor_jni

# Sensor
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/_hals.conf:system/vendor/etc/sensors/_hals.conf

PRODUCT_PACKAGES += \
    sensors.mt8127

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs \
    resize2fs \
    setup_fs \
    ext4_resize \
    libext2_blkid \
    libext2_uuid_static \
    superumount

# exFAT
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat

# NTFS
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs

# USB
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Misc
PRODUCT_PACKAGES += \
    libcurl \
    libboringssl-compat

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

# libbt-vendor
PRODUCT_PACKAGES += \
    libbt-vendor

# TextClassifier smart selection model files
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2017-11-06

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="TB3-710F"

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


# hidl packages
$(call inherit-product, $(LOCAL_PATH)/hidl.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lenovo/TB3710F/TB3710F-vendor.mk)
