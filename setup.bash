#!/bin/bash -xve

exec 2> /tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1   #直ぐにはデバイスファイルができないので待つ
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0    #安全のためモーターの電源を切っておく

# raspimouse デバイスドライバセットアッププログラム
