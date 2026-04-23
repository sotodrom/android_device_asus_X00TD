#!/bin/bash

export TZ=Asia/Jakarta

# Removing
rm -rf kernel/asus

## Cloning
git clone --depth=1 https://github.com/sotodrom/kernel_asus_sdm660-4.19 -b master --single-branch kernel/asus/sdm660

## Integrate KernelSU
cd kernel/asus/sdm660
curl -LSs "https://raw.githubusercontent.com/Sorayukii/KernelSU-Next/stable/kernel/setup.sh" | bash -s hookless
cd -
