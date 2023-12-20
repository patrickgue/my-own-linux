#!/bin/sh

rm -f boot

dd if=/dev/zero of=boot bs=1M count=50 
mkfs.fat boot
syslinux boot
mkdir -p m
sudo mount boot m
sudo cp ../kernel/arch/x86_64/boot/bzImage init.cpio ../src/syslinux.cfg m
sudo umount m
