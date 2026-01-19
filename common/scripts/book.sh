#!/usr/bin/env bash
source ~/.cache/wal/colors.sh
file="$(fd --search-path /data/documents | wmenu -i -b -l 5 -N "${background}" -n "${foreground}" -S "${color4}" -s "${background}")"
[ -n "$file" ] && zathura "$file"
