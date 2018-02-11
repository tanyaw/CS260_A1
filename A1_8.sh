#!/bin/sh

if [ $1 -le $2 ]
then
    first=$1
    second=$2
else
    first=$2
    second=$1
fi 

#GCD
gcd=$first
div=$second
while [ $div -ne 0 ]
do
    rem=$(( gcd % div ))
    gcd=$div
    div=$rem
done
echo "The GCD of $1 and $2 is: $gcd"
  
#LCM
lcm=$(( $first * $second / $gcd ))
echo "The LCM of $1 and $2 is: $lcm"
    
