#!/bin/bash

pkill waybar
pkill swaync
pkill -f nwg-dock-hyprland

waybar &
swaync &
nwg-dock-hyprland -r -x &
