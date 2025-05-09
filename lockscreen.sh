#!/bin/bash

# Define lockscreen image path
lock_img="/tmp/lockscreen.png"

# Take a screenshot (grim for Wayland, scrot for X11)
grim "$lock_img"

# Apply blur effect using ImageMagick 7 (use 'magick' instead of 'convert')
magick "$lock_img" -blur 10x10 "$lock_img"

# Check if the JetBrains Mono font exists and get the correct path
font_path=$(fc-match "JetBrains Mono" | awk -F: '{print $1}')

time_text="$(date '+%H:%M')"
name_text="SUMEDH SHETE"
pass_text="Enter Passphrase to Unlock"

# Add overlay text using the correct font path
#if [[ -n "$font_path" ]]; then
#    magick "$lock_img" -font "$font_path" -pointsize 40 \
#        -fill white -gravity center -annotate +0+200 "Locked" "$lock_img"
#else
#    echo "Warning: JetBrains Mono font not found. Skipping text overlay."
#fi

magick "$lock_img" -gravity southeast -fill "#dddddd" -stroke "#121212" -strokewidth 1 \
	-font "DejaVu-Sans" -pointsize 80 -annotate +50+120 "$time_text" \
	-font "DejaVu-Sans" -pointsize 40 -annotate +680+390 "$pass_text"\
	-font "DejaVu-Sans" -pointsize 60 -annotate +50+50 "$name_text" "$lock_img"

# Lock the screen using swaylock
swaylock --indicator-idle-visible --indicator-radius 70 --indicator-thickness 15 --ring-color 121262 -i "$lock_img"

# Clean up (optional)
rm "$lock_img"

