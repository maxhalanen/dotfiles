#!/usr/bin/env bash

# Folder where your wallpapers are
WALL_DIR="$HOME/Pictures/wallpapers"

# Time to wait between wallpaper changes (in seconds)
INTERVAL=300
	
pgrep -x swww-daemon > /dev/null || swww-daemon &
sleep 1  # give it time to start

# Infinite loop to change wallpapers
while true; do
    # Pick a random image from the folder
    FILE=$(find "$WALL_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

    # If a file was found, set it as wallpaper
    if [ -n "$FILE" ]; then
        swww img "$FILE" --transition-type fade --transition-duration 1
    fi

    # Wait before the next change
    sleep "$INTERVAL"
done
