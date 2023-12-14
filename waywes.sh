#!/bin/bash

# Main menu
mainmenu () {
echo -e "\033[1;32m            :.                 .:
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
This is basic script to run waydroid in weston with different\nmodes by K S Maan\n"
PS3='
Choose One Option [1-10] To Start Waydroid In Weston: '
options=("1920x1080 Fullscreen" "1366x768 Fullscreen"  "1920x1024 Windowed E2E" "1366x720 Windowed E2E" "1600x900 FHD Tablet Mode" "1024x600 HD Tablet Mode" "480x960 FHD Portrait Mode" "360x660 HD Portrait Mode" "Extras" "Exit")
select option in "${options[@]}"; do
    case $option in
        "1920x1080 Fullscreen")
            waydroid session stop && weston --width 1920 --height 1080 --fullscreen --shell=kiosk-shell.so --socket=wayland-1 &>/dev/null & sleep 5 && WAYLAND_DISPLAY=wayland-1 XDG_SESSION_TYPE=wayland waydroid show-full-ui
            break
	        ;;
        "1366x768 Fullscreen")
            waydroid session stop && weston --width 1366 --height 768 --fullscreen --shell=kiosk-shell.so --socket=wayland-1 &>/dev/null & sleep 5 && WAYLAND_DISPLAY=wayland-1 XDG_SESSION_TYPE=wayland waydroid show-full-ui
            break
	        ;;
	"1920x1024 Windowed E2E")
            waydroid session stop && weston --width 1920 --height 1024 --shell=kiosk-shell.so --socket=wayland-1 &>/dev/null & sleep 5 && WAYLAND_DISPLAY=wayland-1 XDG_SESSION_TYPE=wayland waydroid show-full-ui
	        break 
	        ;;
        "1366x720 Windowed E2E")
            waydroid session stop && weston --width 1366 --height 720 --shell=kiosk-shell.so --socket=wayland-1 &>/dev/null & sleep 5 && WAYLAND_DISPLAY=wayland-1 XDG_SESSION_TYPE=wayland waydroid show-full-ui
	        break
           	;;
        "1600x900 FHD Tablet Mode")
            waydroid session stop && weston --width 1600 --height 900 --shell=kiosk-shell.so --socket=wayland-1 &>/dev/null & sleep 5 && WAYLAND_DISPLAY=wayland-1 XDG_SESSION_TYPE=wayland waydroid show-full-ui
           	break
            	;;
        "1024x600 HD Tablet Mode")
            waydroid session stop && weston --width 1024 --height 600 --shell=kiosk-shell.so --socket=wayland-1 &>/dev/null & sleep 5 && WAYLAND_DISPLAY=wayland-1 XDG_SESSION_TYPE=wayland waydroid show-full-ui
            	break
           	;;
         "480x960 FHD Portrait Mode")
	        waydroid session stop && weston --width 480 --height 960 --shell=kiosk-shell.so --socket=wayland-1 &>/dev/null & sleep 5 && WAYLAND_DISPLAY=wayland-1 XDG_SESSION_TYPE=wayland waydroid show-full-ui
	        break
	        ;;
	 "360x660 HD Portrait Mode")
            waydroid session stop && weston --width 360 --height 660 --shell=kiosk-shell.so --socket=wayland-1 &>/dev/null & sleep 5 && WAYLAND_DISPLAY=wayland-1 XDG_SESSION_TYPE=wayland waydroid show-full-ui
	        break
	        ;;
	 "Extras")
	        submenu
	        ;;
	 "Exit")		
	        echo "User requested exit"
	        exit
	        ;;
        *) 
                echo "Invalid option $REPLY"
            	;;
    esac
done
}

# Submenu
submenu () {
	echo -e "\n"
	local PS3='
Choose One Option [1-4]: '
	local suboptions=("Add Script To Path" "Remove Script From Path" "FAQ" "Main Menu")
	local suboption
	select suboption in "${suboptions[@]}"; do
	case $suboption in
	"Add Script To Path")
	if [ -f "/bin/waywes.sh" ]; 
	then
	echo "waywesh.sh already in Path"
	else
	    su -c "cp waywes.sh /bin/ ; chmod 755 /bin/waywes.sh ; chmod u+x /bin/waywes.sh"
	    echo "Successfully added, now you can run waywes.sh from any directory to start the script"
	fi
    ;;
	"Remove Script From Path")
	if [ -f "/bin/waywes.sh" ];
        then
            sudo rm /bin/waywes.sh
	    echo "Successfully removed"
	    else
	    echo "Error no /bin/waywes.sh file exist"
	fi
	;;	
	"FAQ")
	echo -e "Following is the explanation of each option:
[1. 1920x1080 Fullscreen]
           Start waydroid in 1920x1080 resolution in fullscreen but 
           it will look stretched if you have lower resolution.\n
[2. 1366x768 Fullscreen]
           Start waydroid in 1366x768 resolution in fullscreen.\n
[3. 1920x1024 Windowed E2E]
           Start waydroid with Edge to Edge width in windowed mode
           recommended for 1080p display.\n
[4. 1366x720 Windowed E2E]
           Start waydroid with Edge to Edge width in windowed mode
           recommended for 720p display.\n
[5. 1600x900 FHD Tablet mode]
           Start waydroid in tablet mode suitable for Full HD 1080p display.\n
[6. 1024x600 HD Tablet Mode]
           Start waydroid in tablet mode suitable for HD 720p display.\n
[7. 480x960 FHD Portrait Mode]
           Useful when some app force to be in portrait and look
           tilted or you just want to run waydroid like mobile
           recommended for Full HD 1080p display.\n
[8. 360x660 HD Portrait Mode]
           Useful when some app force to be in portrait and look
           tilted or you just want to run waydroid like mobile
           recommended for HD 720p display.\n
[9. Extras has following options:]
           1. Add Script To Path this option add script to PATH
              variable so you can run it from any directory 
              "\"requires root access"\".
           2. Remove Script From Path is used to remove script
              from PATH variable "\"requires root access"\".
           3. FAQ for explanation of each operation 
           4. Main Menu to return in main menu\n
*) My github page for updates https://github.com/KSMaan45/waywes"
     submenu
;;
	"Main Menu")
	   mainmenu
     ;;
    *) echo "Invalid option $REPLY"
   	;;
	
    esac
done
}
mainmenu
