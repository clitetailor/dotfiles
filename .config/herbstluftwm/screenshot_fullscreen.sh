#!/usr/bin/env bash

clipboard=false

while [ "$1" != "" ] ; do
	case $1 in
		-clipboard | --clipboard )
			clipboard=true
		;;
	esac
	shift
done

if $clipboard ; then
	maim | xclip -selection clipboard -t image/png
else
	maim -f jpg ~/Pictures/maim_$(date +%Y_%M_%d)_$(date +%S%N | cut -b1-3).jpg
fi
