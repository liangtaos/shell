#!/bin/bash

while  [ "1" = "1" ]
do
    read -p "please input a number :" n
    if [ -z $n ];then
        echo "$n not a number"
        continue
    else
       if [ -n "`echo $n | sed 's/[0-9]//g'`" ] ;then
           echo "$n 不是是数字"
       else
          echo "$n 是纯数字"
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
echo -n "*"
done
echo
done
