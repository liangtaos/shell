#!/bin/bash

filename=/root/passwd.txt
s=`sed 'N;s/\n/:/g' $filename`
echo $s
