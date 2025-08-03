#!/bin/bash

# Arch linux unfker, written quickly to avoid redownloading manually llvm from the archlinx archive



# Being a bad boy and destroying the previously downloaded packages on /tmp (I'm lazy to do checks at this moment)
rm /tmp/*.zst

# To avoid doing rm -rf /
set -e

# Deps
sudo pacman -S wget unzip --needed

# All the nasty stuff goes on /tmp
cd /tmp
wget https://archive.archlinux.org/packages/l/lib32-clang/lib32-clang-19.1.7-1-x86_64.pkg.tar.zst
wget https://archive.archlinux.org/packages/c/clang/clang-19.1.7-1-x86_64.pkg.tar.zst
wget https://archive.archlinux.org/packages/l/llvm-libs/llvm-libs-19.1.7-1-x86_64.pkg.tar.zst
wget https://archive.archlinux.org/packages/l/lib32-llvm-libs/lib32-llvm-libs-1%3A19.1.7-1-x86_64.pkg.tar.zst
wget https://archive.archlinux.org/packages/l/lib32-llvm/lib32-llvm-1%3A19.1.7-1-x86_64.pkg.tar.zst
wget https://archive.archlinux.org/packages/l/llvm/llvm-19.1.7-1-x86_64.pkg.tar.zst
wget https://archive.archlinux.org/packages/s/spirv-llvm-translator/spirv-llvm-translator-19.1.7-1-x86_64.pkg.tar.zst
wget https://archive.archlinux.org/packages/l/lib32-spirv-llvm-translator/lib32-spirv-llvm-translator-19.1.7-1-x86_64.pkg.tar.zst

wget https://github.com/IsaacMvmv/PS4-Utilities/releases/download/mesa-25.1/PS4_Mesa_25.1.0-devel_VvSx87_32.64Bits.zip
unzip PS4_Mesa_25.1.0-devel_VvSx87_32.64Bits.zip
mv PS4_Mesa_25.1.0-devel_VvSx87_32\&64Bits/*.zst .
rm -rf PS4_Mesa_25.1.0-devel_VvSx87_32\&64Bits PS4_Mesa_25.1.0-devel_VvSx87_32.64Bits.zip

# Install everything (Hopefully no errors will pop out)
sudo pacman -U *.zst

# Cleaning in case it hopefully installed everything alright
rm /tmp/*.zst
echo "All done!"
