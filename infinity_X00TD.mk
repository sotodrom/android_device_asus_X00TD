#
# Copyright (C) 2020-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ProjectBlaze stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Boot animaton
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_FACE_UNLOCK_SUPPORTED := true
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := qǝuʞz
TARGET_SUPPORTS_BLUR := false

# Gapps variant
TARGET_SHIPS_FULL_GAPPS := false
TARGET_BUILD_GOOGLE_TELEPHONY := false
TARGET_SUPPORTS_CALL_RECORDING := false
WITH_GAPPS := false

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=ASUS_X00TD
