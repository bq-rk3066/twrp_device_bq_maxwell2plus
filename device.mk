LOCAL_PATH := device/bq/maxwell2plus

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init:root/init \
    $(LOCAL_PATH)/prebuilt/rk30xxnand_ko.ko.3.0.36+:root/rk30xxnand_ko.ko.3.0.36+ \
    $(LOCAL_PATH)/init.recovery.rk30board.rc:root/init.recovery.rk30board.rc \
    $(LOCAL_PATH)/fstab.rk30board:root/fstab.rk30board

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := maxwell2plus
