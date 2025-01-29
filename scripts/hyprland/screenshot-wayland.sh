#!/bin/bash

folder=$HOME"/Pictures/Screenshots"

if ! [ -d folder ]; then
  mkdir ~/Pictures/Screenshots
fi

grim -g "$(slurp)" "$folder"/"$(date +%Y%m%d-%H%M%S)".png

recent_screenshot=$(ls -t "$folder" | head -n 1)
complete_path_file="$folder/$recent_screenshot"
wl-copy < "$complete_path_file"

