#!/bin/sh
#Startup script,since it's easier to write all this in one file and running it manually than understanding why spectrwm's native autostart doesn't work. 

xset b off &
xset -b & #disable beep,I the two commands are probably identical,TODO: look into it.
set -o vi & #readline VIM shortcuts
xmodmap /home/sh/srv/mod4 & # Change capslock to ctrl and make another mod key out of Ctrl
setxkbmap -option 'grp:alt_space_toggle, compose:rctrl' dvorak,ru,ua  #compose key and language switch.
