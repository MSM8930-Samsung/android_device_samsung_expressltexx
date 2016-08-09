# Inherit some common Broken stuff.
$(call inherit-product, vendor/broken/config/common_full_phone.mk)

# Enhanced NFC
#$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/expressltexx/full_expressltexx.mk)

PRODUCT_DEVICE := expressltexx
PRODUCT_NAME := broken_expressltexx
