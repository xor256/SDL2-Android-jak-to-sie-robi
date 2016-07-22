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

drwxr-xr-x.  9 user user    4096 06-15 00:00 android-ndk-r12b

drwxrwxr-x. 12 user user    4096 07-22 00:00 android-sdk-linux

lrwxrwxrwx.  1 user user      16 07-22 00:00 ndk -> android-ndk-r12b

-rw-rw-r--.  1 user user    5858 07-22 00:00 program.tgz

lrwxrwxrwx.  1 user user      17 07-05 00:00 sdk -> android-sdk-linux

-rw-r--r--.  1 user user 4136230 07-15 00:00 SDL2-2.0.4.tar.gz

-rw-r--r--.  1 user user 7797848 07-22 10:48 SDL2_image-2.0.1.tar.gz

Gdy rozpakujemy sdk i ndk powinniśmy uaktualnić android-17
<p align="center">
  <img src='http://bankfotek.pl/thumb/2011670.jpeg' width="350"/>
</p>

Następnie zmieniamy ustawienia w pliku config-SDL2.sh

i uruchamiamy 0-build-SDL2.sh aby rozpakowac i przygotować cały projekt

1-kompilacja-SDL2.sh

