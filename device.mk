#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
LOCAL_PATH := device/samsung/on5xelte

ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
endif

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml
    
# AAPT
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := hdpi mdpi

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 320dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Audio
USE_XML_AUDIO_POLICY_CONF := 1
PRODUCT_PACKAGES += \
	libshim_audio \
    	audioloaderf \
    	audio.a2dp.default

    
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/audio/audio_effetcs.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
		$(LOCAL_PATH)/configs/audio/mixer_gains.xml:system/etc/mixer_gains.xml \
		frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml 

PRODUCT_PACKAGES += \
    audio.primary.universal7570 \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Camera
PRODUCT_PACKAGES += \
		android.hardware.camera.provider@2.4 \
		camera.device@3.2-impl \
		camera.device@1.0-impl \
		camera.universal7570.so \
		libexynoscamera.so \
		libexynoscamera3.so

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
		lineage_charger_res_images

# Init
PRODUCT_PACKAGES += \
    fstab.samsungexynos7570 \
    init.samsung.rc \
    init.samsungexynos7570.rc \
    init.samsungexynos7570.usb.rc \
    init.baseband.rc \
    init.gps.rc \
    init.wifi.rc \
    ueventd.samsungexynos7570.rc

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := false

# VNDK
PRODUCT_PACKAGES += vndk_package

# SP-NDK
PRODUCT_PACKAGES += \
	libvulkan 

# DRM
PRODUCT_PACKAGES += \
		android.hardware.drm@1.0-impl \

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/compatibility_matrix.xml:system/compatibility_matrix.xml
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps_debug.conf \
    $(LOCAL_PATH)/configs/gps/gps.cfg:system/vendor/etc/gnss/gps.cfg

PRODUCT_PACKAGES += \
    libshim_audio \
    audioloader
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# hardware/samsung/AdvancedDisplay (MDNIE)
PRODUCT_PACKAGES += \
    AdvancedDisplay \
		SamsungServiceMode

# HIDL
#PRODUCT_COPY_FILES += \
#		$(LOCAL_PATH)/manifest.xml:system/manifest.xml \
#		$(LOCAL_PATH)/compatibility_matrix.xml:system/compatibility_matrix.xml

# HIDL-vendor
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/vendor/manifest.xml:system/vendor/manifest.xml \
		$(LOCAL_PATH)/configs/vendor/compatibility_matrix.xml:system/vendor/compatibility_matrix.xml

PRODUCT_PACKAGES += \
		android.hidl.allocator@1.0-service \
		android.hidl.manager@1.0 \
		android.hidl.allocator@1.0 \
		android.hidl.base@1.0 \
# Camera
PRODUCT_PACKAGES += \
    Snap
    
# Keymaster
PRODUCT_PACKAGES += \
		keystore.exynos7570 \
		android.hardware.keymaster@3.0-impl \
		android.hardware.keymaster@3.0-service

# Keys
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/keylayout/AVRCP.idc:system/usr/keylayout/AVRCP.idc \
    $(LOCAL_PATH)/configs/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/configs/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Media
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
		$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
		$(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
		$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
		$(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:system/vendor/etc/media_profiles_V1_0.xml \
		frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Memory
PRODUCT_PACKAGES += \
		android.hardware.memtrack@1.0-impl
# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0
    
# MTP
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Overriden service definition
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/android.hardware.media.omx@1.0-service_exynos.rc:system/vendor/etc/init/android.hardware.media.omx@1.0-service_exynos.rc \
    $(LOCAL_PATH)/configs/init/mediaserver.rc:system/etc/init/mediaserver.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Power
PRODUCT_PACKAGES += \
		android.hardware.power@1.0-service.7570 \
		android.hardware.power@1.0-service \
		android.hardware.power@1.0-impl \
    power.universal7570

# Lights
PRODUCT_PACKAGES += \
		lights.exynos5 \
		android.hardware.light@2.0-impl \
		android.hardware.light@2.0-service.7570

# Fingerprint
PRODUCT_PACKAGES += \
  		fingerprint.exynos5 \
		android.hardware.biometrics.fingerprint@2.1 \
    fingerprint.default

# Sensors
PRODUCT_PACKAGES += \
		android.hardware.sensors@1.0-impl \
		android.hardware.sensors@1.0-service \
		sensors.universal7570

# Thermal
PRODUCT_PACKAGES += \
		android.hardware.thermal@1.0-impl \
		thermal.universal7570

# Vibrator
PRODUCT_PACKAGES += \
		 android.hardware.vibrator@1.0-service.7570

# Radio
PRODUCT_PACKAGES += \
    libxml2 \
    libprotobuf-cpp-full \
    libsecril-client \
		rild \
    libril \
    libreference-ril \
		android.hardware.radio@1.0 \
		android.hardware.radio.deprecated@1.0

PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/init/rild.rc:system/vendor/etc/init/rild.rc

# Ramdisk
PRODUCT_PACKAGES += \
		fstab.samsungexynos7570 \
		init.baseband.rc \
		init.carrier.rc \
		init.container.rc \
		init.environ.rc \
		init.goldfish.rc \
		init.gps.rc \
		init.ranchu.rc \
		init.rc \
		init.samsung.rc \
		init.samsungexynos7570.rc \
		init.samsungexynos7570.usb.rc \
		init.usb.configfs.rc
		init.usb.rc \
		init.wifi.rc \
		init.zygote32.rc \
		ueventd.goldfish.rc \
		ueventd.samsungexynos7570.rc

# KeyLayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio_keys.kl:system/usr/keylayout/gpio_keys.kl
PRODUCT_PACKAGES += \
		android.hardware.renderscript@1.0 \

PRODUCT_PACKAGES += \
    dtbhtoolExynos

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/seccomp/mediaextractor.policy:system/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/configs/seccomp/mediacodec.policy:system/etc/seccomp_policy/mediacodec.policy

# Remove unwanted packages
 PRODUCT_PACKAGES += \
    RemovePackages
    
# Shims
PRODUCT_PACKAGES += \
    libexynoscamera_shim \
    libExynosOMX_shim \
    libstagefright_shim \
    libui_shim

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/AVRCP.idc:system/usr/idc/AVRCP.idc \
    $(LOCAL_PATH)/configs/idc/goldfish_rotary.idc:system/usr/idc/goldfish_rotary.idc \
    $(LOCAL_PATH)/configs/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/configs/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# usb
PRODUCT_PACKAGES += \
		android.hardware.usb@1.0-impl \
		android.hardware.usb@1.0-service

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    macloader \
    wifiloader \
		wificond \
    hostapd \
    libwpa_client \
    wpa_supplicant \
		wpa_supplicant.conf \
		android.hardware.wifi@1.0-service \
		android.hardware.wifi@1.0 \
		android.hardware.wifi@1.0-impl

# System properties
include $(LOCAL_PATH)/system_prop.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/on5xelte/on5xelte-vendor.mk)

# Property overrides
include $(LOCAL_PATH)/system.prop

# call the common setup
$(call inherit-product, device/samsung/universal7570-common/common.mk)

# Call proprietary blob setup
$(call inherit-product, vendor/samsung/universal7570-common/universal7570-common-vendor.mk)

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos7570/exynos7570.mk)
