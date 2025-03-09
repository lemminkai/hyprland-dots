#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Script for changing blurs on the fly

notif="$HOME/.config/swaync/images/ja.png"

STATE=$(hyprctl -j getoption decoration:blur:passes | jq ".int")

if [ "${STATE}" == "2" ]; then
	hyprctl keyword decoration:blur:enabled false
	hyprctl keyword decoration:blur:size 2
	hyprctl keyword decoration:blur:passes 1
 #	notify-send -e -u low -i "$notif" " No Blur"



else
	hyprctl keyword decoration:blur:enabled true
	hyprctl keyword decoration:blur:size 5
	hyprctl keyword decoration:blur:passes 2
  #	notify-send -e -u low -i "$notif" " Normal Blur"
fi
