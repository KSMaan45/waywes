#!/bin/bash

# Unset any existing WAYLAND_DISPLAY
unset WAYLAND_DISPLAY

echo -e "
\033[1;32m            :.                 .:            
            .-:.   .......   .:-.            
             .--:-----------:--.             
            .:-----------------:.            
           :---------------------:           
          :-----------------------:          
         :-------------------------:         
         --...::-------------::...--         \033[00m
\033[1;33m         ==:    ===:     :===    :==         
         ===.   :-.       .-:   .===         
         :===        :-:        ===:         
          :==:     :=====:     :==:          
           .-=.  .-=======-.  .=-.           
             .-:-===========-:-.             
               .:--========--:.              
                  ''======''                 \033[00m\n
\e[1mRun waydroid in weston with different modes by K S Maan\n\e[0m"
echo "Select resolution:
    1) 1366x768 Fullscreen      2) 1920x1080 Fullscreen
    3) 1366x720 Windowed E2E    4) 1920x1024 Windowed E2E
    5) 1024x600 HD Tablet Mode  6) 1600x900 FHD Tablet Mode
    7) 360x660 HD Portrait Mode 8) 460x960 FHD Portrait Mode
    9) Custom"

read -rp "Choice: " options

case $options in
1) RES="1366x768" FS="--fullscreen" ;;
2) RES="1920x1080" FS="--fullscreen" ;;
3) RES="1366x720" FS="" ;;
4) RES="1920x1024" FS="" ;;
5) RES="1024x600" FS="" ;;
6) RES="1600x900" FS="" ;;
7) RES="360x660" FS="" ;;
8) RES="460x960" FS="" ;;
9) read -rp "Enter WIDTHxHEIGHT: " RES 
   read -rp "Fullscreen? (1 = Yes, 0 = No): " in
  [ "$in" = "1" ] && FS="--fullscreen" ;;
*) echo "Invalid choice" exit 1 ;;
esac

# Getting RES value from selected options
WIDTH=${RES%x*}
HEIGHT=${RES#*x}

# Stop any existing session
waydroid session stop

echo "Launching Weston"

# Weston configuration
weston \
  --shell=kiosk-shell.so \
  --width=$WIDTH \
  --height=$HEIGHT \
  $FS \
  & WESTON_PID=$!

# Wait until Wayland socket exists
while [ ! -S /run/user/$(id -u)/wayland-1 ]; do
    sleep 0.5
done

# Starting Waydroid
WAYLAND_DISPLAY=wayland-1 waydroid show-full-ui &

# Waiting for Weston to exit
wait $WESTON_PID

# Stop waydroid session
waydroid session stop

