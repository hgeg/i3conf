current=$(echo $(amixer -D pulse set Master 1+ toggle) | awk -F"[][]" '// { print $4 }')
notify-send -t 1 "Sound:" "$current"
