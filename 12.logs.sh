#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo " Error: $2  is $R failed $N "
        exit 1
    else 
        echo " $2 $R Success $N "
    fi

}

if [ $ID -ne 0 ]
then
    echo " ERROR : login with root user to run the script "
    exit 1
else
    echo " you are root user "
fi

yum install mysql -y

VALIDATE $? " MySQL installed"

yum install gitt -y

VALIDATE $? " Git Installed "
