#!/bin/bash

for f in *; do
[ -d "$f" ] || continue
dir_name="$dir_name $f"
done
echo "$dir_name"
