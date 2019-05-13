#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
#killall -q nm-applet


# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done
#while pgrep -x nm-applet >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -l info main &
#nm-applet &

echo "launched..."
