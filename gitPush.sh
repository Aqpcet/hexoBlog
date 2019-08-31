#!/bin/bash
echo "+git pull origin master"
git pull origin master


echo "+git add ."
git add .

echo "请输入提交信息："
read message


echo "+git commit -m "$message""
git commit -m "$message"


echo "+git push origin master"
git push origin master