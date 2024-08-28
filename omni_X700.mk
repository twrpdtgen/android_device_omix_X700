#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X700 device
$(call inherit-product, device/omix/X700/device.mk)

PRODUCT_DEVICE := X700
PRODUCT_NAME := omni_X700
PRODUCT_BRAND := OMIX
PRODUCT_MODEL := X700
PRODUCT_MANUFACTURER := omix

PRODUCT_GMS_CLIENTID_BASE := android-ragentek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X700-user 12 SP1A.210812.016 1690427665 release-keys"

BUILD_FINGERPRINT := OMIX/X700/X700:12/SP1A.210812.016/1690427665:user/release-keys
