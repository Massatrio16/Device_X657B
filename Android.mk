#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),X657B)
$(call add-radio-file,dynamic-add-system_ext)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
