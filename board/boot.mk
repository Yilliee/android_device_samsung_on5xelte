####################
# Boot             #
####################

### Kernel Configuration
TARGET_KERNEL_CONFIG := on5xelte_00_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/on5xelte
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

### Boot.img configuration
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPPG18A000RU
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_CMDLINE := The bootloader ignores the cmdline from the boot.img
TARGET_USES_UNCOMPRESSED_KERNEL := true
