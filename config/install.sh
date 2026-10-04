#!/bin/sh

cp -r dunst/ fish/ hypr/ kitty/ networkmanager-dmenu/ rofi/ waybar/ wlogout/ ~/.config &&

if [ $? -eq 0 ]; then
  echo "Done []"
else
  echo "Meh! []"
fi
