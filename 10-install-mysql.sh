#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo " ERROR : login with root user to run the script "
    exit 1
else
    echo " you are root user "
fi

yum install mysqll -y

if [ $? -ne 0 ]
then 
    echo " Error: Installing MySql is failed "
    exit 1
else 
    echo " Installing MySql Success "
fi

yum install git -y

if [ $? -ne 0 ]
then 
    echo " Error: Installing Git is failed "
    exit 1
else 
    echo " Installing Git Success "
fi