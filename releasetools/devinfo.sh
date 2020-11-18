#!/sbin/sh
#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# copy devinfo partition info to a vendor prop

# Mount parittions
toybox mount /dev/block/bootdevice/by-name/system -t ext4 /mnt/system

DEVINFO=$(strings /dev/block/mmcblk0p25 | head -n 1)

echo "DEVINFO: ${DEVINFO}"

sed -i "s/ro.leeco.devinfo=NULL/ro.leeco.devinfo=$DEVINFO/g" "/mnt/system/system/build.prop"

# Unmount partitions
toybox umount /mnt/system

exit 0
