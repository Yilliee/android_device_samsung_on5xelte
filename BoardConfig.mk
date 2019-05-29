# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

DEVICE_PATH := device/samsung/on5xelte

# Inherit common board flags
include device/samsung/universal7570-common/BoardConfigCommon.mk

#TARGET_NO_BOOTLOADER := true
#TARGET_BOOTLOADER_BOARD_NAME := universal7570

# Architecture
#TARGET_ARCH := arm
#TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_CPU_ABI := armeabi-v7a
#TARGET_CPU_ABI2 :=armeabi
#TARGET_CPU_VARIANT := cortex-a53

PRODUCT_USE_VNDK_OVERRIDE := true
BOARD_VNDK_VERSION=current

#Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true
TARGET_PREBUILT_KERNEL := device/samsung/on5xelte/Image
TARGET_PREBUILT_DTB := device/samsung/on5xelte/dt.img
#BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPPG18A000RU
