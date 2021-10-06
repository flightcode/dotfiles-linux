#/usr/bin/env bash

# Terminate Pre-Running
killall -q polybar

# Launch Bars
echo "---" | tee -a /tmp/polybar1.log
polybar topbar 2>&1 | tee -a /tmp/polybar1.log & disown

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	MONITOR=$m polybar --reload topbar &
done
