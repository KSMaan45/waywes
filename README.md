## waywes
waywes is a script made to ease the launch process of Waydroid in X11 by using Weston compositor with different window modes like fullscreen, windowed and mobile portrait.
<img src="https://github.com/KSMaan45/waywes/blob/main/S1%20Main.png">

## Requirements
- waydroid
- weston
- git

## Install 

1. Clone the repo
```shell 
git clone https://github.com/KSMaan45/waywes.git
```

2. Change directory 
```shell 
cd waywes
```

3. Make script executable 
```shell 
chmod +x waywes.sh
```

4. Execute script 
```shell 
./waywes.sh
```

## Usage

| Options | Description |
| :---: | :--- |
| 1 | Start waydroid in 1920x1080 resolution in fullscreen |
| 2 | Start waydroid in 1366x768 resolution in fullscreen |
| 3 | Start waydroid with Edge to Edge width in windowed mode recommended for 1080p display |
| 4 | Start waydroid with Edge to Edge width in windowed mode recommended for 720p display|
| 5 | Start waydroid in tablet mode suitable for Full HD 1080p display |
| 6 | Start waydroid in tablet mode suitable for HD 720p display |
| 7 | Useful when some app force to be in portrait and look tilted or you just want to run waydroid like mobile recommended for Full HD 1080p display |
| 8 | Useful when some app force to be in portrait and look tilted or you just want to run waydroid like mobile recommended for HD 720p display |
| 9 | Extras explained below
| 9.1 | 1. Add Script To Path this option add script to PATH variable so you can run it from any directory ```"requires root access"``` |
| 9.2 | 2. Remove Script From Path is used to remove script from PATH variable ```"requires root access"``` |
| 9.3 | 3. FAQ for explanation of each operation | 
| 9.4 | 4. Main Menu to return in main menu |
           
**Note:** you can use options ```1-10``` without root but submenu options ```1``` and ```2``` of ```9. Extras``` need ```root access```

## Add your own resolution

Since i can not add all the resolutions but the one widely used and tested by me are added in the script, if you want to add your own edit ```waywes.sh``` with any text editor and make changes to ```--width``` and ```--height``` part with your desire resolution, Example for ```2560x1440``` resolution it will be like ```--width 2560 --height 1440```, you can also change entry name like  ```"1920x1080 Fullscreen")``` to ```"2560x1440 Fullscreen")``` 
## Screenshots 
**Fullscreen**
<img src="https://github.com/KSMaan45/waywes/blob/main/S2%20Fullscreen.png">

**Windowed E2E**
<img src="https://github.com/KSMaan45/waywes/blob/main/S3%20Windowed%20E2E.png">

**Tablet Mode**
<img src="https://github.com/KSMaan45/waywes/blob/main/S4%20Tablet%20Mode.png">

**Mobile Portrait**
<img src="https://github.com/KSMaan45/waywes/blob/main/S5%20Portrait%20Mode.png">

