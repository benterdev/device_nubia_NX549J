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

# Set locales
PRODUCT_LOCALES := \
    en_US zh_CN zh_HK

# Get the long list of APNs
PRODUCT_COPY_FILES := device/nubia/NX549J/configs/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#Environment
DEVICE_PATH := device/nubia/NX549J

#Device Info
PRODUCT_DEVICE := NX549J
PRODUCT_BRAND := Android
PRODUCT_MODEL := NX549J
PRODUCT_MANUFACTURER := nubia
PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, device/nubia/NX549J/device.mk)
