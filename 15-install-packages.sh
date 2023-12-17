#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"


if [ $ID -ne 0 ]
then
    echo -e "ERROR : login with $R root user $N to run the script "
    exit 1 #we can give other than zero
else
    echo -e "You are $G Root user $N "
fi

echo "All Arguments passed: $@"