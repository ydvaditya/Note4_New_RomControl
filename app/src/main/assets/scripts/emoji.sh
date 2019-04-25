#!/system/bin/bash

#NL BatchCopy Script

input_folder="/sdcard/input/1"

mount -o remount,rw /system

copyFiles () {
   if [ -d "$input_folder/$1" ]; then
      for j in $(ls "$input_folder/$1"); do
         cp -f "$input_folder/$1/$j" "/$1/$j"
         chmod 777 "/$1/$j"
      done
   fi
}


copyFiles "system/app"
copyFiles "system/etc"
copyFiles "system/fonts"

mount -o remount,ro /system