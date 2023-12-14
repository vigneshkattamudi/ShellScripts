#1/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

if [ $SUM -gt 20 ]
then
    echo " $SUM IS GREATER THAN 20 "
else
    echo " $SUM IS LESS THAN 20 "
fi