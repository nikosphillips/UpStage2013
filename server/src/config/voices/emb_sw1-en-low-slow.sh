#!/bin/sh
#automatically generated. think before editing.
 /usr/bin/timeout 15 /usr/bin/espeak -k27 -v mb/mb-sw1-en --stdin  | /usr/bin/mbrola -e  -t1.4 -f0.6  /usr/local/share/mbrola/sw1 - $1.wav ;
 /usr/bin/timeout 15  lame -S --quiet -m m -s 16  --resample 22.05 --preset phone $1.wav $1;
 rm $1.wav 