#!/bin/bash

pid_nu=`ps aux | grep project_mange | grep -v "grep" | awk '{print $2}'`
if [ -z $pid_nu ]
then
echo "project_mange not running........."
exit
else
kill $pid_nu
if [ $? -eq 0 ]
then
echo "kill project_mange PID: $pid_nu"
sleep 5
else
echo "NOT killed"
exit
fi
fi

`nohup java -Xmx512m -Xms300m -jar /data/project_mange_jar/target/project_manage-0.0.1-SNAPSHOT.jar --spring.profiles.active=prod > /dev/null 2>&1 &`
if [ $? -eq 0 ]
then
echo "start ok"
else
echo "start fail"
fi
