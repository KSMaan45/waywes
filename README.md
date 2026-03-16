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
## Launch from anywhere
### Method 1.
With shell
```shell
alias waywes='/path/to/waywes.sh'
```
add above line in your default shell config file such as .bashrc for bash or .zshrc for zsh, restart your shell and now you can start script with just ```waywes``` from any directory

### Method 2.
With $PATH directory
```shell
cp /path/to/waywes.sh $HOME/.local/bin
```
after copying to ```$HOME/.local/bin``` you can just run ```waywes.sh``` from any directory

## Usage

| Options | Description |
| :---: | :--- |
| 1 | Start waydroid in 1366x768 resolution in fullscreen |
| 2 | Start waydroid in 1920x1080 resolution in fullscreen |
| 3 | Start waydroid with Edge to Edge width in windowed mode recommended for 720p display |
| 4 | Start waydroid with Edge to Edge width in windowed mode recommended for 1080p display |
| 5 | Start waydroid in tablet mode suitable for HD 720p display |
| 6 | Start waydroid in tablet mode suitable for Full HD 1080p display |
| 7 | Useful when some app force to be in portrait and look tilted or you just want to run waydroid like mobile recommended for HD 720p display |
| 8 | Useful when some app force to be in portrait and look tilted or you just want to run waydroid like mobile recommended for Full HD 1080p display |
| 9 | Custom resolution like 1280x720 just input in asked input field and enter 1 for fullscreen or 0 for normal window |

## Add your own resolution

Since i can not add all the resolutions but the one widely used and tested by me are added in the script, if you want to add your own edit ```waywes.sh``` with any text editor and make changes to such as ```1) RES="1366x768" FS="--fullscreen" ;;``` with your desire resolution, Example for ```2560x1440``` resolution it will be like ``` 1) RES="2560x1440" FS="--fullscreen" ; ``` if you don't need fullscreen keep as ```FS=""``` also make changes in ```select resolution echo block``` accordingly.

## Screenshots 

**Fullscreen**
<img src="https://github.com/KSMaan45/waywes/blob/main/S2%20Fullscreen.png">

**Windowed E2E**
<img src="https://github.com/KSMaan45/waywes/blob/main/S3%20Windowed%20E2E.png">

**Tablet Mode**
<img src="https://github.com/KSMaan45/waywes/blob/main/S4%20Tablet%20Mode.png">

**Mobile Portrait**
<img src="https://github.com/KSMaan45/waywes/blob/main/S5%20Portrait%20Mode.png">

**Custom**
<img src="https://github.com/KSMaan45/waywes/blob/main/S6%20Custom.png">
