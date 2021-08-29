# pilot-datebook
Update of pilot-datebook to pilot-link 0.12

Tool to read/edit PalmOS Datebook databases

https://www.mhessler.de/pilot-datebook/index.en.html

## Setup
1. Install pilot-link as normal for your OS
2. Git clone this repository to a folder, e.g. pilot-datebook
3. Copy [parsedate.c](https://github.com/jichu4n/pilot-link/blob/master/src/parsedate.c) and [parsedate.y](https://github.com/jichu4n/pilot-link/blob/master/src/parsedate.y) from the [pilot-link](https://github.com/jichu4n/pilot-link) sources to the pilot-datebook folder
4. Update `compile.sh` so the inlcude directory points towards the libpisock headers, for me they were in /usr/include/libpisock/ 
5. Change directory to the pilot-datebook folder and run `./compile.sh` to compile
6. To test, change directory to `pilot-datebook-test` and run `./test_all`
