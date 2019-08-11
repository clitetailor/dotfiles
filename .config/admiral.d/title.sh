hc () {
	herbstclient $@
}

title() {
	hc attr clients.focus.title
}

echo "$(title)"

while read -r line; do
	echo "$(title)"
done < <(hc --idle window_title_changed)

