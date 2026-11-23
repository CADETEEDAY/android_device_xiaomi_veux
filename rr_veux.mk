#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_system.mk)

# Inherit from veux device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Resurrected Remix stuff
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Flags da Resurrected Remix
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GMS := true

# Identificação do Dispositivo
PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2201116SG
PRODUCT_NAME := rr_veux
PRODUCT_SYSTEM_NAME := veux_eea

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="veux_eea-user 13 TKQ1.221114.001 V816.0.13.0.TKCEUXM release-keys" \
    BuildFingerprint=Redmi/veux_eea/veux:13/TKQ1.221114.001/V816.0.13.0.TKCEUXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
