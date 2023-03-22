#########################################################################
# File Name: test.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri 15 Jan 2021 09:36:31 AM CST
#########################################################################
#!/bin/bash

echo "普通的echo单双引号一样">>file.txt
echo "要引用的话,得用单引号">>file.txt

echo
echo "hello world!"
comment='Welcome to viscore!'
echo $comment
echo
echo "helloworld!"
comment="welcome to viscore"
echo $comment
echo
echo "helloworld!"
remark="hellouser,$comment"
echo $remark
echo
echo "hello world!"
remark='hello user, $comment'
echo $remark
cd /root
cmd="cd /root"
my_dir=`pwd`
echo ${my_dir}
