#!/bin/bash

export LC_ALL=C
cut -d' ' -f 2 play.txt | uniq -c | join -j2 -o 1.1,2.3 - tracks.txt | awk '{a[$2] += $1}END{for(i in a) print a[i],i}' | sort -nr
