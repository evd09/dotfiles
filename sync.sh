#!/bin/bash
echo ">>> Syncing dotfiles to GitHub..."

cp -r ~/.config/hypr ~/dotfiles/
cp -r ~/.config/waybar ~/dotfiles/
cp -r ~/.config/kitty ~/dotfiles/
cp -r ~/.config/nvim ~/dotfiles/
cp -r ~/.config/rofi ~/dotfiles/
cp -r ~/.config/swaync ~/dotfiles/
cp -r ~/.config/fastfetch ~/dotfiles/
cp -r ~/.config/fish ~/dotfiles/
cp ~/.config/starship.toml ~/dotfiles/

cd ~/dotfiles
git add .
git commit -m "Update dotfiles $(date +%Y-%m-%d)"
git push

echo ">>> Dotfiles synced!"
