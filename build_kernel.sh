#!/bin/sh

git clone --depth 1 https://github.com/torvalds/linux kernel/
cp kernel.config kernel/.config 
cd kernel/
make -j 6

