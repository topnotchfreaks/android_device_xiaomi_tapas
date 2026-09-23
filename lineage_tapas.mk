#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tapas device
$(call inherit-product, device/xiaomi/tapas/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

WITH_GMS := true
WITH_GMS_COMMS_SUITE := true
WITH_PIXEL_LAUNCHER := true
TARGET_USE_MAPS := true
TARGET_USE_FILES := true
TARGET_USE_GPHOTOS := true
TARGET_USE_WALLPAPERS := true
USE_REALITY_ENGINE := true
SURFACE_FLINGER_BOOST := true
TARGET_DISABLE_MATLOG := true

$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)

PRODUCT_NAME := lineage_tapas
PRODUCT_DEVICE := tapas
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tapas_global-user 15 AQ3A.240829.003 OS2.0.205.0.VMTMIXM release-keys" \
    BuildFingerprint=Redmi/tapas_global/tapas:15/AQ3A.240829.003/OS2.0.205.0.VMTMIXM:user/release-keys \
    DeviceProduct=tapas

