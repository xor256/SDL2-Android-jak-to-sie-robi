# Biblioteka SDL2 i Android

Przykład jak skompilować program na androida używając biblioteki SDL2 (_image _mixer)

Zakładamy, że posiadamy linuxa np. Lubuntu dograliśmy obowiązkowe pakiety apt-get install openjdk-7-jdk ant

oraz utworzyliśmy katalog ~/and do którego przenieśliśmy wszystkie biblioteki:

1. http://libsdl.org/release/SDL2-2.0.4.tar.gz

2. https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.1.tar.gz

3. https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz

4. http://dl.google.com/android/repository/android-ndk-r12b-linux-x86_64.zip

Nasz program jest w pliku program.tgz
/main.c
*.png *.bmp etc.

Pliki i katalogi w ~/and

android-ndk-r12b

android-sdk-linux

ndk -> android-ndk-r12b

program.tgz

sdk -> android-sdk-linux

SDL2-2.0.4.tar.gz

SDL2_image-2.0.1.tar.gz

Gdy rozpakujemy sdk i ndk powinniśmy uaktualnić android-17
<p align="center">
  <img src='http://bankfotek.pl/thumb/2011670.jpeg' width="350"/>
</p>

Zmieniamy ustawienia w zerowym i uruchamiamy *0-build.sh* aby rozpakowac i przygotować cały projekt

1-komp.sh by skompilować projekt
