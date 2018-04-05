#!/bin/bash

sep_to_space() {
    sed 's/<SEP>/ /g'
}

epoch_to_date() {
    awk '{ $3 = strftime("%Y/%m", $3) } { print }'
}

get_related_tracks() {
    grep -aFf <(printf "%s\n" "${tracks_id[@]}") ../unique_tracks.txt
}

head -n 20000 ../triplets_sample_20p.txt | sep_to_space | epoch_to_date | sort -k2 > play.txt
tracks_id=$(cut -d' ' -f2 play.txt)
get_related_tracks | sed 's/ /_/g' | sep_to_space | sort -k2 > tracks.txt
