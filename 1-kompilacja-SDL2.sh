#!/bin/sh

source ./config-SDL2.sh

HOM=$HO/and/build

#Teraz będziemy starali się skompilować SDL2
PATH="$HO/and/ndk:$PATH"                 # dla 'ndk-build'
PATH="$HO/and/sdk/tools:$PATH"           # dla 'android'
PATH="$HO/and/sdk/platform-tools:$PATH"  # dla 'adb'

cd $HOM/android-project/

############ Kompilacja ###############
android update project -s -t $NUMER -p .
ndk-build
ant debug
echo "ant debug install"
