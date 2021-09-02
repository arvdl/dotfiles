#!/usr/bin/env bash

## Autostart Programs

# pipewire
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

# Xresources
xrdb -merge ~/.Xresources &

# Set default brightness to 40%
brightnessctl set 40% &

# Autotiling
autotiling &

# Playerctld
playerctld daemon &

# Gammastep
gammastep -c ~/.config/gammastep/config.ini &

# file manager
pcmanfm --daemon &

# tray
nm-applet --indicator &
udiskie -A --tray &
blueman-applet &