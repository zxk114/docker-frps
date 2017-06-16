#!/bin/bash
set -e
screen -S frps
cd /root
nohup ./frps -c ./frps.ini &
exit
cd /root
tailf nohup.out