
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/TB3710F/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

# call dalvik heap config & hwui memory config
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)     
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# The gps config
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_CHARACTERISTICS := tablet

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := TB3710F
PRODUCT_NAME := lineage_TB3710F
PRODUCT_MODEL := Lenovo TB3-710F
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BRAND := Lenovo
PRODUCT_RELEASE_NAME := TB3-710F
PRODUCT_CHARACTERISTICS := tablet
TARGET_VENDOR_RELEASE_BUILD_ID := TB3710F_LOS160V1
TARGET_VENDOR_PRODUCT_NAME := LenovoTB3-710F
TARGET_VENDOR_DEVICE_NAME := TB3-710F

# Resolution
TARGET_SCREEN_WIDTH := 600
TARGET_SCREEN_HEIGHT := 1024

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
