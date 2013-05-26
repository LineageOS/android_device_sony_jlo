TARGET_USES_LEGACY_BOARD := true

# inherit from the proprietary version
-include vendor/sony/jlo/BoardConfigVendor.mk

#inherit from the common tamsui definitions
-include device/sony/tamsui-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH += device/sony/jlo/include

TARGET_KERNEL_CONFIG := cm_tamsui_jlo_defconfig
BOARD_KERNEL_CMDLINE := device/sony/jlo/config/cmdline.txt

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16

# Recovery
TARGET_RECOVERY_INITRC := device/sony/jlo/recovery/init.rc
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true


BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p16

TARGET_OTA_ASSERT_DEVICE := ST26i,ST26a,jlo
