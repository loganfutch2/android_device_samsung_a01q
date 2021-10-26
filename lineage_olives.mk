#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a01q device
$(call inherit-product, device/samsung/a01q/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a01qsks
PRODUCT_NAME := lineage_a01qsks
BOARD_VENDOR := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy A01
PRODUCT_MANUFACTURER := samsung
TARGET_VENDOR := samsung

# Some build flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_INCLUDE_PIXEL_CHARGER := true
IS_PHONE := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="samsung-user 11 RQ3A.210905 :user release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "samsung/a01q/a01q:11/RQ3A.210905:user/release-keys"