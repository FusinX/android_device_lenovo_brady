#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_brady.mk)
$(call inherit-product, device/lenovo/brady/prop.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_32_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := brady

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := LENOVO
PRODUCT_DEVICE := brady
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_MODEL := K8
PRODUCT_NAME := lineage_brady
PRODUCT_RELEASE_NAME := brady
PRODUCT_RESTRICT_VENDOR_FILES := false

# SDcard
PRODUCT_CHARACTERISTICS := nosdcard

# Google client ID property.
PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# Build fingerprint from the stock Lenovo K8 firmware.
PRODUCT_BUILD_PROP_OVERRIDES += \
TARGET_DEVICE=brady \
PRODUCT_NAME=brady \
BUILD_FINGERPRINT=Lenovo/brady/brady:7.1.1/NMC26.51-41/41:user/release-keys \
PRIVATE_BUILD_DESC="brady-user 7.1.1 NMC26.51-41 release-keys"
