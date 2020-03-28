hc () {
	herbstclient $@
}

max_length=32

title() {
	local t=$(hc attr clients.focus.title)
	local len=${#t}
	
	if [ $len -gt "$((max_length - 1))" ] ; then
		echo -n "%{B#FFFFFF}%{F#000000}  ${t:0:$max_length - 1}…  %{F-}%{B-}"
	elif [ $len -ne 0 ] ; then
		echo -n "%{B#FFFFFF}%{F#000000}  ${t:0}…  %{F-}%{B-}"
	else
		echo ""
	fi
}

echo "$(title)"

while read -r line; do
	echo "$(title)"
done < <(hc --idle)

