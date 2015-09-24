#!/bin/bash

cp *.sh /home/pi/git/qkj/digit-recognizer/
cp *.py /home/pi/git/qkj/digit-recognizer/


cat info
cd /home/pi/git/qkj/digit-recognizer
git add *.sh
git add *.py

git commit -m "done automatic"
git push origin master


cd -
