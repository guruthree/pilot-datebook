#!/bin/bash
gcc *.c -o pilot-datebook -I/usr/include/libpisock/ -Wno-incompatible-pointer-types -Wno-format -Wno-int-conversion -lpisock
