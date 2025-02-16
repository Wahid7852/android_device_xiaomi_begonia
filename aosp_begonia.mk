#
# Copyright (C) 2023 The VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := begonia

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from begonia device
$(call inherit-product, device/xiaomi/begonia/device.mk)

# Inherit some common VoidUI stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_SUPPORTS_QUICK_TAP := true
VOID_MAINTAINER := "EreN"
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_USES_AOSP_RECOVERY := true

# Inherit some extras stuff
$(call inherit-product-if-exists, vendor/extras/extras.mk)
$(call inherit-product, packages/apps/ANXCamera/config.mk)
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot Animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := begonia
PRODUCT_NAME := aosp_begonia
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 8 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
