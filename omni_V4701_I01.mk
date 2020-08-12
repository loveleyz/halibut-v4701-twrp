# Release name
PRODUCT_RELEASE_NAME := V4701_I01

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common_64.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/runtime_libart.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := myphone
PRODUCT_DEVICE := V4701_I01
PRODUCT_MANUFACTURER := myphone
PRODUCT_MODEL := brown_1
PRODUCT_NAME := omni_V4701_I01

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="myphone/V4701_I01/V4701_I01:7.0/NRD90M/1501647148:user/release-keys" \
    PRIVATE_BUILD_DESC="1501647148"

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.allow.mock.location=0


