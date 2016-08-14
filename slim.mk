# Inherit some common CM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
#$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/expressltexx/full_expressltexx.mk)

PRODUCT_DEVICE := expressltexx
PRODUCT_NAME := slim_expressltexx
