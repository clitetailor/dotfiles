hc () {
	herbstclient $@
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

echo "$(ws)"

while read -r line; do
	echo "$(ws)"
done < <(hc --idle tag_changed)

