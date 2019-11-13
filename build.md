
export ARCH=arm64
export SUBARCH=arm64
export KBUILD_BUILD_USER=Doraemon
export KBUILD_BUILD_HOST=Nobita
export CROSS_COMPILE=~/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=~/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
make O=out whyred-perf_defconfig
make O=out menuconfig
