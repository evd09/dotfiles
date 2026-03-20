#!/bin/bash

# Define the environment so systemd can see the display
export SWWW_SOCK="/run/user/1000/wayland-1-swww-daemon..sock"

# Path to your backgrounds
DIR="/home/eric/images/backgrounds"

# Find a random image
PICS=($(find "$DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" \)))
RANDOM_PIC=${PICS[RANDOM % ${#PICS[@]}]}

# Apply the wallpaper
/usr/bin/swww img "$RANDOM_PIC" --transition-type wipe --transition-duration 2
