sudo service network-manager restart
killall -q nm-applet
while pgrep -x nm-applet >/dev/null; do sleep 1; done
nm-applet &
