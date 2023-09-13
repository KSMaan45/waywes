#!/bin/bash
echo -e "            :.                 .:            
            .-:.   .......   .:-.            
              :-:-----------:--.             
            .:-----------------:.            
           :---------------------:           
          :------------------------          
         :-------------------------:         
         =-...::-------------::...-=         
        .==-    ===-     :===    :==.        
         ===.   :-.       .-:   .===         
         :===        :-:        -==:         
          :==-     .=====:     :==-          
           .-=.  .-=======-.   ==.           
             .-:-===========-:-:             
                .:-=======--:.               \n
This is basic bash script to run waydroid in weston\nwith different modes by K S Maan\n"

PS3='
Choose One Option [1-8] To Start Waydroid In Weston: '
options=("1920x1080 Full Screen" "1366x768 Full Screen" "1280x720 Windowed" "Mobile Portrait Mode" "Add Script To Path" "Remove Script From Path" "FAQ" "Exit")
select option in "${options[@]}"; do
    case $option in
        "1920x1080 Full Screen")
            waydroid session stop && weston --width 1920 --height 1080 --fullscreen --shell=kiosk-shell.so & sleep 1 && WAYLAND_DISPLAY=wayland-1 waydroid show-full-ui
            break
	    ;;
        "1366x768 Full Screen")
            waydroid session stop && weston --width 1366 --height 768 --fullscreen --shell=kiosk-shell.so & sleep 1 && WAYLAND_DISPLAY=wayland-1 waydroid show-full-ui
            break
	    ;;
        "1280x720 Windowed")
            waydroid session stop && weston --width 1280 --height 720 --shell=kiosk-shell.so & sleep 1 && WAYLAND_DISPLAY=wayland-1 waydroid show-full-ui
	    break
            ;;
	"Mobile Portrait Mode")
	    waydroid session stop && weston --width 360 --height 720 --shell=kiosk-shell.so & sleep 1 && WAYLAND_DISPLAY=wayland-1 waydroid show-full-ui
	    break
	    ;;
	"Add Script To Path")
	if [ -f "/bin/waywes.sh" ]; 
	then
	echo "waywesh.sh already in Path"
	else
	    sudo chmod u+x waywes.sh && cp waywes.sh /bin/
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
	   echo "Following is the explanation what each option is used for:
1) 1920x1080 Full Screen will run waydroid in 1920x1080 resolution in fullscreen but it will look stretched if you have lower resolution.
2) 1366x768 Full Screen will run waydroid in 1366x768 resolution in fullscreen.
3) 1280x720 Windowed will run windowed mode with 1280x720 resolution recommended when you want to do mutli task with host and waydroid.
4) Mobile Portrait Mode is used when some app force to be in portrait and look tilted or you just want to run waydroid like mobile.
5) Add Script To Path this option add script to PATH variable so you can run it from any directory "\"you must run script as sudo to perform this operation"\".
6) Remove Script From Path is used to remove script from PATH variable "\"you must run script as sudo to perform this operation"\".
*) My github page for updates https://github.com/KSMaan45/waywes"


	    ;;
	"Exit")		
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "Invalid option $REPLY";;
    esac
done
