#
# Copyright 2013 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/nubia/NX549J/device.mk)

# Inherit from AOKP Stuff
$(call inherit-product, vendor/aokp/configs/common_full_phone.mk)

# Import vendor files
$(call inherit-product-if-exists, vendor/nubia/NX549J/device-vendor.mk)
$(call inherit-product-if-exists, vendor/nubia/NX549J/BoardConfigVendor.mk)

PRODUCT_RESTRICT_VENDOR_FILES := false

#Device Info
PRODUCT_NAME := aokp_NX549J
PRODUCT_DEVICE := NX549J
PRODUCT_BRAND := Nubia
PRODUCT_MODEL := NX549J
PRODUCT_MANUFACTURER := nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=NX549J 
#    BUILD_FINGERPRINT=nubia/NX549J/NX549J:6.0.1/MPN24.104-25/25:user/release-keys \
#    PRIVATE_BUILD_DESC="NX549J-user 6.0.1 MPN24.104-25 25 release-keys"

# Set locales
PRODUCT_LOCALES := \
    en_US zh_CN zh_HK

#Environment
DEVICE_PATH := device/nubia/NX549J

PRODUCT_PACKAGES += \
    Launcher3 \
    ExactCalculator
