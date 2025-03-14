#!/bin/bash

echo "------------------------------------------------------"
echo "Kernel Source For LC-SDM660-2019 Models"
echo "------------------------------------------------------"

path=/home/zbltrr

clear
export ARCH=arm64
export CROSS_COMPILE=$path/aarch64-linux-android-4.9/bin/aarch64-linux-android-
mkdir output
make -C $(pwd) O=output DDV-next_defconfig
make -j12 -C $(pwd) O=output
