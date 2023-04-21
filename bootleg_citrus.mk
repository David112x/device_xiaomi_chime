#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from citrus device
$(call inherit-product, device/xiaomi/chime/device-citrus.mk)

# Inherit some common Bootleggers stuff.
$(call inherit-product, vendor/bootleggers/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bootleggers_citrus
PRODUCT_DEVICE := citrus
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Some Build Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Maintainer Prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bootleggers.maintainer=hani~🤍

BOOTLEGGERS_BUILD_TYPE := Shishufied
TARGET_BOOTLEG_ARCH := arm64
WITH_GAPPS := true
