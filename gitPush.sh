#!/bin/bash
echo "git pull origin master"
git pull origin master
echo -e "\n"
echo "=====ヾ(≧O≦)〃嗷~====="

echo "git add ."
git add .
echo -e "\n"
echo "=====ヾ(≧O≦)〃嗷~====="

echo "请输入提交信息:"
read message
echo -e "\n"
echo "=====ヾ(≧O≦)〃嗷~====="

echo "git commit -m "$message""
git commit -m "$message"
echo -e "\n"
echo "=====ヾ(≧O≦)〃嗷~====="

echo "git push origin master"
git push origin master