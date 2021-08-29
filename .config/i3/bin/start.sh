#!/bin/sh

for i in dunst picom gammastep xfce-polkit polybar dunst picom pipewire pipewire-pulse pipewire-media-session mpd mpDris2 nm-applet blueman-tray udiskie thunar 
do
	pkill $i
done

# Polkit and dbus
/usr/libexec/xfce-polkit &


# reload Xresources
xrdb -merge ~/.Xresources &

# Gnome-keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK &

# Start pipewire
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

# Set default backlight
xbacklight -set 45 &

# Enable tap
xinput set-prop "ELAN1200:00 04F3:3090 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "ELAN1200:00 04F3:3090 Touchpad" "libinput Middle Emulation Enabled" 1

# mpd with mpris start
mpd --no-daemon ~/.config/mpd/mpd.conf &
mpDris2 &

# support media keys
playerctld daemon &

# enable autotiling
autotiling &

# Restore wallpaper
feh --bg-fill ~/Pictures/color/carr.png

# Dust notification
dunst -c ~/.config/dunst/dunstrc &

# Picom compositor
#picom --config ~/.config/picom/picom.conf &

# Polybar
polybar -q main -c ~/.config/polybar/config.ini &

# Gammastep
gammastep -c ~/.config/gammastep/config.ini &

# file manager
thunar --daemon &

# tray
nm-applet &
udiskie -A --tray &
blueman-applet &

