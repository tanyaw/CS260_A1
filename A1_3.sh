#!/bin/sh

if [ $1 -le 100 -a $1 -ge 90 ]
then 
    echo "You got an A!"
elif [ $1 -lt 90 -a $1 -ge 80 ]
then
    echo "You got a B."
elif [ $1 -lt 80 -a $1 -ge 70 ]
then
    echo "You got a C."
elif [ $1 -lt 70 -a $1 -ge 60 ]
then
    echo "You got a D."
elif [ $1 -lt 60 -a $1 -ge 0 ]
then
    echo "You failed."
else
    echo "Error, you entered an invalid value."
    exit 0
fi

exit 0 
