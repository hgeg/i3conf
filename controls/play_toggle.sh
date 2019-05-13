playerctl play-pause
sleep 0.1
status=$(playerctl status)
notify-send "Player:" "$status"
