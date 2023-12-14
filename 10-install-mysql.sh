#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo " ERROR : login with root user to run the script "
    exit 1
else
    echo " you are root user "
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo " Error: Installing MySql is failed "
else 
    echo " Installing MySql Success "
fi