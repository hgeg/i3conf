xbacklight -set 0
current=$(xbacklight | cut -d. -f1)
#notify-send -t 1 "Brightness:" $current
