#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Inherit from X605L device
$(call inherit-product, device/lenovo/X605L/device.mk)

PRODUCT_DEVICE := X605L
PRODUCT_NAME := lineage_X605L
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X605L
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tab5_m10_row_lte-user 9 PKQ1.190319.001 TB-X605L_U release-keys"
