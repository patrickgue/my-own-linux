#!/bin/sh

rm init.cpio
cp -r initramfs/ initramfs_build
cd initramfs_build/

sudo chown -R 0:0 .
sudo chown -R 1000:97 ./home/patrick/
find . | cpio -o -H newc > ../init.cpio
cd ../
sudo rm -rf initramfs_build
