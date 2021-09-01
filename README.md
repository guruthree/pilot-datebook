# pilot-datebook
Update of pilot-datebook to pilot-link 0.12

Warning this update is not especially thorough, there may have been unidentified bugs introduced by jumping to a much newer GCC.

Original source: https://www.mhessler.de/pilot-datebook/index.en.html


## What is it?
'pilot-datebook' has been intended to be the 'Swiss Army Knife' for datebook
related data manipulation, i.e., a tool to read/edit PalmOS Datebook databases.

The main strengths of pilot-datebook are the number of data formats it
supports for import/export (including csv, plain text, Windows desktop
format), and its manipulation abilities.

## Setup
1. Install pilot-link as normal for your OS
2. Git clone this repository to a folder, e.g. pilot-datebook
3. Copy [parsedate.c](https://github.com/jichu4n/pilot-link/blob/master/src/parsedate.c) and [parsedate.y](https://github.com/jichu4n/pilot-link/blob/master/src/parsedate.y) from the [pilot-link](https://github.com/jichu4n/pilot-link) sources to the pilot-datebook folder
4. Update `compile.sh` so the inlcude directory points towards the libpisock headers, for me they were in /usr/include/libpisock/ 
5. Change directory to the pilot-datebook folder and run `./compile.sh` to compile
6. To test, change directory to `pilot-datebook-test` and run `./test_all`

'pilot-datebook -h' should start the program and display a short summary screen on how to 
use it. An overview of all available help screens can be seen when calling
'pilot-datebook -hhelp'.

You might want to have a look at the various test scripts for samples on
how to use pilot-datebook. For an especially complex update/read/write
example have a look at script 'test_update_complex'.

For the conversion help screen use 'pilot-datebook -hconvert' (it also
explains how to replace the existing pilot-link tools 'install-datebook',
'reminders', 'read-ical').

## Additional notes
Please note that so far pilot-datebook has been developed and tested in a
Linux environment (Suse 7.0, Kernel 2.2.16). Although the author has tried
to not endanger portability, porting to other platforms has not been
attempted so far.
It has more recently passed the test suite on Gentoo 17.1/systemd, Kernel 5.13.4.

Usual disclaimer: use pilot-datebook at your own risk, it may corrupt your
data. Absolutely no warrenty! By using pilot-datebook you agree to these terms.
In particular, pilot-datebook does not do any consistency checks for your
data (i.e. it will not prevent you from having appointments which begin today,
and end yesterday - hotsync will crash on these things).
