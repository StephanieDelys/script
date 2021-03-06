LineageOS Build ( 16.00 )

Packages :
udo apt-get install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev repo

repo init -u git://github.com/LineageOS/android.git -b lineage-16.0


mkdir -p .repo/local_manifests

nano .repo/local_manifests/roomservice.xml

<?xml version="1.0" encoding="UTF-8"?>
 <manifest>
 <remove-project name="platform/prebuilts/clang/host/linux-x86" />
 <project name="PixelExperience/prebuilts_clang_host_linux-x86" path="prebuilts/clang/host/linux-x86" remote="github" revision="pie" />
 <project name="MyCats/android_device_xiaomi_whyred" path="device/xiaomi/whyred" remote="github" revision="lineage-16.0" />
 <project name="dopaemon/whyred path="kernel/xiaomi/whyred" remote="github" revision="android" />
 <project name="MyCats/android_vendor_xiaomi_whyred" path="vendor/xiaomi/whyred" remote="github" revision="lineage-16.0" />
 <project name="PixelExperience-Devices/vendor_MiuiCamera" path="vendor/MiuiCamera" remote="github" revision="pie-whyred" />
 <project name="LineageOS/android_packages_resources_devicesettings" path="packages/resources/devicesettings" remote="github" revision="lineage-16.0" />
 </manifest>
 
 repo sync -j8
 
 
 ccache -M 50G
 export USE_CCACHE=1
 export CCACHE_DIR=ccache
 export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"
 export LC_ALL=C
 . build/envsetup.sh
 lunch lineage_whyred-userdebug
 mka -j8 otapackage
 
 PLATFORM_VERSION_CODENAME=REL
PLATFORM_VERSION=9
TARGET_PRODUCT=aosp_f8331
TARGET_BUILD_VARIANT=eng
TARGET_BUILD_TYPE=release
TARGET_ARCH=arm64
TARGET_ARCH_VARIANT=armv8-a
TARGET_CPU_VARIANT=kryo
TARGET_2ND_ARCH=arm
TARGET_2ND_ARCH_VARIANT=armv8-a
TARGET_2ND_CPU_VARIANT=kryo
HOST_ARCH=x86_64
HOST_2ND_ARCH=x86
HOST_OS=linux
HOST_OS_EXTRA=Linux-4.19.53-gentoo-op-x86_64-Debian-GNU/Linux-9-(stretch)
HOST_CROSS_OS=windows
HOST_CROSS_ARCH=x86
HOST_CROSS_2ND_ARCH=x86_64
HOST_BUILD_TYPE=release
BUILD_ID=PQ3A.190801.002
OUT_DIR=out
