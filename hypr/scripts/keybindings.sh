#!/bin/bash

bindings="Super + Q          → Terminal
Super + D          → App Launcher
Super + C          → Close Window
Super + F          → Fullscreen
Super + V          → Toggle Floating
Super + L          → Lock Screen
Super + Escape     → Power Menu
Super + U          → System Update
Super + H          → This Help Menu
Print              → Screenshot Fullscreen
Super + Print      → Screenshot Area
Shift + Print      → Save Screenshot
Super + Alt + W    → Shuffle Wallpaper
Super + 1-6        → Switch Workspace
Super + Shift 1-6  → Move to Workspace
Space + e          → Nvim File Tree
Space + ff         → Nvim Find Files
Space + fg         → Nvim Live Grep
Space + w          → Nvim Save
Space + q          → Nvim Quit
─────────────────────────────────────
MAINTENANCE
~/dotfiles/sync.sh → Sync Dotfiles to GitHub
Super + U          → System Update (pacman + yay)"

echo "$bindings" | rofi -dmenu \
    -p "Keybindings" \
    -theme-str 'window {width: 600px;}' \
    -no-custom \
    -format i
