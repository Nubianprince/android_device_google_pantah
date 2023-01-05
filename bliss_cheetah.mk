# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common BlissRom stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/pantah/device-syberia.mk)

# Parts
#$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
#$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bliss_cheetah
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PIXEL_DEVICE := true

 # Gapps
#WITH_GMS := true

# UDFPS Animations
EXTRA_UDFPS_ANIMATIONS := true

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Face Unlock
PRODUCT_PACKAGES += \
    FaceEnrollOverlay \
    FaceEnrollSettingsOverlay
    
# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

    
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ1A.221205.011 9244662 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
