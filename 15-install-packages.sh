#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR : login with root user to run the script "
    exit 1 #we can give other than zero
else
    echo -e "You are $G Root user $N "
fi

echo "All Arguments passed: $@"