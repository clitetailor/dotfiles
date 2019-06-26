#!/usr/bin/env bash

hc() {
	herbstclient "$@"
}

tag_names=( {1..9} )
tag_keys=( {1..9} 0 )

tag() {
	local key="${tag_keys[$1]}"
	local curtag_index=$(hc attr tags.focus.index)
	local name=""
	if [ $i -gt $curtag_index ] ; then
		name=""
	fi
	echo -n "%{A:herbstclient use_index "$i":}$name%{A}"
}

ws() {
	local workspaces=""
	local i
	for i in ${!tag_names[@]} ; do
		workspaces="$workspaces $(tag $i)"
	done
	echo -n "$workspaces"
}

clock() {
	date "+ %a %b %d, %T "
}

bat_path=$(upower -e | grep "BAT")

battery() {
	local percentage=$(upower -i $bat_path | grep -Po "percentage.+$" | grep -Po "[0-9]+")
	local bat_icon="ﴐ"
	local charging = $(upower -i $bat_path | grep -Po "state.+$" | grep -Po "charging")
	local bat_charging=""

	if [ $charging -eq "charging" ] ; then
		bat_charging=" ⚡"
	else
		bat_charging=""
	fi

	if [ $percentage -lt 15 ] ; then
		bat_icon="ﴆ"
	elif [ $percentage -lt 20 ] ; then
		bat_icon="ﴇ"
	elif [ $percentage -lt 30 ] ; then
		bat_icon="ﴈ"
	elif [ $percentage -lt 40 ] ; then
		bat_icon="ﴉ"
	elif [ $percentage -lt 50 ] ; then
		bat_icon="ﴊ"
	elif [ $percentage -lt 60 ] ; then
		bat_icon="ﴋ"
	elif [ $percentage -lt 70 ] ; then
		bat_icon="ﴌ"
	elif [ $percentage -lt 80 ] ; then
		bat_icon="ﴍ"
	elif [ $percentage -lt 90 ] ; then
		bat_icon="ﴎ"
	else
		bat_icon="ﴅ"
	fi

	echo -n " $bat_icon$bat_charging ${percentage}% "
}

panel() {
	echo -n "%{F#ffffff}%{l}$(ws) %{c}$(clock) %{r}$(battery)%{F-}"
}

{
	while true ; do
		echo "$(panel)"
		sleep 1
	done
} 2> /dev/null | lemonbar -f "Dejavu Sans Mono:size=11" -f "ShureTechMono Nerd Font:size=13" -B "#60000000" -g x28++ -p | bash
