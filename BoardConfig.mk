# Camera Setup
USE_CAMERA_STUB := true
#BOARD_USE_FROYO_LIBCAMERA := true
BOARD_FIRST_CAMERA_FRONT_FACING := true

# inherit from the proprietary version
-include vendor/acer/picasso/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := tegra
TARGET_BOARD_INFO_FILE := device/acer/picasso/board-info.txt
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := picasso

ARCH_ARM_HAVE_TLS_REGISTER := true

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

# Modem
TARGET_NO_RADIOIMAGE := true

# Use Old Style USB Mounting Untill we get kernel source
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# custom recovery ui
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/toshiba/folio100/recovery/recovery_ui.c

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_HOSTAPD_DRIVER := WEXT
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME := "bcm4329"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/nvram.txt iface_name=wlan"


BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
#BOARD_HAVE_BLUETOOTH_CSR := true

BOARD_KERNEL_CMDLINE := nvmem=128M@384M mem=1024M@0M vmalloc=256M video=tegrafb tegra_fbmem=4098560@0x18012000 console=none usbcore.old_scheme_first=1 brand=acer lp0_vec=8192@0x1840c000 tegraboot=sdmmc gpt
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := true

BOARD_EGL_CFG := device/acer/picasso/egl.cfg
TARGET_OTA_ASSERT_DEVICE := picasso,ventana

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072

# Setting this to avoid boot locks on the system from using the "misc" partition.
BOARD_HAS_NO_MISC_PARTITION := true

# Indicate that the board has an Internal SD Card
#BOARD_HAS_SDCARD_INTERNAL := true

BOARD_DATA_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p4
BOARD_CACHE_FILESYSTEM := ext4

BOARD_VOLD_MAX_PARTITIONS := 8
