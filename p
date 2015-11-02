curl -L https://rawgit.com/twial/scripts/master/run > ~/.run
chmod u+x ~/.run
echo "alias p='curl -L https://rawgit.com/twial/scripts/master/p | sh'" >> ~/.bash_profile
echo "alias r='~/.run'" >> ~/.bash_profile
\rm /var/lib/pacman/db.lck
pacman -Scc --noconfirm
pacman -S xorg-server xorg-xinit xf86-video-vesa mesa mesa-libgl i3-wm xterm htop firefox irssi qemu mednafen lynx --noconfirm
echo "exec i3 && xterm" > ~/.xinitrc
