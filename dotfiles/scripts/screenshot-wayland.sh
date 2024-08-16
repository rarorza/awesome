#!/bin/bash

folder=$HOME"/Pictures/Screenshots"

grim -g "$(slurp)" "$folder"/"$(date +%Y%m%d-%H%M%S)".png
