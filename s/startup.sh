# Set keyboard
#setxkbmap -option -option 'grp:rshift_toggle, compose:rctrl, grp:lctrl_rctrl_switch' dmru,ru,ua
#setxkbmap -option -option 'grp:rshift_toggle, compose:rctrl, grp:rwin_switch' umlauted,ruua
setxkbmap -option -option 'compose:rctrl, grp:rwin_toggle' umlauted,ruua
setxkbmap -device 12 sh-pedal


# as Esc when clicked and released quickly,  normal Ctrl otherwise. 
#xbindkeys &
xmodmap ~/s/mod4 & # Change capslock to ctrl and make another mod key out of Ctrl

xset r rate 200 40 & #typematic delay
xrandr --output eDP --rotate normal --output HDMI-0 --auto --left-of eDP --output VGA-0 --left-of eDP &
feh --bg-scale ~/s/bg/darkwood.jpg --bg-scale ~/s/bg/wallpaper.jpg &

echo "Starting xcape..."
killall xcape & 
xcape -e 'Control_L=Escape' -t 100 &
xcape -e 'Shift_L=ISO_Next_Group' -t 100 &
xcape -e 'Shift_R=ISO_Next_Group' -t 100 &

if pgrep -x "keynav" > /dev/null
then
        echo "keynav already running"
else
	keynav &
fi

if pgrep -x "selfspy" > /dev/null
then
        echo "selfspy already running"
else
    selfspy -d ~/.selfspy -c ~/.config/selfspy.conf &
fi

if pgrep -x "redshift" > /dev/null
then
        echo "redshift already running"
else
	redshift -l 51.34:12.3877 &
fi
if pgrep -x "volnoti" > /dev/null
then
        echo "volnoti already running"
else
	volnoti&
fi

zenity --info --title="Run ss" --text="Run SS!"

