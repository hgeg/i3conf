xbacklight -dec 5
current=$(xbacklight | cut -d. -f1)
notify-send -t 1 "Brightness:" $current
