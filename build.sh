#!/bin/bash

echo Script to clone trees for m52xq :D

git clone https://github.com/paulowesll/android_device_samsung_m52xq device/samsung/m52xq 
echo dt done !

git clone https://github.com/paulowesll/android_device_samsung_sm7325-common device/samsung/sm7325-common
echo ct done!

git clone https://github.com/paulowesll/android_vendor_samsung_sm7325-common vendor/samsung --depth=1 -b lineage-20
echo vendor done!

git clone https://github.com/BlackMesa123/android_kernel_samsung_sm7325 kernel/samsung/sm7325 --depth=1 --single-branch
echo kernel done!

if [ ! -d "hardware/samsung" ]; then
git clone https://github.com/LineageOS/android_hardware_samsung hardware/samsung 
echo hw/samsung done!
fi

if [ ! -d "prebuilts/clang/host/linux-x86/clang-r416183b1" ]; then
git clone https://github.com/ArrowOS-Devices/android_prebuilts_clang_host_linux-x86_clang-r416183b1 prebuilts/clang/host/linux-x86/clang-r416183b1 
fi