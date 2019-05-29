# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

LOCAL_PATH := device/samsung/on5xelte

DEVICE_PACKAGE_OVERLAYS += device/samsung/on5xelte/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Property overrides
-include $(LOCAL_PATH)/system_prop.mk

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/on5xelte/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)


# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/on5xelte/on5xelte-vendor.mk)

# Inherit common device configuration
$(call inherit-product, device/samsung/universal7570-common/universal7570-common.mk)
