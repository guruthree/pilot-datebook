
WHAT IS IT?
'pilot-datebook' has been intended to be the 'Swiss Army Knife' for datebook
related data manipulation.

The main strengths of pilot-datebook are the number of data formats it
supports for import/export (including csv, plain text, Windows desktop
format), and its manipulation abilities.


HOW DO I INSTALL IT?
To install pilot-datebook you need the latest pilot-link version
(currently pilot-link 0.9.5) first.
pilot-datebook can be installed on top of this pilot-link version in the
following way:

* Untar source code:
	tar xf pilot-datebook-20020224.tar

* Add the following lines to Makefile.in:
pilot-datebook$(EXT): $(PILIB) $(GETOPT) \
  pilot-datebook.o pilot-datebook-data.o \
  pilot-datebook-joblist.o pilot-datebook-job.o pilot-datebook-sort.o \
  pilot-datebook-update.o pilot-datebook-compare.o pilot-datebook-io.o \
  pilot-datebook-pdb.o pilot-datebook-csv.o pilot-datebook-longtxt.o \
  pilot-datebook-hotsync.o pilot-datebook-remind.o pilot-datebook-ical.o \
  pilot-datebook-shorttxt.o pilot-datebook-windat.o parsedate.o
        $(CCLINK) pilot-datebook.o pilot-datebook-data.o \
  pilot-datebook-joblist.o pilot-datebook-job.o pilot-datebook-sort.o \
  pilot-datebook-update.o pilot-datebook-compare.o pilot-datebook-io.o \
  pilot-datebook-pdb.o pilot-datebook-csv.o pilot-datebook-longtxt.o \
  pilot-datebook-hotsync.o pilot-datebook-remind.o pilot-datebook-ical.o \
  pilot-datebook-shorttxt.o pilot-datebook-windat.o parsedate.o \
  $(PILIB) $(GETOPT) -o $@ $(LIBS)

[the character in front of $(CCLINK) has to be a tab, make sure you
change it accordingly when copy & pasting]

* Run './configure'
This should generate a new Makefile which contains the above lines.

* Run 'make pilot-datebook'
This should compile the source code and eventually generate an executable.

* Run 'pilot-datebook -h'
This should start the program and display a short summary screen on how to
use it. An overview of all available help screens can be seen when calling
'pilot-datebook -hhelp'.

* Go to subdirectory pilot-datebook-test
	cd pilot-datebook-test

* Run 'test_all'
This will run various tests which ensure that pilot-datebook runs properly
as intended by the author. The test script will abort if an error is
encountered. If all tests are passed, then it should be safe
to use pilot-datebook.

* Enjoy!
You might want to have a look at the various test scripts for samples on
how to use pilot-datebook. For an especially complex update/read/write
example have a look at script 'test_update_complex'.

For the conversion help screen use 'pilot-datebook -hconvert' (it also
explains how to replace the existing pilot-link tools 'install-datebook',
'reminders', 'read-ical').


Matthias Hessler
pilot-datebook@mhessler.de
http://www.mhessler.org/pilot-datebook/


ADDITIONAL NOTES:
Please note that so far pilot-datebook has been developed and tested in a
Linux environment (Suse 7.0, Kernel 2.2.16). Although the author has tried
to not endanger portability, porting to other platforms has not been
attempted so far.

Usual disclaimer: use pilot-datebook at your own risk, it may corrupt your
data. Absolutely no warrenty! By using pilot-datebook you agree to these terms.
In particular, pilot-datebook does not do any consistency checks for your
data (i.e. it will not prevent you from having appointments which begin today,
and end yesterday - hotsync will crash on these things).

