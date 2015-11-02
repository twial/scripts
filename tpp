#!/bin/sh

#Install virtualboy, get pokemon red ROM and launch pokemon

VBAM_PKG="vbam-wx" #choose wx version for no reason, change if some other version is better
VBAM_CMD="wxvbam"

#check if virtualboy advanced is installed (don't know if this is the best way)
x=`pacman -Qs $VBAM_PKG`

if [ -n "$x" ] 
    then
        echo "VBAM is installed!"
    else
        echo "VBAM is not installed! installing.."
        pacman -S $VBAM_PKG --noconfirm
fi

#Also install zsh because i can't get bash to download the ROM file....

x=`pacman -Qs zsh`

if [ -n "$x" ] 
    then
        echo "zsh is installed!"
    else
        echo "zsh is not installed! installing.."
        pacman -S zsh --noconfirm
fi

#Virtualboy and zsh is now installed.

ROM_FILE=$HOME/roms/red.zip
if [ ! -f $ROM_FILE ] #Test if rom is already downloaded
    then
        #Make dir for rom file
        mkdir $HOME/roms -p

        #Download pokemon ROM
        #uses zsh because i can't get it to work in bash with all the spaces, etc. Some bash-wizz should fix it.
        zsh -c '
        ROM_URL="https://www.loveroms.com/r/Gameboy Color/P-T/Pokemon - Red Version (UE)[!].zip"
        wget $ROM_URL -O $HOME/roms/red.zip'
fi

#Define Virtualboy arguments
VBAM_ARGS="-f $ROM_FILE " #-f means fullscreen

#Run Virtualboy
$VBAM_CMD $VBAM_ARGS
