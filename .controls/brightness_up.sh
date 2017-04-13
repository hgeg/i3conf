xbacklight -inc 5
current=$(xbacklight | cut -d. -f1)
notify-send "Brightness:" $current
