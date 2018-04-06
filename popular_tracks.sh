#!/bin/bash

export LC_ALL=C

cut -d' ' -f2 play.txt | uniq -c | join -j2 - tracks.txt -o 1.1,1.2,2.3,2.4 | sort -nrk1
