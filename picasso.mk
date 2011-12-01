#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifndef BUILD_KERNEL
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/acer/picasso/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel 
endif

PRODUCT_COPY_FILES += \
    device/acer/picasso/init.picasso.rc:root/init.picasso.rc \
    device/acer/picasso/ueventd.picasso.rc:root/ueventd.picasso.rc \
    device/acer/picasso/media_profiles.xml:system/etc/media_profiles.xml \
    device/acer/picasso/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml 

# Vold
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab


# Kernel modules
PRODUCT_COPY_FILES += \
    device/acer/picasso/modules/scsi_wait_scan.ko:system/modules/scsi_wait_scan.ko \
    device/acer/picasso/modules/bcm4329.ko:system/modules/bcm4329.ko 

PRODUCT_PACKAGES := \
    make_ext4fs \
    com.android.future.usb.accessory

PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072 \
    wifi.interface=wlan0 \
    ro.telephony.ril.v3=icccardstatus,datacall,signalstrength \
    hwui.render_dirty_regions=false

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := \
    device/acer/picasso/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    librs_jni \
    audio.primary.tegra \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs

$(call inherit-product-if-exists, vendor/acer/picasso/device-vendor.mk)
$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)

BOARD_WLAN_DEVICE_REV := bcm4329
WIFI_BAND := 802_11_ABG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

