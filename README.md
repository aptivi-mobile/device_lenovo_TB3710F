Lenovo Tab 3 7 Essential (MediaTek MT8127)
==============

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | 1.3GHz Quad-Core MT8127
GPU     | Mali-450MP
Memory  | 1GB RAM
Shipped Android Version | 5.0
Kernel  | 3.10.54+
Storage | 8GB
Display | 7" 1024 x 600 px
Camera  | VGA (Front-Facing)

# cm-14.1 for TB3710F

## Bugs/Broken
	* FM Radio
	* Video recording
	* Frame drops in 1080p videos in HW decoder
	* GPS

## Local Manifest (roomservice.xml)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <remove-project path="device/generic/arm64" name="device/generic/arm64" groups="pdk" />
  <remove-project path="device/generic/armv7-a-neon" name="device/generic/armv7-a-neon" groups="pdk" />
  <remove-project path="device/generic/common" name="device/generic/common" groups="pdk" />
  <remove-project path="device/generic/goldfish" name="device/generic/goldfish" groups="pdk" />
  <remove-project path="device/generic/mini-emulator-arm64" name="device/generic/mini-emulator-arm64" groups="pdk" />
  <remove-project path="device/generic/mini-emulator-armv7-a-neon" name="device/generic/mini-emulator-armv7-a-neon" groups="pdk" />
  <remove-project path="device/generic/mini-emulator-x86" name="device/generic/mini-emulator-x86" groups="pdk" />
  <remove-project path="device/generic/mini-emulator-x86_64" name="device/generic/mini-emulator-x86_64" groups="pdk" />
  <remove-project path="device/generic/qemu" name="device/generic/qemu" />
  <remove-project path="device/generic/x86" name="device/generic/x86" groups="pdk" />
  <remove-project path="device/generic/x86_64" name="device/generic/x86_64" groups="pdk" />
  <remove-project path="device/google/atv" name="device/google/atv" groups="device,fugu,broadcom_pdk,generic_fs" />
  <remove-project path="device/google/contexthub" name="device/google/contexthub" groups="device" />
  <remove-project path="device/sample" name="device/sample" groups="pdk" />
  <remove-project path="hardware/akm" name="platform/hardware/akm" />
  <remove-project path="hardware/intel/audio_media" name="platform/hardware/intel/audio_media" groups="intel" />
  <remove-project path="hardware/intel/bootstub" name="platform/hardware/intel/bootstub" groups="intel" />
  <remove-project path="hardware/intel/common/bd_prov" name="platform/hardware/intel/common/bd_prov" groups="intel" />
  <remove-project path="hardware/intel/common/libstagefrighthw" name="platform/hardware/intel/common/libstagefrighthw" groups="intel" />
  <remove-project path="hardware/intel/common/wrs_omxil_core" name="platform/hardware/intel/common/wrs_omxil_core" groups="intel" />
  <remove-project path="hardware/marvell/bt" name="platform/hardware/marvell/bt" groups="marvell_bt" />
  <remove-project path="hardware/ti/omap3" name="platform/hardware/ti/omap3" groups="omap3" />
  <remove-project path="hardware/ti/omap4-aah" name="platform/hardware/ti/omap4-aah" groups="omap4-aah" />

  <remove-project path="prebuilts/clang/darwin-x86/host/3.6" name="platform/prebuilts/clang/darwin-x86/host/3.6" groups="pdk,darwin" />
  <remove-project path="prebuilts/clang/host/darwin-x86" name="platform/prebuilts/clang/host/darwin-x86" groups="pdk,darwin" />
  <remove-project path="prebuilts/gcc/darwin-x86/aarch64/aarch64-linux-android-4.9" name="LineageOS/android_prebuilts_gcc_darwin-x86_aarch64_aarch64-linux-android-4.9" groups="pdk,darwin,arm" />
  <remove-project path="prebuilts/gcc/darwin-x86/arm/arm-eabi-4.8" name="platform/prebuilts/gcc/darwin-x86/arm/arm-eabi-4.8" groups="pdk,darwin,arm" />
  <remove-project path="prebuilts/gcc/darwin-x86/arm/arm-linux-androideabi-4.9" name="LineageOS/android_prebuilts_gcc_darwin-x86_arm_arm-linux-androideabi-4.9" groups="pdk,darwin,arm" />
  <remove-project path="prebuilts/gcc/darwin-x86/host/i686-apple-darwin-4.2.1" name="platform/prebuilts/gcc/darwin-x86/host/i686-apple-darwin-4.2.1" groups="pdk,darwin" />
  <remove-project path="prebuilts/gcc/darwin-x86/x86/x86_64-linux-android-4.9" name="LineageOS/android_prebuilts_gcc_darwin-x86_x86_x86_64-linux-android-4.9" groups="pdk,darwin,x86" />
  <remove-project path="prebuilts/gdb/darwin-x86" name="platform/prebuilts/gdb/darwin-x86" groups="darwin" />
  <remove-project path="prebuilts/go/darwin-x86" name="platform/prebuilts/go/darwin-x86" groups="darwin,tradefed" />
  <remove-project path="prebuilts/ninja/darwin-x86" name="platform/prebuilts/ninja/darwin-x86" groups="darwin,pdk,tradefed" />
  <remove-project path="prebuilts/python/darwin-x86/2.7.5" name="platform/prebuilts/python/darwin-x86/2.7.5" groups="darwin,pdk,pdk-cw-fs,pdk-fs" />

  <project name="aptivi-mobile/device_lenovo_TB3710F" path="device/lenovo/TB3710F" remote="github" revision="cm-14.1" />
  <project name="aptivi-mobile/kernel_lenovo_TB3710F" path="kernel/lenovo/TB3710F" remote="github" revision="cm-14.1" />
  <project name="aptivi-mobile/vendor_lenovo_TB3710F" path="vendor/lenovo/TB3710F" remote="github" revision="cm-14.1" />

  <project name="LineageOS/android_external_stlport" path="external/stlport" remote="github" revision="cm-14.1" />
</manifest>
```
