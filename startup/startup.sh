# TODO rewrite


#setxkbmap -option 'grp:alt_space_toggle, compose:rctrl' sh-mirror,dvorak,ru,ua &  #compose key and language switch.  
#setxkbmap -option 'grp:rshift_toggle, compose:rctrl' dvorak,sh-mirror3,ru,ua &  #compose key and language switch.
echo "Hello!" &
#setxkbmap -option 'grp:rshift_toggle, compose:rctrl' dvorak,ru,ua &  #compose key and language switch.
#setxkbmap -option -option 'grp:rshift_toggle, compose:rctrl' dmru,ru,ua &  #compose key and language switch.
setxkbmap -option -option 'grp:rshift_toggle, compose:rctrl, grp:lctrl_rctrl_switch' dmru,ru,ua

# Ctrl_L (in my case - Caps lock) as Esc when clicked and released quickly,  normal Ctrl otherwise. Beautiful!
xbindkeys &
xmodmap /home/sh/s/mod4 & # Change capslock to ctrl and make another mod key out of Ctrl
xcape -e 'Control_L=Escape' -t 100 &
xcape -e 'Shift_L=ISO_Next_Group' -t 100 &
zsh ~/s/s2.sh &
#xset -b 
xset r rate 200 40 & #typematic delay
#redshift
# For multiple monitors
 #xrandr --output eDP-1 --rotate normal --output HDMI-1 --auto --left-of eDP-1 &
 xrandr --output eDP --rotate normal --output HDMI-0 --auto --left-of eDP &
# redshift &
  feh --bg-scale ~/s/bg/darkwood.jpg --bg-scale ~/s/bg/wallpaper.jpg &
#  xbindkeys  &
#  xset -b
keynav &
volnoti&
redshift -l 51.34:12.3877 &
