#!/bin/bash
xset s noblank
xset s off
xset -dpms

unclutter -idle 0.5 -root &
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences
chromium-browser --noerrdialogs --disable-infobars  --kiosk play.html --hide-scrollbars &

sleep 5
xdotool keydown Tab
xdotool keyup Tab
sleep 1
xdotool keydown space
xdotool keyup space
