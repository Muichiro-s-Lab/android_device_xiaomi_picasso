# kernel/xiaomi
rm -rf kernel/xiaomi
git clone -b android-4.19 https://github.com/EndCredits/kernel_xiaomi_sm7250.git kernel/xiaomi/sm7250 --depth=1 --recursive

# vendor/xiaomi/sm8250-common
rm -rf vendor/xiaomi/sm8250-common
git clone -b lineage-21.0 https://github.com/EndCredits/android_vendor_xiaomi_sm8250-common.git vendor/xiaomi/sm8250-common --depth=1

# vendor/xiaomi
rm -rf vendor/xiaomi/picasso
git clone -b lineage-21.0 https://github.com/EndCredits/android_vendor_xiaomi_picasso-oss.git vendor/xiaomi/picasso --depth=1

# device/xiaomi/sm8250-common
rm -rf device/xiaomi/sm8250-common
git clone -b InfinityX https://github.com/Muichiro-s-Lab/android_device_xiaomi_sm8250-common.git device/xiaomi/sm8250-common --depth=1