rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b master kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace
rm -rf kernel/asus/sdm660/KernelSU/website
rm -rf kernel/asus/sdm660/KernelSU/scripts
rm -rf kernel/asus/sdm660/KernelSU/docs

rm -rf device/asus/sdm660-common
#rm -rf device/asus/X00TD
git clone --depth=1 https://github.com/sotodrom/android_device_asus_sdm660-common -b master device/asus/sdm660-common
#git clone --depth=1 https://github.com/sotodrom/android_device_asus_X00TD -b master device/asus/X00TD

rm -rf vendor/asus
git clone --depth=1 https://github.com/sotodrom/proprietary_vendor_asus -b master vendor/asus

rm -rf vendor/lineage/signing/keys
git clone https://github.com/sotodrom/keys -b evos signature && cp -R signature/* vendor/aosp/signing/keys/

rm -rf vendor/aosp
git clone https://github.com/AOSP-Sweet-Trees/vendor_aosp vendor/aosp

cd vendor/aosp
git reset --hard HEAD^
git revert 189e57be288f49cafcc874f9507dfae8f7f3f5db --no-edit
cd ../..

export BUILD_USER=queen
export TZ=Asia/Jakarta
