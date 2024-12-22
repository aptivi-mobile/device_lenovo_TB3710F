DEVICE_DIR := device/lenovo/TB3710F
KERNEL_DIR := kernel/lenovo/TB3710F

# Platform
TARGET_BOARD_PLATFORM := mt8127
TARGET_BOARD_PLATFORM_GPU := mali-450mp4

# Arch
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

TARGET_NO_BOOTLOADER := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_BOOTLOADER_BOARD_NAME := mt8127
TARGET_OTA_ASSERT_DEVICE := TB3-710F,TB3710F
BLOCK_BASED_OTA := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1992294400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5436866560
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=mt8127 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x04000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE) --cmdline "$(BOARD_KERNEL_CMDLINE)"
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE) --board " "
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/TB3710F/mkbootimg.mk
BOARD_CUSTOM_BOOTIMG += true
TARGET_KERNEL_SOURCE := $(KERNEL_DIR)
TARGET_KERNEL_CONFIG := mt8127_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage

# MTK
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
BOARD_EGL_CFG := $(DEVICE_DIR)/configs/egl.cfg
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USES_ION := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 1024*1024
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Surfaceflinger optimization for VD surfaces
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
VSYNC_EVENT_PHASE_OFFSET_NS := -5000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := -5000000

# Vold
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_KERNEL_HAVE_NTFS := true

# Camera
USE_CAMERA_STUB := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_CAMERASERVICE_CLOSES_NATIVE_HANDLES := true

# Legacy blobs
TARGET_NEEDS_TEXT_RELOCATIONS := true

# Fix video autoscaling on old OMX decoders
TARGET_OMX_LEGACY_RESCALING:= true

# WIFI
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0
WPA_SUPPLICANT_USE_HIDL := true

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_DIR)/bluetooth

# TWRP
ifneq (,$(strip $(wildcard bootable/recovery-twrp/twrp.cpp)))
RECOVERY_VARIANT := twrp
endif
TWHAVE_SELINUX := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TW_USE_TOOLBOX := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 128
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_SUPERSU := true
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "sys/class/thermal/thermal_zone1"
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# Filesystem and storage
TW_INCLUDE_CRYPTO := true
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_NTFS_3G := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Theme and graphics
TW_THEME := landscape_mdpi
TW_INCLUDE_FB2PNG := true
BOARD_HAS_FLIPPED_SCREEN := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_X := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# RECOVERY
ifeq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := $(DEVICE_DIR)/ramdisk/twrp.fstab
else
TARGET_RECOVERY_FSTAB := $(DEVICE_DIR)/recovery.fstab
endif
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file"

# system.prop
TARGET_SYSTEM_PROP := $(DEVICE_DIR)/system.prop

# Seccomp filter
BOARD_SECCOMP_POLICY += $(DEVICE_DIR)/seccomp

# SELinux
BOARD_SEPOLICY_DIRS += \
        $(DEVICE_PATH)/sepolicy-mtk/basic/non_plat \
        $(DEVICE_PATH)/sepolicy-mtk/bsp/non_plat \
        $(DEVICE_PATH)/sepolicy-mt8127/basic \
        $(DEVICE_PATH)/sepolicy-mt8127/bsp \
        $(DEVICE_PATH)/sepolicy

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
        $(DEVICE_PATH)/sepolicy-mtk/basic/plat_public \
        $(DEVICE_PATH)/sepolicy-mtk/bsp/plat_public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
        $(DEVICE_PATH)/sepolicy-mtk/basic/plat_private \
        $(DEVICE_PATH)/sepolicy-mtk/bsp/plat_private

# Shims
TARGET_LD_SHIM_LIBS := \
	/system/bin/guiext-server|libmtk_symbols.so \
	/system/lib/libgui_ext.so|libmtk_symbols.so \
	/system/lib/hw/hwcomposer.mt8127.so|libmtk_symbols.so \
	/system/lib/libMtkOmxVenc.so|libmtk_symbols.so \
	/system/vendor/lib/libvcodecdrv.so|libmtk_symbols.so \
	/system/lib/libcam_utils.so|libmtk_symbols.so \
	/system/lib/libcam.utils.sensorlistener.so|libmtk_symbols.so \
	/system/vendor/lib/libwvm.so|libmtk_symbols.so \
	/system/lib/libcam.utils.sensorlistener.so|libmtk_symbols.so \
	/system/lib/hw/gps.mt8127.so|libboringssl-compat.so

# DEXPREOPT
ifeq ($(TARGET_BUILD_VARIANT),user)
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true
endif

# Configure jemalloc for low memory
MALLOC_SVELTE := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# FIX Freezing
TARGET_NO_SENSOR_PERMISSION_CHECK := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Bootanimation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Dalvik Tweak
PRODUCT_TAGS += dalvik.gc.type-precise

# Offline Charging
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# FM Radio
MTK_FM_SUPPORT := yes
MTK_FM_RX_SUPPORT := yes
MTK_FM_CHIP := MT6627_FM
FM_LIB_BUILD_MT6620 := yes
FM_LIB_BUILD_MT6627 := yes
FM_LIB_BUILD_MT6628 := yes
FM_LIB_BUILD_MT6630 := yes
