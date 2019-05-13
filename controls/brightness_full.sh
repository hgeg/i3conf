xbacklight -set 100
current=$(xbacklight | cut -d. -f1)
#notify-send "Brightness:" $current
