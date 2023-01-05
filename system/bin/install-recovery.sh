#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:35061070:e6dc51d96f036ade80d24900d5533e91e5794a57; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:33033546:9ab54e38643a2b58f557a6641652f4111502275d EMMC:/dev/block/bootdevice/by-name/recovery e6dc51d96f036ade80d24900d5533e91e5794a57 35061070 9ab54e38643a2b58f557a6641652f4111502275d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
