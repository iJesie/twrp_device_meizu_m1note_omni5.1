LOCAL_PATH := device/meizu/m1note

# Architecture
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6752
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic
TARGET_CPU_CORTEX_A53 := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_NO_FACTORYIMAGE := true
BOARD_MTK_LIBSENSORS_NAME :=
BOARD_MTK_LIB_SENSOR :=

#Bootloader
TARGET_BOOTLOADER_BOARD_NAME := m1note

#Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkmtkboot.mk
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
	--base 0x40000000 \
	--pagesize 2048 \
	--kernel_offset 0x00008000 \
	--ramdisk_offset 0x04000000 \
	--second_offset 0x00f00000 \
	--tags_offset 0x0e000000 \

#Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13217824768
BOARD_CACHEIMAGE_PARTITION_SIZE := 117440512
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

#Recovery 
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab

BOARD_HAS_NO_SELECT_BUTTON := true
DEVICE_RESOLUTION := 1080x1920
TW_NO_USB_STORAGE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
RECOVERY_FONT := roboto_15x24.h
WITH_DEXPREOPT := true

#twrp
# Turn the screen upside down for Meizu M1 Note to make TWRP usable
BOARD_HAS_FLIPPED_SCREEN := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
# The path to a temperature sensor
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone1/temp
# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/f_mass_storage/lun/file
TW_MTP_DEVICE := /dev/mtp_usb

TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN

# Storages
BOARD_HAS_NO_MISC_PARTITION := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_FLASH_FROM_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true


