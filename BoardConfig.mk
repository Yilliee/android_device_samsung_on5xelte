#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from Exynos7570-common
include device/samsung/universal7570-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := on5xelte

DEVICE_PATH := device/samsung/on5xelte

# Include makefiles from board folder
-include $(DEVICE_PATH)/board/*.mk

# Inherit from the proprietary version
-include vendor/samsung/on5xelte/BoardConfigVendor.mk
