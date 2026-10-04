#!/bin/sh

cp -r fish/ hypr/ kitty/ ~/.config &&
cp startship.toml ~/.config

if [ $? -eq 0 ]; then
  echo "Done []"
else
  echo "Meh! []"
fi
