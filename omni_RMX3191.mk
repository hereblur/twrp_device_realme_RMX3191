#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX3191 device
$(call inherit-product, device/realme/RMX3191/device.mk)

PRODUCT_DEVICE := RMX3191
PRODUCT_NAME := omni_RMX3191
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3191
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 13 TP1A.220905.001 1691383350732 release-keys"

BUILD_FINGERPRINT := realme/RMX3191/RMX3191:13/SP1A.210812.016/R.12756e7+5b14:user/release-keys
