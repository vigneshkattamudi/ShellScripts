#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo " ERROR : login with root user to run the script "
else
    echo " you are root user "
fi

yum install mysql -y