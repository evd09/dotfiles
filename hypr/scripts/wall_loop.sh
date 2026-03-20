#!/bin/bash
DIR="/home/eric/images/backgrounds"

while true; do
    PICS=($(find "$DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" \)))
    RANDOM_PIC=${PICS[RANDOM % ${#PICS[@]}]}
    /usr/bin/swww img "$RANDOM_PIC" --transition-type wipe --transition-duration 2
    sleep 3600  # 1 hour
done
