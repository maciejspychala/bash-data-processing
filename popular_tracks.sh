#!/bin/bash

cut -d' ' -f2 play.txt | sort | uniq -c | join -j2 - tracks.txt -o 1.1,1.2,2.3,2.4 | sort -nrk1
