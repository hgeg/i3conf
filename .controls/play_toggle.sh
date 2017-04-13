playerctl play-pause
status=$(playerctl status)
notify-send "Player:" "$status"
