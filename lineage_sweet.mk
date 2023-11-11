#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common Alphadroid  Stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
TARGET_USE_PIXEL_LAUNCHER := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps
WITH_GAPPS := true
TARGET_INCLUDE_GOOGLE_APP := true
TARGET_INCLUDE_GOOGLE_CALCULATOR := true
TARGET_INCLUDE_GOOGLE_CALENDAR := true
TARGET_INCLUDE_GOOGLE_CHROME := true
TARGET_INCLUDE_GOOGLE_DESKCLOCK := false
TARGET_INCLUDE_GOOGLE_DRIVE := true
TARGET_INCLUDE_GMAIL := true
TARGET_INCLUDE_GOOGLE_MAPS := true
TARGET_INCLUDE_GOOGLE_PHOTOS := true
TARGET_INCLUDE_GOOGLE_SETUP := true
TARGET_INCLUDE_GOOGLE_TELEPHONY := true
TARGET_INCLUDE_GOOGLE_BATTERY_STATS := true
TARGET_INCLUDE_GOOGLE_CONTACTS := true
TARGET_INCLUDE_GOOGLE_MESSAGING := true
TARGET_INCLUDE_GBOARD := true
TARGET_INCLUDE_GOOGLE_APP := true
TARGET_INCLUDE_ANDROID_AUTO := true
TARGET_INCLUDE_GOOGLE_MARKUP := true
TARGET_INCLUDE_GOOGLE_SOUNDS := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_INCLUDE_GOOGLE_CAMERA := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Maintainer Flags
ALPHA_MAINTAINER := UnmoveD
ALPHA_BUILD_TYPE := Official

# Debugging Flags
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := false

PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweet_eea-user 13 RKQ1.210614.002 V14.0.6.0.TKFEUXM release-keys"

BUILD_FINGERPRINT := Redmi/sweet_eea/sweet:13/RKQ1.210614.002/V14.0.6.0.TKFEUXM:user/release-keys
