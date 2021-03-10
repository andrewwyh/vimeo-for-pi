#!/bin/bash
xset s noblank
xset s off
xset -dpms

unclutter -idle 0.5 -root &
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences
chromium-browser --noerrdialogs --disable-infobars  --kiosk /home/pi/vimeo-for-pi/play.html --hide-scrollbars &

#sleep 20
#xdotool keydown Tab;
#xdotool keyup Tab;
#sleep 1
#xdotool keydown space; xdotool keyup space;

while true; do
 xdotool keydown ctrl+r; xdotool keyup ctrl+r;
 sleep 20
xdotool keydown Tab;
xdotool keyup Tab;
sleep 1
xdotool keydown space; xdotool keyup space;
sleep 600
done

