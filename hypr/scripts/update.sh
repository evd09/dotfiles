#!/bin/bash

echo "================================"
echo "   System Update Starting...   "
echo "================================"

# Update official packages
echo ""
echo ">>> Updating official packages..."
sudo pacman -Syu --noconfirm

# Update AUR packages
echo ""
echo ">>> Updating AUR packages..."
yay -Syu --noconfirm

# Remove orphaned packages
echo ""
echo ">>> Removing orphaned packages..."
orphans=$(pacman -Qdtq)
if [ -n "$orphans" ]; then
    sudo pacman -Rns $orphans --noconfirm
else
    echo "No orphaned packages found."
fi

# Clean package cache (keep last 2 versions)
echo ""
echo ">>> Cleaning package cache..."
sudo paccache -rk2

# Clean yay cache
echo ""
echo ">>> Cleaning AUR cache..."
yay -Sc --noconfirm

echo ""
echo "================================"
echo "   System Update Complete!     "
echo "================================"
