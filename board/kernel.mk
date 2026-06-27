# Kernel information from the stock Lenovo K8 boot image
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 buildvariant=user androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --board 41 --base 0x40000000 --kernel_offset 0x00008000 --ramdisk_offset 0x05000000 --tags_offset 0x04000000

# Kernel properties
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilts/kernel
