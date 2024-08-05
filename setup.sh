#!/bin/bash

echo "Setting up alacritty..."

sudo dnf install alacritty

mkdir working
cd working
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CascadiaCode.zip
unzip CascadiaCode.zip
mkdir -p ~/.local/share/fonts/NerdFonts
cp *.ttf ~/.local/share/fonts/NerdFonts
fc-cache -v -f
cd ..
mkdir -p ~/.config/alacritty
cp alacritty.toml ~/.config/alacritty
rm -rf working

echo "Setup complete!"
