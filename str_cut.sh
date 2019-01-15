#!/bin/bash

var="http://www.aaa.com/root/123.html"

# 域名

domain=`echo $var | awk -F '/' '{print $3}'`
echo $domain
# 资源
echo $var | awk -F '/' '{print $NF}'
#资源


echo $var | awk -F "\." '{print $1,$3}'
#$echo $s
