#!/bin/bash

date=`date +%s`

cp *.sh /home/pi/git/qkj/digit-recognizer/
cp *.py /home/pi/git/qkj/digit-recognizer/
cd /home/pi/git/qkj/digit-recognizer
git add *.sh
git add *.py
git commit -m "done automatic : $date"
( echo "wkbscsd"; sleep 1; echo "github55" ) | git push origin master
cd -
