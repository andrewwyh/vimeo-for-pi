# vimeo-for-pi

This setup sets up Raspberry Pi in Kiosk mode, and plays back a Vimeo stream (or a Showcase) in a loop.

- Copy kiosk.service inside /lib/systemd/system, and perform systemctl daemon-reload
- Edit play.html to change the URL of the Vimeo stream
- set_display.sh is a shortcut to set the DISPLAY and Xauthority parameters ( run $source set_display.sh)
- style.css contains settings to disable scrollbars

