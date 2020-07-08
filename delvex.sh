#!/bin/sh
if [ $# -gt 0 ]
then
	if [ $1 ==  "time" ]
	then
		echo `date +%T`
	elif [ $1 == "users" ]
	then 
		cat /etc/passwd | grep bash |awk -F: '{print $1}'
	elif [ $1 -eq 100 ]
	then
		for i in {1..100}
		do 
			echo "Hello Delvex"
			sleep 1
		done
	elif [ $1 == "windows" ]
	then
		init 0
	fi
elif [ $0 == "/root/delvex.sh" ]
then
	echo `uname -s`
	echo `uname -r`
	echo `cat /etc/os-release |grep PRETTY_NAME= |sed 's/PRETTY_NAME=//g'| sed 's/"//g'`
	echo `date +%d/%b/%Y`
	echo `who -b`
else 
	echo "wrong command"
fi 

