# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/bq/maxwell2plus/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maxwell2plus
PRODUCT_NAME := omni_maxwell2plus
PRODUCT_BRAND := bq
PRODUCT_MANUFACTURER := bq
PRODUCT_MODEL := bq Maxwell 2 Plus
