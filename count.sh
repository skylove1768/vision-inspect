#!/bin/bash
for d in dataset/*/; do
n=$(ls "$d" | wc -l)
if [ "$n" -le 5 ]; then
echo "$d : $n 장 (부족)"
else
echo "$d : $n 장"
fi
done