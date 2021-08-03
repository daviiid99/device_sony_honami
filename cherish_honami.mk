# Inherit lineage common Phone stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

$(call inherit-product, device/sony/honami/full_honami.mk)

# Inherit some common cherish stuff.
WITH_GMS := true
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
TARGET_GAPPS_ARCH := armv7a
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
CHERISH_BUILD_TYPE := OFFICIAL

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="C6903-user 5.1.1 14.6.A.1.236 2031203603 release-keys"

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_honami
PRODUCT_DEVICE := honami
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Honami
PRODUCT_MANUFACTURER := Sony

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys"

PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=daviiid99
