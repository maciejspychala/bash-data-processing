#!/bin/bash

export LC_ALL=C

if [ "$#" -ne 1 ]; then
    echo "usage: $0 ARTIST_NAME"
fi

grep -Ff <(grep " $1 " tracks.txt | cut -d' ' -f2 | sort -u) play.txt > /tmp/artist_plays
tracks_id=$(cut -d' ' -f2 /tmp/artist_plays | uniq -c | sort -nr | head -n 3 | awk '{print $2}')
grep -Ff <(printf "%s\n" "${tracks_id[@]}") /tmp/artist_plays | cut -d' ' -f -2 | sort -u | cut -d' ' -f1 | uniq -c| grep ' 3 ' | awk '{print $2}'
