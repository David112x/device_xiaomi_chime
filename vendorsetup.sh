# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Clone kernel
git clone https://github.com/BootleggersROM-Devices/kernel_xiaomi_chime -b main kernel/xiaomi/chime

# Clone vendor
git clone https://gitlab.com/itsHanibee/vendor_xiaomi_chime -b lineage-20 vendor/xiaomi/chime
git clone https://gitlab.com/itsHanibee/vendor_xiaomi_citrus -b lineage-20 vendor/xiaomi/citrus
git clone https://gitlab.com/itsHanibee/vendor_xiaomi_lime -b lineage-20 vendor/xiaomi/lime

# Hardware
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi

# Snapdragon Clang 16.1.0
git clone https://gitlab.com/itsHanibee/snapdragon-clang --depth=1 -b aosp-13 prebuilts/clang/host/linux-x86/clang-snapdragon
