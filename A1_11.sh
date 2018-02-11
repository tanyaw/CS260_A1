#!/bin/sh

factorial()
{
    /bin/echo -n "The factorial of $user_input is: ("
    fact=1
    for (( i=1; i <= $user_input; i++ ))
    do
        fact=`expr $fact \* $i`
        
        if [ $i == $user_input ]
        then
            /bin/echo -n "$i) = "
        else
            /bin/echo -n "$i*"
        fi
    done
    
    echo "$fact"
}

summation()
{
    /bin/echo -n "The summation of $user_input is: ("
    sum=0
    for (( i=1; i <= $user_input; i++ ))
    do
        sum=`expr $sum + $i`
        
        if [ $i == $user_input ]
        then
            /bin/echo -n "$i) = "
        else
            /bin/echo -n "$i+"
        fi
    done
    
    echo "$sum" 
}

###
# Main Function
###
echo "Please enter an integer (between 1 and 10): "
read user_input

if [ $user_input -ge 1 -a $user_input -le 10 ] 
then
    factorial $user_input
    summation $user_input
else
    echo "This integer is not between 1 and 10."
    exit 0
fi

exit 0
