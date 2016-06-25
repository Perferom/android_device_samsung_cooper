## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device specific files
$(call inherit-product, device/samsung/cooper/device_cooper.mk)

# Inherit some common CM stuff.
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320
$(call inherit-product, vendor/cm/config/mini.mk)

#Build Dalvik runtime only, ART does not work with armv6 yet
PRODUCT_RUNTIMES := runtime_libdvm_default

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME="Galaxy Ace (GT-S5830)" \
	TARGET_DEVICE="Galaxy Ace (GT-S5830)"

# Overrides inherited values
PRODUCT_NAME := cm_cooper
PRODUCT_DEVICE := cooper
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-S5830
PRODUCT_MANUFACTURER := Samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_RELEASE_NAME := GalaxyAce
PRODUCT_VERSION_DEVICE_SPECIFIC := -GT-S5830

#Include pico Gapps
MINI_GAPPS := true
