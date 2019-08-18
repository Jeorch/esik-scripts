#!/bin/bash
set -e 
echo -e '\nStart deploy esik.\n'
#host_list=(spark@192.168.100.110 spark@192.168.100.137)
host_list=(root@SpiderMan root@Thor root@Captain root@IronMan)

for host in ${host_list[*]}
do
	echo "进入主机=>${host}中,关闭原有的esik"
	ssh ${host} < stop-esik-remote.sh
	echo -e '\n'
	
	echo "将176上新的esik scp到=>${host}中"
	scp /home/spark/tools/esik-scripts/esik ${host}:~/tools/esik-scripts/
	echo -e '\n'

	echo "进入主机=>${host}中,关闭原有的esik"
	ssh ${host} < start-esik-remote.sh
	echo -e '\n\n'
done
exit
