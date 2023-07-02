#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_BOOTLOADER_BOARD_NAME := lito
TARGET_BOARD_PLATFORM := lito
TARGET_USE_EROFS := true

DEVICE_PATH := device/xiaomi/picasso

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 420

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_picasso
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_picasso

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm7250
TARGET_KERNEL_CONFIG := vendor/picasso_user_defconfig

# Props
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Vintf
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/xiaomi_framework_compatibility_matrix.xml

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/picasso/BoardConfigVendor.mk