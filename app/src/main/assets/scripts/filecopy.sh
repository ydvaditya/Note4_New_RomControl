#!/system/bin/sh

filename="1.apk"
file_source="/sdcard"
file_dest="/system/app"

mount -o remount,rw /system
cp -f "$file_source/$filename" "$file_dest/$filename"
chmod 777 "$file_dest/$filename"
mount -o remount,ro /system