#########################################################################
# File Name: bashtotest.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Thu 14 Jan 2021 07:21:11 PM CST
#########################################################################
#!/bin/bash
#this is my first Shell-script
for((i=1; i<=20;i++))
do 
	echo $i | tee -a b.txt
done

