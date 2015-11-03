curl -L https://raw.githubusercontent.com/twial/scripts/master/run > ~/.run
chmod u+x ~/.run
echo "alias p='curl -L https://raw.githubusercontent.com/twial/scripts/master/p | sh'" > ~/.bash_profile
echo "alias r='~/.run'" >> ~/.bash_profile

# check if the pacman database exists
pacdb=/var/lib/pacman/db.lck
if [ -e $pacdb ]
then
    \rm $pacdb
    pacman -Scc --noconfirm
    echo "Currupt database cleared."
else
    echo "No database found."
fi

pacman -S vim xorg-server xorg-xinit xf86-video-vesa mesa mesa-libgl i3-wm xterm htop firefox irssi qemu mednafen lynx nethack xorg-xclock sl --noconfirm
echo "exec i3 && xterm" > ~/.xinitrc
