#!/bin/bash
set -e 
echo "检查esik是否在运行"
COUNT=$(ps aux | grep esik | grep Sl |wc -l)
echo $COUNT
if [ $COUNT == 0 ] ; then
echo "没有需要关闭的esik"
else
echo "查询esik的pid"
pid=$(pgrep esik)
echo "杀死该进程${pid}"
kill -9 ${pid}
echo "进入esik-scripts文件夹"
cd ~/tools/esik-scripts/
echo "删除esik和nohup.out"
rm esik nohup.out
fi
exit
