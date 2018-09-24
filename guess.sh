#!/usr/bin/env bash

NUMBER=29
PLAYING=TRUE

while [ $PLAYING ]
do
    
    read -p "What's your guess? " INPUT

    if [ $INPUT -lt $NUMBER ]
    then
        echo "Your guess is lower than the chosen number"
    elif [ $INPUT -gt $NUMBER ]
    then
        echo "Your guess is higher than the chosen number"
    elif [ $INPUT == "x" ]
    then
        echo "You gave up!"
    else 
        echo "Your got it! The chosen number is $INPUT"
        exit 0
    fi
done

exit 0