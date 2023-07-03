#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8953-common
include device/lenovo/msm8953-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/X605L

# Display
TARGET_SCREEN_DENSITY := 240

# Kernel
TARGET_KERNEL_CONFIG := X605L_defconfig

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel
endif

# Inherit the proprietary files
include vendor/lenovo/X605L/BoardConfigVendor.mk
