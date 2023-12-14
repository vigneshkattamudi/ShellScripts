#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then 
        echo " Error: Installing  is failed "
        exit 1
    else 
        echo " Installing  Success "
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

VALIDATE

yum install git -y

VALIDATE
