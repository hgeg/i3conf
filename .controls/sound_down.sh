current=$(echo $(amixer -D pulse set Master 5%-) | awk -F"[][]" '/%/ { print $2 }' | head -n 1)
notify-send -t 1 "Volume:" $current
