#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi




vol() {
		vol=`amixer get Master | awk -F'[][]' 'END{ print $2 }' | sed 's/on://g'`
			echo -e "  ♫  : $vol"
		}



	I=0
	while :; do

		battery="$(cat /sys/class/power_supply/BAT0/capacity)"

		xsetroot -name "$( date +"%F %R" )    $(vol)  ◒ : $battery  "
			I=$(( ( ${I} + 1 ) % 11 ))
				sleep 1
			done &





picom -f &
nitrogen --restore
numlockx &

exec dwm