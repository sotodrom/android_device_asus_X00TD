rm -rf kernel/asus/sdm660
git clone --depth=1 https://github.com/Tiktodz/android_kernel_asus_sdm660 -b 4.4 kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace

#rm -rf vendor/asus
#git clone --depth=1 https://github.com/Tiktodz/android_vendor_asus_X00TD -b udc-4.4 vendor/asus

rm -rf hardware/qcom-caf/msm8998/audio
rm -rf hardware/qcom-caf/msm8998/display
rm -rf hardware/qcom-caf/msm8998/media
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_audio -b 14 hardware/qcom-caf/msm8998/audio
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_display -b 14 hardware/qcom-caf/msm8998/display
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_media -b 14 hardware/qcom-caf/msm8998/media

rm -rf vendor/lineage-priv/keys
git clone https://github.com/sotodrom/keys vendor/lineage-priv/keys

export TZ=Asia/Jakarta
