#!/bin/sh

git clone --depth 1 https://github.com/mirror/busybox
cp busybox.config busybox/.config 
cd busybox/
make -j 6
cp arch/x86_64/boot/bzImage ../boot
mkdir -p ../boot/initramfs
make CONFIG_PREFIX=../boot/initramfs install
cp ../src/init ../boot/initramfs  
