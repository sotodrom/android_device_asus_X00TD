rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b master kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU-Next/userspace
rm -rf kernel/asus/sdm660/KernelSU-Next/website
rm -rf kernel/asus/sdm660/KernelSU-Next/scripts
rm -rf kernel/asus/sdm660/KernelSU-Next/docs

rm -rf device/asus/sdm660-common
#rm -rf device/asus/X00TD
git clone --depth=1 https://github.com/sotodrom/android_device_asus_sdm660-common -b 15 device/asus/sdm660-common
#git clone --depth=1 https://github.com/sotodrom/android_device_asus_X00TD -b master device/asus/X00TD

rm -rf vendor/asus
git clone --depth=1 https://github.com/sotodrom/proprietary_vendor_asus -b 15 vendor/asus

rm -rf vendor/lineage-priv/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/sotodrom/keys vendor/lineage-priv/keys/

rm -rf packages/apps/Aperture
git clone https://github.com/LineageOS/android_packages_apps_Aperture -b lineage-22.1 packages/apps/Aperture

export KBUILD_BUILD_USER=queen
export TZ=Asia/Jakarta
