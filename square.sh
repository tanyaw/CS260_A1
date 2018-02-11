#!/bin/sh

do_square()
{
    square=$(($1 * $1))
    echo "The square of $1 is: $square"
}

###
# Main Function
###
do_square $1
exit 0
