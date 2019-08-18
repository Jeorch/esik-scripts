#!/bin/bash
set -e 
echo "检查是否还存在esik程序"
COUNT=$(ps aux | grep esik | grep Sl |wc -l)
echo $COUNT
if [ $COUNT == 0 ] ; then
echo "不存在esik程序，可以进行启动"
else
echo "主机${HOSTNAME}的esik还在运行中，无法启动新的esik，请关闭原有的esik进程"
exit
fi
echo "进入esik-scripts文件夹"
cd ~/tools/esik-scripts/
echo "启动新的esik"
#nohup sh start-esik.sh &
nohup sh start-esik.sh >./nohup.out 2>&1 &
echo "检查是否成功esik程序"
sleep 2
scount=$(ps aux | grep esik | grep Sl |wc -l)
echo $scount
if [ $scount == 1 ] ; then
echo "已成功启动新的esik"
else
echo "主机${HOSTNAME}无法启动新的esik，请进行详细检查"
fi
exit
