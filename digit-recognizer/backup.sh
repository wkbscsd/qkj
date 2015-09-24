#!/usr/bin/expect

date=`date +%s`

cp *.sh /home/pi/git/qkj/digit-recognizer/
cp *.py /home/pi/git/qkj/digit-recognizer/
cd /home/pi/git/qkj/digit-recognizer
git add *.sh
git add *.py
git commit -m "done automatic : $date"

set timeout 10
spawn git push origin master
expect "*sername*"; send "wkbscsd\r"
expect "*assword*"; send "github55\r"
cd -
