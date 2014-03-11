# Inherit common CM stuff
$(call inherit-product, vendor/cmb/config/common.mk)

# Include CM audio files
include vendor/cmb/config/cmb_audio.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Seville.ogg \
    ro.config.notification_sound=hangouts_message.ogg \w
    ro.config.alarm_alert=Hassium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/cmb/prebuilt/common/bootanimation/320.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/cmb/config/telephony.mk)
