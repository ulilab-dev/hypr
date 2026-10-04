#!/bin/bash

echo "Installing packages..."
sudo pacman -Syu --needed hyprland \
                hyprland-qt-support \
                xdg-desktop-portal-hyprland \
                noctalia \
                git \
                base-devel \
                flatpak \
                fish \
                eza \
                starship \
                ttf-jetbrains-mono-nerd \
                kitty \
                vim \
                micro \
                qt5-wayland \
                qt6-wayland \
                nwg-look \
                adw-gtk-theme \
                networkmanager \
                cliphist \
                wl-clipboard \
                ffmpegthumbnailer \
                fastfetch \
                htop \
                btop \
                baobab \
                nautilus \
                haruna \
                gwenview \
                power-profiles-daemon

if [ $? -ne 0 ]; then
    echo "Package installation failed! Aborting. []"
    exit 1
fi

echo "Copying configuration files..."

mkdir -p ~/.config

cp -r fish/ hypr/ kitty/ ~/.config/ && \
cp starship.toml ~/.config/

if [ $? -eq 0 ]; then
  echo "Done []"
else
  echo "Meh! Failed to copy configs. []"
fi
