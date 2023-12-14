#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo " Error: $1  is failed "
        exit 1
    else 
        echo " $2  Success "
    fi

}

if [ $ID -ne 0 ]
then
    echo " ERROR : login with root user to run the script "
    exit 1
else
    echo " you are root user "
fi

yum install mysqll -y

VALIDATE $? " MySQL installed"

yum install git -y

VALIDATE $? " Git Installed "
