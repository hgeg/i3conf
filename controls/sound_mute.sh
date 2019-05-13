current=$(echo $(amixer -D pulse set Master 0 toggle) | awk -F"[][]" '// { print $4 }')
#current=$(echo $(amixer -c 0 set Speaker 0 toggle) | awk -F"[][]" '/%/ { print $2 }' | head -n 1)
#current=$(echo $(amixer -c 0 set Headphone 0 toggle) | awk -F"[][]" '/%/ { print $2 }' | head -n 1)
notify-send -t 1 "Sound:" "$current"
