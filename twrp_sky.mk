#
# Copyright 2026 The Android Open Source Project
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

# The below variables will be generated automatically

PRODUCT_RELEASE_NAME := sky

CUSTOM_VENDOR := $(lastword $(subst /, ,$(firstword $(subst _, ,$(firstword $(MAKEFILE_LIST))))))
$(call inherit-product, vendor/$(CUSTOM_VENDOR)/config/common.mk)

BOARD_VENDOR := $(or $(word 2,$(subst /, ,$(firstword $(MAKEFILE_LIST)))),$(value 2))
PRODUCT_DEVICE := sky
PRODUCT_NAME := $(CUSTOM_VENDOR)_sky
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 12 5G/POCO M6 Pro 5G
PRODUCT_MANUFACTURER := Xiaomi
TW_DEVICE_VERSION  := IRONHIDE
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

DEVICE_PATH := device/xiaomi/sky
$(call inherit-product, $(DEVICE_PATH)/device.mk)
