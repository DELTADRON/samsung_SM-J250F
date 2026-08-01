#!/bin/bash

set -e

# Paths
KERNEL_DIR="$(pwd)"
OUT="$KERNEL_DIR/output"
JOBS=$(nproc)

# Toolchain
export ARCH=arm
export CROSS_COMPILE=arm-eabi-

echo "===================================="
echo " Kernel build started"
echo " Output: $OUT"
echo " Jobs:   $JOBS"
echo "===================================="

# Check config
if [ ! -f "$OUT/.config" ]; then
    echo "ERROR: $OUT/.config missing"
    echo "Run:"
    echo "  make O=output ARCH=arm CROSS_COMPILE=arm-eabi- <config>"
    exit 1
fi


echo "[1/5] Updating config..."
make O=output ARCH=arm CROSS_COMPILE=arm-eabi- olddefconfig


echo "[2/5] Building kernel..."
make O=output \
     ARCH=arm \
     CROSS_COMPILE=arm-eabi- \
     -j"$JOBS" \
     zImage dtbs


echo "[3/5] Checking outputs..."

if [ ! -f "$OUT/arch/arm/boot/zImage" ]; then
    echo "ERROR: zImage missing"
    exit 1
fi

echo "zImage OK"

DTB_COUNT=$(find "$OUT/arch/arm/boot/dts" -name "*.dtb" | wc -l)

if [ "$DTB_COUNT" -eq 0 ]; then
    echo "ERROR: No DTBs found"
    exit 1
fi

echo "DTBs found: $DTB_COUNT"


echo "[4/5] Building Qualcomm DT image..."

mkdir -p "$OUT/dt"

"$KERNEL_DIR/tools/dtbTool" \
    -o "$OUT/dt/dt.img" \
    -s 2048 \
    "$OUT/arch/arm/boot/dts"


echo "[5/5] Copying final files..."

mkdir -p "$OUT/final"

cp "$OUT/arch/arm/boot/zImage" \
   "$OUT/final/kernel"

cp "$OUT/dt/dt.img" \
   "$OUT/final/dt.img"


echo
echo "===================================="
echo " BUILD COMPLETE"
echo
echo "Kernel:"
echo " $OUT/final/kernel"
echo
echo "DT:"
echo " $OUT/final/dt.img"
echo "===================================="