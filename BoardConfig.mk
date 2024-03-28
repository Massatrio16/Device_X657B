#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/infinix/X657B

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# APEX

# Audio
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1
BOARD_USES_MTK_AUDIO := true
# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_CHARGER_SHOW_PERCENTAGE := true
DEFAULT_BRIGHTNESS := 1200
MAX_BRIGHTNESS := 2047
BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"

#Apex
DEXPREOPT_GENERATE_APEX_IMAGE := true
# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_X657B
TARGET_RECOVERY_DEVICE_MODULES := libinit_X657B

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := X657B
TARGET_NO_BOOTLOADER := true


# Display
TARGET_SCREEN_DENSITY := 320

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 buildvariant=user
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40000000
BOARD_NAME := CY-X657B-H6117
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x11b00000
BOARD_TAGS_OFFSET := 0x07880000
BOARD_KERNEL_TAGS_OFFSET := 0x07880000
BOARD_DTB_OFFSET := 0x07880000
BOARD_RECOVERY_DTBO_OFFSET := 18907136
BOARD_SECOND_OFFSET := 0xc0000000
BOARD_KERNEL_IMAGE_NAME := kernel

TARGET_KERNEL_SOURCE := kernel/infinix/X657B
TARGET_KERNEL_CONFIG := X657B_defconfig
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_HASH_TYPE := sha1

TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --recovery_dtbo $(BOARD_PREBUILT_DTBOIMAGE)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --board $(BOARD_NAME)

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 40894464
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_CACHEIMAGE_PARTITION_RESERVED_SIZE := 314572800
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57123257856
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
TARGET_USERIMAGES_USE_EXT4 := true


BOARD_PRODUCTIMAGE_PARTITION_SIZE := 1396686848
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 655417344
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_PARTITION_SIZE := 1063448576
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 3439329280
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 3437232128
BOARD_MAIN_PARTITION_LIST := \
    product \
    system \
    system_ext

#BOARD_SUPER_PARTITION_ERROR_LIMIT := 3437232128

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
BUILD_WITHOUT_VENDOR := true


TARGET_OTA_ASSERT_DEVICE := X657B,x657b


# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Platform
TARGET_BOARD_PLATFORM := mt6761
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

TARGET_BOARD_PLATFORM_GPU := PowerVR Rogue GE8300
# Properties

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6761
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
# Sepolicy
TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true
BOARD_PLAT_PRIVATE_SEPOLICY_DIR := $(DEVICE_PATH)/sepolicy/private

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)


# Build Broken
BUILD_BROKEN_DUP_RULES := true

# Security patch level


# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1



# Offline charging
#BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode
#BOARD_HEALTHD_CUSTOM_CHARGER_RES := vendor/lineage/charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/charging_enabled
BACKLIGHT_PATH  := /sys/class/leds/lcd-backlight/brightness
HEALTHD_BACKLIGHT_LEVEL := 30


#Opsional
USE_OPENGL_RENDERER := true

#dual sim
SIM_COUNT := 2
CONFIG_EAP_PROXY_DUAL_SIM := true


# Inherit the proprietary files
include vendor/infinix/X657B/BoardConfigVendor.mk
