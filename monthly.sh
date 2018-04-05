#!/bin/bash

cut -d' ' -f3 play.txt | sort | uniq -c
