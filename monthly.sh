#!/bin/bash

export LC_ALL=C

cut -d' ' -f3 play.txt | awk '{ a[$1] += 1 } END { for (i in a) print a[i], i }' | sort -nr
