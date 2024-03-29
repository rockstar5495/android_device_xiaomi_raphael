# Copyright (C) 2020 LineageOS
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common Octavi stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# GApps
TARGET_GAPPS_ARCH := arm64

# Octavi
OCTAVI_BUILD_TYPE := Official
OCTAVI_MAINTAINER := pbharadwaj_95

# UDFPS
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := octavi_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K20 Pro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="raphael"
    PRIVATE_BUILD_DESC="raphaelin-user 11 RKQ1.200826.002 v12.5.1.0.RFKINXM release-keys"
    BUILD_FINGERPRINT := Xiaomi/raphaelin/raphaelin:11/RKQ1.200826.002/V12.5.1.0.RFKINXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
