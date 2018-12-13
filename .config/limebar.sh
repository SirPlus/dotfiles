#!/bin/sh

clock() {
    date +%H:%M:%S
}

battery() {
    cat /sys/class/power_supply/BAT0/capacity
}

Sound(){
	NOTMUTED=$( amixer sget Master | grep "\[on\]" )
	if [[ ! -z $NOTMUTED ]] ; then
		VOL=$(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master) | sed 's/%//g')
		if [ $VOL -ge 85 ] ; then
			echo -e "\uf028 ${VOL}%"
		elif [ $VOL -ge 50 ] ; then
			echo -e "\uf027 ${VOL}%"
		else
			echo -e "\uf026 ${VOL}%"
		fi
	else
		echo -e "\uf026 M"
	fi
}

while true; do
	echo -e "%{l}$(Language)" "%{c}$(ActiveWindow)" "%{r}$(Wifi)  $(Battery)  $(Sound)  $(Clock)"
	sleep 0.1s
done
