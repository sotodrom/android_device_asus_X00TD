rm -rf kernel/asus/sdm660
git clone --depth=1 --recusrive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b main kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace
rm -rf kernel/asus/sdm660/KernelSU/website
rm -rf kernel/asus/sdm660/KernelSU/scripts
rm -rf kernel/asus/sdm660/KernelSU/docs

rm -rf device/asus/sdm660-common
rm -rf device/asus/X00TD
git clone --depth=1 https://github.com/sotodrom/android_device_asus_sdm660-common -b main device/asus/sdm660-common
git clone --depth=1 https://github.com/sotodrom/android_device_asus_X00TD -b main device/asus/X00TD

rm -rf vendor/asus/X00TD
rm -rf vendor/asus/sdm660-common
git clone --depth=1 https://github.com/sotodrom/proprietary_vendor_asus_X00TD -b main vendor/asus/X00TD
git clone --depth=1 https://github.com/sotodrom/proprietary_vendor_asus_sdm660-common -b main vendor/asus/sdm660-common

rm -rf vendor/lineage-priv/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/inexdroid/keys keypub && cp -R keypub/* vendor/lineage-priv/keys/ && rm -rf keypub

export KBUILD_BUILD_USER=queen
export TZ=Asia/Jakarta
