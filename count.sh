#!/bin/bash

for d in dataset/*/; do
    [ -d "$d" ] || continue

    n=$(find "$d" -maxdepth 1 -type f -name '*.jpg' | wc -l)

    if [ "$n" -le 5 ]; then
        echo "$d : $n 장 (부족)"
    else
        echo "$d : $n 장"
    fi
done
