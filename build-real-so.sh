#!/bin/sh
set -eu

mkdir -p lib

gcc -shared -fPIC -O2 -Wall -Wextra -o lib/bell_familyjr_2015.so lib/bell_familyjr_2015.c
gcc -shared -fPIC -O2 -Wall -Wextra -o lib/bell_familyjr_2016.so lib/bell_familyjr_2016.c
gcc -shared -fPIC -O2 -Wall -Wextra -o lib/bell_familyjr_2017.so lib/bell_familyjr_2017.c
gcc -shared -fPIC -O2 -Wall -Wextra -o lib/bell_familyjr_2018.so lib/bell_familyjr_2018.c
gcc -shared -fPIC -O2 -Wall -Wextra -o lib/bell_familyjr_2019.so lib/bell_familyjr_2019.c
gcc -shared -fPIC -O2 -Wall -Wextra -o lib/bell_familyjr_2020.so lib/bell_familyjr_2020.c
gcc -shared -fPIC -O2 -Wall -Wextra -o lib/bell_familyjr_2021.so lib/bell_familyjr_2021.c
gcc -shared -fPIC -O2 -Wall -Wextra -o lib/bell_familyjr_loader.so lib/bell_familyjr_loader.c

echo "Real shared objects built successfully."
