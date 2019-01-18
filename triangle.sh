#!/bin/bash

while  [ "1" = "1" ]
do
    read -p "please input a number :" n
    if [ -z $n ];then
        echo "$n 不是一个数字"
        continue
    else
       if [ -n "`echo $n | sed 's/[0-9]//g'`" ] ;then
           echo "$n 不是纯数字"
       else
#          echo "$n 是纯数字"
          break
       fi

    fi
done
for i in `seq 1 $n`
do 
j=$[$n-$i]
for a in `seq $j`
do
echo -n " "
done
for b in `seq $i`
do 
echo -n "* "

done
echo
done
n=$[$n-2]
for i in `seq $n`
do
for i in `seq $n`
do
   echo -n ' '
done
echo -n "***"
echo
done
