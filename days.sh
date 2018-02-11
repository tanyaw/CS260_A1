#!/bin/sh

totalArgs=`expr $# + 1`
counter=0
loop=0
args=("$@") 

#Iterate command-line arguments
for var in $@
do
    #Print command-line arguments
    while [ $counter -lt $totalArgs ]
    do
        #Syntax for output on same line
        /bin/echo -n "${args[${counter}]} " 
        counter=`expr $counter + 1`
    done
   
    #Print newline
    echo "" 
   
    #Increment argument position 
    loop=`expr $loop + 1`
    counter=$loop
done

exit 0
