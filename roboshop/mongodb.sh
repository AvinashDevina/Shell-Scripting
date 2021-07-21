#!/bin/bash

LOG=/tmp/roboshoplogs/mongodb.log
source common.sh

echo -n -e "\t\e[32m1. Creating MongoDB Repo\e[0m....\t\t"
echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' > /etc/yum.repos.d/mongodb.repo
STATUS_CHECK $?

echo -n -e "\t\e[32m1. Installing MongoDB\e[0m....\t\t"
yum clean all -y && yum update all -y && yum install mongodb-org -y &>>$LOG
STATUS_CHECK $?




#STATUS_CHECK $?
# yum install -y mongodb-org
# systemctl enable mongod
# systemctl start mongod
