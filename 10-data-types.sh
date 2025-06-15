#!/bin/bash
A=100
B=200

TIMESTAMP=$(date)
echo " script executed at :$TIMESTAMP "

SUM=$(($A+$B))

#SUM=$(($A+$B2))

echo "Sum of $A and $B is : $SUM"


LIST=$(ls -l)

#Here is the sample command to run commands in shell. VAR=LIST, VALUE=$(Linux command)

echo " Displaying list in full format $LIST "