# Inherit common CM stuff
$(call inherit-product, vendor/cmb/config/common.mk)

# Include CM audio files
include vendor/cmb/config/cmb_audio.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Seville.ogg \
    ro.config.notification_sound=hangouts_message.ogg \
    ro.config.alarm_alert=CyanAlarm.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/cmb/prebuilt/common/bootanimation/800.zip:system/media/bootanimation.zip
endif
