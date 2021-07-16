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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/star2lte/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

 # PixelExperience Properties
TARGET_BOOT_ANIMATION_RES := 1440

# Device identifier. This must come after all inclusions 
PRODUCT_DEVICE := star2lte
PRODUCT_NAME := carbon_star2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G965F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=star2ltexx \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210605.005 7349499 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=G965FXXUCFTK1 \
    ro.build.fingerprint=google/redfin/redfin:11/RQ3A.210605.005/7349499:user/release-keys
