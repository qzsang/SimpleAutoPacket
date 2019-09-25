#!/bin/bash
echo "shell脚本开始执行"

#kill之前的进程
pid=`ps -ef | grep /opt/autoPacket/SimpleAutoPacket.jar | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]
then
#!kill -9 强制终止
   echo "kill -9 的pid:" $pid
   kill -9 $pid
fi

#todo备份


#开始运行
BUILD_ID=dontKillMe nohup java -jar /opt/autoPacket/SimpleAutoPacket.jar &
