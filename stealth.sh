#!/bin/bash

for ps in $(ps -aux|grep stealth |grep -v root |awk {'print $1'})
do
    echo $ps >> hacked-account.txt
done

for ps in $(ps -aux|grep stealth |grep -v root |awk {'print $2'})
do
    kill -9 $ps
done


