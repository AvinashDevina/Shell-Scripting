#!/bin/zsh

echo -e "\n\033[1;31mINSTALLING NGINX\e[0m"
yum install nginx -y &>/tmp/test.log
echo $?