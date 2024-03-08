#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1600

# Inherit from merlin device makefile
$(call inherit-product, device/infinix/X657B/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

   # Inherit some common Octavi stuff.
   $(call inherit-product, vendor/octavi/config/common_full_phone.mk)
   
      # Inherit some common Octavi stuff.   
   $(call inherit-product, vendor/octavi/config/common.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X657B
PRODUCT_NAME := octavi_X657B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix SMART 5
PRODUCT_MANUFACTURER := Infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix
TARGET_VENDOR := infinix
TARGET_VENDOR_PRODUCT_NAME := X657B

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_32_ago_infinix_q_ota-user 11 RP1A.200720.011 164722 release-keys"

BUILD_FINGERPRINT := Infinix/X657B-OP-S2/Infinix-X657B:11/RP1A.200720.011/221121V777:user/release-keys


