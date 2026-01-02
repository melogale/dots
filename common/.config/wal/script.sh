#!/bin/bash
WALLPAPER_PATH="$1"
pywalfox update
pkill -SIGUSR2 waybar
pkill hyprpaper
hyprpaper & disown;
