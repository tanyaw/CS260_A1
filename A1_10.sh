#!/bin/sh

menu() {
    echo "---MENU---"
    echo "1. Add the numbers (Enter a or A)"
    echo "2. Subtarct the numbers (Enter s or S)"
    echo "3. Multiply the numbers (Enter m or M)"
    echo "4. Divide the numbers (Enter d or D)"
    echo "5. Exit (Enter e or E)"
    /bin/echo -n "Enter a selection from above: "
}

menu2() {
    echo "---SUB MENU---" 
    echo "A) Would you like to do another operation on the same two integers?"
    echo "B) Would you like to do another operation on two different integers?"
    echo "C) Exit."
    /bin/echo -n "Enter a selection from above (A|B|C): "
    read user_input
    echo ""

    case $user_input in 
        a|A)
            menu
            read user_input
            ;;
        b|B)
            /bin/echo -n "Enter first integer: "
            read first

            /bin/echo -n "Enter second integer: "
            read second

            menu
            read user_input
            ;;
        c|C)
            echo "Exiting Program..."
            exit 0
            ;;
        *)
            menu2
            read user_input
            ;;   
    esac    
}

inputSanitation() {
    if [ $# != 2 ]
    then
        echo "This script must be executed with 2 commandline arguments. Please try running again."
        exit 0
    fi
}

###
# Main Function
###
first=$1
second=$2

inputSanitation $first $second
menu
read user_input
   
while :
do 
    case $user_input in
        a|A)
            echo "$first + $second = `expr $first + $second`\n"
            menu2
            ;;
        s|S)
            echo "$first - $second = `expr $first - $second`\n"
            menu2
            ;;
        m|M)
            echo "$first * $second = `expr $first \* $second`\n"
            menu2
            ;;
        d|D)
            echo "$first / $second = `expr $first / $second`\n" 
            menu2
            ;;
        e|E)
            echo "Exiting program..."
            exit 0
            ;;
        *)
            echo "That is an invalid option, please try again."
            menu
            read user_input
            ;;
    esac
done

