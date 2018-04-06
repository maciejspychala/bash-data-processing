#!/bin/bash

export LC_ALL=C

cut -d' ' -f -2 play.txt | sort -u | cut -d' ' -f1 | uniq -c | sort -nr
