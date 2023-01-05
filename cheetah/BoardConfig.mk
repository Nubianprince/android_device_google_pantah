#
# Copyright (C) 2020 The Android Open-Source Project
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
TARGET_BOARD_INFO_FILE := device/google/pantah/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := cheetah
TARGET_SCREEN_DENSITY := 560
BOARD_USES_GENERIC_AUDIO := true
USES_DEVICE_GOOGLE_CLOUDRIPPER := true
BOARD_KERNEL_CMDLINE += swiotlb=noforce

# Kernel
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_KERNEL_SOURCE := kernel/google/gs201/private/gs-google

# Partition attributes
ifneq ($(BLISS_BUILD_VARIANT),gapps)
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 614400000
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1752350720
endif

include device/google/gs201/BoardConfig-common.mk
-include vendor/google_devices/gs201/prebuilts/BoardConfigVendor.mk
-include vendor/google_devices/cheetah/proprietary/BoardConfigVendor.mk
include device/google/pantah-sepolicy/cheetah-sepolicy.mk
include device/google/pantah/wifi/BoardConfig-wifi.mk

