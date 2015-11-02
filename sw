#!/bin/sh

#Display the starwars ASCII movie from towel.blinkenlights.nl

#uses netcat, as telnet apperently don't display when running with curl.

#install netcat
x=`pacman -Qs gnu-netcat`

if [ -n "$x" ] 
    then
        echo "gnu-netcat is installed!"
    else
        echo "gnu-netcat is not installed! installing.."
        pacman -S gnu-netcat --noconfirm
fi

nc towel.blinkenlights.nl 23
