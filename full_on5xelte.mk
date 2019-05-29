# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

PRODUCT_RUNTIMES := runtime_libart_default

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/on5xelte/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := on5xelte
PRODUCT_NAME := full_on5xelte
PRODUCT_MODEL := SM-G570F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
