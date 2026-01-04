
# slightly scuffed wallpaper picker menu for use with pywal - uses nsxiv if installed, otherwise uses dmenu

FOLDER=$(xdg-user-dir PICTURES)/wallpapers # wallpaper folder
SCRIPT=~/.config/wal/script.sh # script to run after wal for refreshing programs, etc.


menu () {
		CHOICE=$(nsxiv -otb $FOLDER/*)

case $CHOICE in
		*.*) wal --cols16 lighten  -n -i "$CHOICE" -o $SCRIPT ;;
		*) exit 0 ;;
esac
}

# If given arguments:
# First argument will be used by pywal as wallpaper/dir path
# Second will be used as theme (use wal --theme to view built-in themes)

case "$#" in
		0) menu ;;
		1) wal -n -i "$1" -o $SCRIPT ;;
		2) wal -n -i "$1" --theme $2 -o $SCRIPT ;;
		*) exit 0 ;;
esac
