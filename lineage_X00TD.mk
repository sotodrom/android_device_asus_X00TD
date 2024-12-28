#
# Copyright (C) 2020-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ProjectBlaze stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animaton
TARGET_BOOT_ANIMATION_RES := 1080

# Blaze Official Stuff
#BLAZE_BUILD_TYPE := OFFICIAL
#BLAZE_MAINTAINER := ∂σткιт
#TARGET_BUILD_DEVICE_AS_WEBCAM := false
#TARGET_FACE_UNLOCK_SUPPORTED := true
#TARGET_INCLUDE_BCR := true
#TARGET_INCLUDE_GCAMGO := true
#WITH_GMS := true

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=ASUS_X00TD
