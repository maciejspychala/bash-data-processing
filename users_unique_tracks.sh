#!/bin/bash

cut -d' ' -f -2 play.txt | join -j2 - tracks.txt -o 1.1,2.1 | sort | uniq | cut -d' ' -f1 | uniq -c | sort -nr
