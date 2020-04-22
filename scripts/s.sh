#!/bin/sh
#setxkbmap -option -option 'compose:rctrl' v4 &
#setxkbmap -option -option 'compose:rctrl, grp:rshift_toggle' v4,ru &
# setxkbmap -option -option 'grp:rctrl_toggle, compose:rwin' v4,ruua &
setxkbmap -option -option 'grp:rctrl_toggle, compose:rwin' v5,ruua &
# xrandr --output HDMI-2 --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off
# xrandr --output HDMI-2 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output eDP-1 --primary --mode 1600x900 --pos 1920x0 --rotate normal --output DP-2 --off
#xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-2 --off --output HDMI-2 --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output DP-1-3 --off --output DP-2 --off --output DP-1-1 --mode 1920x1080 --pos 4480x0 --rotate normal
xrandr --output DVI-D-1-1 --off --output DVI-D-1-2 --off --output HDMI-1-3 --off --output eDP-1 --mode 1600x900 --pos 4480x0 --rotate normal --output DP-1-2 --off --output HDMI-2 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output DP-1-3 --off --output DP-2 --off --output DP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal


xmodmap ~/s/mod4 &
xcape -e 'Control_L=Escape' -t 100  &
keynav &
ssh-add -q ~/.ssh/id_rsa_github &
