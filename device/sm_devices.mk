# Copyright (C) 2015 The SaberMod Project
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

ifneq ($(filter awifi,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_awifi.mk
  LOCAL_ARCH := arm
endif

ifneq ($(filter z3,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_z3.mk
  LOCAL_ARCH := arm
endif

ifneq ($(filter %hlte,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_hlte.mk
  LOCAL_ARCH := arm
endif

ifneq ($(filter %hltespr,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_hltespr.mk
  LOCAL_ARCH := arm
endif

ifneq ($(filter %hltetmo,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_hltetmo.mk
  LOCAL_ARCH := arm
endif

ifneq ($(filter %hltevzw,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_hltevzw.mk
  LOCAL_ARCH := arm
endif

ifneq ($(filter %togari,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_togari.mk
  LOCAL_ARCH := arm
endif

ifneq ($(filter %trltespr,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_trltespr.mk
  LOCAL_ARCH := arm
endif

ifneq ($(filter %trltetmo,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_trltetmo.mk
  LOCAL_ARCH := arm
endif

ifneq ($(filter %trlteusc,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_trlteusc.mk
  LOCAL_ARCH := arm
endif

ifneq ($(filter %trltexx,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_trltexx.mk
  LOCAL_ARCH := arm
  PRODUCT_PACKAGES += FireFox-arm-SM4.9
  $(call inherit-product, $(SM_VENDOR)/prebuilts/system/lib/armeabi-v7a/arm.mk)
endif

ifneq ($(filter %trltevzw,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_trltevzw.mk
  LOCAL_ARCH := arm
  PRODUCT_PACKAGES += FireFox-arm-SM4.9
  $(call inherit-product, $(SM_VENDOR)/prebuilts/system/lib/armeabi-v7a/arm.mk)
endif

ifneq ($(filter %falcon,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_falcon.mk
  LOCAL_ARCH := arm
  PRODUCT_PACKAGES += FireFox-arm-SM4.9
  $(call inherit-product, $(SM_VENDOR)/prebuilts/system/lib/armeabi-v7a/arm.mk)
endif

ifneq ($(filter %jflteusc,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_jflteusc.mk
  LOCAL_ARCH := arm
  PRODUCT_PACKAGES += FireFox-arm-SM4.9
  $(call inherit-product, $(SM_VENDOR)/prebuilts/system/lib/armeabi-v7a/arm.mk)
endif

ifneq ($(filter %sprout4,$(TARGET_DEVICE)),)
  include $(SM_VENDOR)/device/sm_sprout4.mk
  LOCAL_ARCH := arm
  PRODUCT_PACKAGES += FireFox-arm-SM4.9
  $(call inherit-product, $(SM_VENDOR)/prebuilts/system/lib/armeabi-v7a/arm.mk)
endif

# Kernel binary prefix.  The other part of this will go in the kernel source's AndroidKernel.mk.
# And also in defconfigs (arch/arm/configs/name_defconfig)(or arm64) CONFIG_CROSS_COMPILE="arm-eabi-" (or "aarch64-")
ifeq ($(strip $(LOCAL_ARCH)),arm)
export CROSS_COMPILE_NAME := arm-$(HOST_OS)-gnueabi-
endif

ifeq ($(strip $(LOCAL_ARCH)),arm64)
export CROSS_COMPILE_NAME := aarch64-$(HOST_OS)-gnu-
endif

