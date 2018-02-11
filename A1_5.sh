#!/bin/sh

echo "Please enter a color: "
read user_input

case $user_input in
    red|yellow )
        echo "The sun is sometimes this color."
        ;;
    bl*|Bl* )
        echo "The sky is $user_input" 
        ;;
    * )
        echo "Sorry, this color is not in any of the defined categories."
        ;;
esac

exit 0
