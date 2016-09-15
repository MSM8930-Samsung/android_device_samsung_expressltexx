# Set composition for USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Set read only default composition for USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.usb.default.config=mtp

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libargs=-d/dev/smd0 \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.default_network=3 \
    ro.telephony.ril_class=ExpressRIL \
    ro.ril.telephony.mqanelements=6 \
    persist.radio.add_power_save=1

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qmienabled=true \
    persist.gps.qc_nlp_in_use=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0 \
    ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable=1 \
    mm.enable.smoothstreaming=true \
    use.dedicated.device.for.voip=true \
    use.voice.path.for.pcm.voip=true \
    media.aac_51_output_enabled=true

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=c2d \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    ro.sf.lcd_density=240 \
    ro.opengles.version=196608 \
    ro.qualcomm.cabl=0 \
    ro.hwui.text_large_cache_height=1024 \

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.chipname=MSM8930 \
    ro.product_ship=true \
    ro.warmboot.capability=1 \
    persist.timed.enable=true \
    wifi.interface=wlan0 \
    ro.qualcomm.bt.hci_transport=smd \
    ro.sdcardfs.enable=true \
    camera.disable_zsl_mode=1

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=false \
    ro.sys.fw.dex2oat_thread_count=2 \
    dalvik.vm.dex2oat-Xms=64m \
    dalvik.vm.dex2oat-Xmx=384m

# Our low-ram optimizations below

# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-flags=--no-watch-dog \

# Low-RAM optimizations
ADDITIONAL_BUILD_PROPERTIES += \
	config.disable_atlas=true \

# Intel's VM tunable recommendations
ADDITIONAL_BUILD_PROPERTIES += \
	dalvik.vm.heapgrowthlimit=64m \
	dalvik.vm.heapsize=174m \
	dalvik.vm.heapmaxfree=2m
