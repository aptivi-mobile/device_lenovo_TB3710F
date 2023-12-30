#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TB3710F device
$(call inherit-product, device/lenovo/TB3710F/device.mk)

PRODUCT_DEVICE := TB3710F
PRODUCT_NAME := omni_TB3710F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB3-710F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_hq8127_tb_b2b_l-user 5.0.1 LRX21M 1489656161 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB3-710F/TB3-710F:5.0.1/LRX21M/TB3-710F_S000028_170316_ROW:user/release-keys
