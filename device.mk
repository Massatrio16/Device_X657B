#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/infinix/X657B
# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mtk.so

PRODUCT_TARGET_VNDK_VERSION := 30
PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-impl-recovery

PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)
    
    
    # IMS
$(call inherit-product, vendor/mediatek/ims/mtk-ims.mk)

# Engineer Mode
$(call inherit-product, vendor/mediatek/ims/mtk-engi.mk)
    
# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0_system


# DT2W
PRODUCT_PACKAGES += \
    DT2W-Service-X657B
    
    PRODUCT_PACKAGES += \
    charger
    
# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

$(call inherit-product, vendor/infinix/X657B/X657B-vendor.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
    GoogleCameraGo

# Bluetooth
PRODUCT_PACKAGES += \
    libldacBT_dec

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Dynamic Partitions 

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true
WITH_GAPPS=true
TARGET_FACE_UNLOCK_SUPPORTED := true


OCTAVI_DEVICE_MAINTAINER := Massatrio16


# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    install-recovery.sh \

PRODUCT_PACKAGES += \
fstab.mt6761 \
    init.mt6761.rc \
    init.recovery.mt6761.rc 

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/fstab.mt6761:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6761
    

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_BOOT_JARS += \
    mediatek-common \
    mediatek-framework \
    mediatek-ims-base \
    mediatek-ims-common \
    mediatek-telecom-common \
    mediatek-telephony-base \
    mediatek-telephony-common

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml
    

# Keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput-fpc.kl \
    $(DEVICE_PATH)/configs/keylayout/uinput-goodix.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput-goodix.kl
    
