#!/bin/bash

sep_to_space() {
    sed 's/<SEP>/ /g'
}

epoch_to_date() {
    awk '{ $3 = strftime("%Y/%m", $3) } { print }'
}

head -n 20000 ../triplets_sample_20p.txt | sep_to_space | epoch_to_date > play.txt
tracks_id=$(cut -d' ' -f2 play.txt)
grep -aFf <(printf "%s\n" "${tracks_id[@]}") ../unique_tracks.txt | sed 's/ /_/g' | sep_to_space > tracks.txt
