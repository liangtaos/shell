#!/bin/bash


for ip in `seq 1 255`
do

ping -c 2 192.168.1.$ip > /dev/null
if [ $? == 0 ]
then
echo "ip 存在"
echo "192.168.1.$ip" >> ip_active.txt
else
echo "ip died"
fi
done
