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

# Tworzymy katalog z naszym projektem
mkdir $HOM
cd $HOM

# Pobieramy i rozpakowujemy biblioteki SDL i SDL_image
#wget https://www.libsdl.org/release/SDL2-2.0.4.tar.gz
tar zxf ../$LSDL2TGZ
#wget https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.1.tar.gz
tar zxf ../$LSDL2_imageTGZ

# Tworzymy katalog z projektem androidowym w naszym katalogu roboczym
cp -a $HOM/$LSDL2/android-project .

cd $HOM/android-project/jni
# Linkujemy potrzebne nam biblioteki
ln -s ../../SDL2-2.0.4 SDL
ln -s ../../SDL2_image-2.0.1 SDL_image

# Wstawiamy nasz kod
cd $HOM
mkdir src
cd src
tar xvfz $HO/and/program.tgz
cp -a $HOM/src/*.c $HOM/android-project/jni/src/
cp -a $HOM/src/*.h $HOM/android-project/jni/src/

# Zasoby
mkdir $HOM/android-project/assets
cp -a $HOM/src/*.bmp $HOM/android-project/assets/

cd $HOM/android-project/
sed -i 's+// "SDL2_image"+"SDL2_image"+' $HOM/android-project/src/org/libsdl/app/SDLActivity.java
sed -i "s/APP_ABI/APP_PLATFORM := android-12\nAPP_ABI/" $HOM/android-project/jni/Application.mk
