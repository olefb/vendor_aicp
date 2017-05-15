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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from suzuran device
$(call inherit-product, device/sony/suzuran/device.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

PRODUCT_NAME := aicp_suzuran
PRODUCT_DEVICE := suzuran
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := E5823

TARGET_VENDOR_PRODUCT_NAME := suzuran
TARGET_VENDOR_DEVICE_NAME := suzuran
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=suzuran PRODUCT_NAME=suzuran

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Sony/suzuran/suzuran:7.1.1/N-MR1-KITAKAMI-170609-1025/1:user/dev-keys \
    PRIVATE_BUILD_DESC="suzuran-user 7.1.1 N-MR1-KITAKAMI-170609-1025 1 dev-keys"

TARGET_VENDOR := sony

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/aicp/configs/bootanimation.mk
