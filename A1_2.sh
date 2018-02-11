#!/bin/sh

echo "Are you okay? [Y|N]"
read user_input

while [ $user_input != "y" -a $user_input != "Y" -a $user_input != "N" -a $user_input != "n" ]
do
    echo "Are you okay? [Y|N]"
    read user_input
done

if [ $user_input = "Y" -o $user_input = "y" ]
then
    echo "Glad to hear it!"
elif [ $user_input = "N" -o $user_input = "n" ]
then
    echo "Sorry you are not feeling good."
else
    echo ""
fi

exit 0
