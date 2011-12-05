#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

VENDOR=acer
DEVICE=picasso

rm -r ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull needed standard libs
adb pull /system/lib/libasound.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcgdrv.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull needed NV libs
adb pull /system/lib/libnvmm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvddk_2d.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvddk_2d_v2.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvddk_aes_user.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvddk_audiofx.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvddk_vmr.so ../../../vendor/$VENDOR/$DEVICE/proprietary

adb pull /system/lib/libnvdispatch_helper.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvdispmgr_d.so ../../../vendor/$VENDOR/$DEVICE/proprietary

adb pull /system/lib/libnvec.so ../../../vendor/$VENDOR/$DEVICE/proprietary

adb pull /system/lib/libnvmm_asfparser.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_audio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_aviparser.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_camera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_contentpipe.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_image.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_manager.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_misc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_msaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_parser.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_service.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_tracklist.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_utils.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_vc1_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_videorenderer.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_vp6_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_writer.so ../../../vendor/$VENDOR/$DEVICE/proprietary

adb pull /system/lib/libnvodm_dtvtuner.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvodm_imager.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvodm_query.so ../../../vendor/$VENDOR/$DEVICE/proprietary

adb pull /system/lib/libnvomx.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvomxilclient.so ../../../vendor/$VENDOR/$DEVICE/proprietary

adb pull /system/lib/libnvos.so ../../../vendor/$VENDOR/$DEVICE/proprietary

adb pull /system/lib/libnvrm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvrm_channel.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvrm_graphics.so ../../../vendor/$VENDOR/$DEVICE/proprietary

adb pull /system/lib/libnvsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvtestio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvtestresults.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvwinsys.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvwsi.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Firmwares
adb pull /system/etc/firmware/bcm4329.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvddk_audiofx_core.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvddk_audiofx_transport.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_aacdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_adtsdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_audiomixer.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_h264dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_jpegdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_jpegenc.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_manager.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_mp2dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_mp3dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_mpeg4dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_reference.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_service.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_sorensondec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_vc1dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_wavdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_wmadec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvmm_wmaprodec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/nvrm_avp.bin ../../../vendor/$VENDOR/$DEVICE/proprietary

# Alsa configuration
adb pull /system/etc/asound.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/alsa.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/cards/aliases.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/rear.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/surround71.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/surround40.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/iec958.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/side.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/modem.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/default.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/center_lfe.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/surround50.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/dmix.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/surround51.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/surround41.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/dsnoop.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/front.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/share/alsa/pcm/dpl.conf  ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull nvidia EGL libs
adb pull /system/lib/egl/libEGL_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull HW libs
adb pull /system/lib/libmpl.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/gps.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/gralloc.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/hwcomposer.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/overlay.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/tegra_alsa.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/lights.picasso.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull keychar files

# Pull keylayout files
adb pull /system/usr/keylayout/Acer-AK00LB.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/acer-dock.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/gpio-keys.kl ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull bin files
adb pull /system/bin/nv_hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvrm_daemon ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvtest ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/tegrastats ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/glgps_nvidiaTegra2android ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/dock_detect_daemon ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/dock_utility ../../../vendor/$VENDOR/$DEVICE/proprietary

# Gps conf files
adb pull /system/etc/gps.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/gps/gpsconfig.xml ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull wifi/bt files
adb pull /system/etc/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary
#adb pull /system/etc/bluez/bluecore6.psr ../../../vendor/$VENDOR/$DEVICE/proprietary
#adb pull /system/lib/hw/wlan/fw_bcm4329.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
#adb pull /system/lib/hw/wlan/BCM4329B1.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary
#adb pull /system/lib/hw/wlan/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary
#adb pull /system/lib/hw/wlan/fw_bcm4329_apsta.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
#adb pull /system/bin/bc_hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary

# Sensors

# Pull OMX libs

# Pull Opencore libs

# Pull Stage Fright 
adb pull /system/lib/libstagefrighthw.so ../../../vendor/$VENDOR/$DEVICE/proprietary

adb pull /system/lib/libhuawei-ril.so ../../../vendor/$VENDOR/$DEVICE/proprietary


./setup-makefiles.sh
