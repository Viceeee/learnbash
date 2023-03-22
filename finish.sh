#########################################################################
# File Name: finish.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri 15 Jan 2021 01:39:26 PM CST
#########################################################################
#!/bin/bash
#generate a SSH key and push to other machine 
 # ssh-keygen -t rsa -b 2048 
 # ssh-copy-id vtuser@192.168.0.14 
     iperf_test() 
 { 
 packet_length=$1 
   cmd="iperf -s --udp -i 1 --bind 192.168.10.200 -l $packet_length" 
 echo "========Server======== $cmd" 
 ssh vtuser@192.168.0.14 $cmd & 
 sleep 1 
   cmd="iperf --client 192.168.10.200 --bind 192.168.10.201 --udp -b 10g -l $packet_length" 
 echo "========Client======== $cmd" 
 $cmd 
 sleep 1 
   echo "========Server======== kill_iperf_process" 
 cmd="cd /home/vt-data/masonwu; ./kill_process_by_name.sh iperf" 
 ssh vtuser@192.168.0.14 $cmd 
 sleep 1 
 } 
for size in 60 120 240 480 600 1000 2000 4000;
	do 
 iperf_test $size 
 done 
