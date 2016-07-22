#!/bin/sh

#=================== Ustawienia ===========================
# katalog użytkownika, zmień
HO=/home/user
LSDL2=SDL2-2.0.4
LSDL2_image=SDL2_image-2.0.1

LSDL2TGZ=SDL2-2.0.4.tar.gz
LSDL2_imageTGZ=SDL2_image-2.0.1.tar.gz
# ściągamy do katalogu ~/and https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
# oraz http://dl.google.com/android/repository/android-ndk-r12b-linux-x86_64.zip
# rozpakowujemy i uaktualniamy android-17 4.2.2
# u mnie -t 4 = android-17
# ./android list target | grep 'id:'
NUMER=2
#==========================================================

HOM=$HO/and/build

#Teraz będziemy starali się skompilować SDL2
PATH="$HO/and/ndk:$PATH"                 # dla 'ndk-build'
PATH="$HO/and/sdk/tools:$PATH"           # dla 'android'
PATH="$HO/and/sdk/platform-tools:$PATH"  # dla 'adb'

cd $HOM/android-project/

############## Wgrywanie ##########
#ant debug
ant debug install
