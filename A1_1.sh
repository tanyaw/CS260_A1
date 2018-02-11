#!/bin/sh

echo -n "Please enter an integer value: "
read user_input

if [ `expr $user_input % 2` -eq 0 ]
then
    echo "This is an even number."
else
    echo "This is an odd number."
fi
exit 0
