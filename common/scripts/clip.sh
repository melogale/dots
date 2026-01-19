#!/usr/bin/env bash
source ~/.cache/wal/colors.sh
cliphist list | wmenu -i -b -l 5 -N "${background}" -n "${foreground}" -S "${color4}" -s "${background}" | cliphist decode | wl-copy
