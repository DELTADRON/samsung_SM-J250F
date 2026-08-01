#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/toolchain/bin/arm-eabi-
mkdir -p output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8937_sec_j2y18lte_mea_open_defconfig msm8937_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage


