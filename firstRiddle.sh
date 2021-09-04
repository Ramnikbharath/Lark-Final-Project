#!/bin/bash
# This is the script for the first riddle
RANDOM=$$
echo "----------------------"
echo -ne ":D               (00%)\r"
sleep 0.2
echo -ne "#####            (33%)\r"
sleep $(($RANDOM%5))
echo -ne "##########       (67%)\r"
sleep $(($RANDOM%4))
echo -e "###############  (100%)"
echo "----------------------"
sleep $(($RANDOM%3))
echo -e "This is your first riddle!\n"
sleep 0.5
echo -e "I am the command that you use to find what directory you are in. What am I?\n"
sleep 0.5
echo -e "Remember! This language is case sensitive and all of the riddles asked result in commands that are all lower case!\nYou have been warned :)"
sleep 0.5
read -p ">> " riddle01
echo -e "\n"
sleep 1
case "$riddle01" in
    pwd )
        echo -e "Yep! You got it right! That one was pretty easy right?\n" 
        sleep 0.5
        echo -e "Now this is simple. Solve each riddle correctly, and you won't die. Haha jk or am I? :)\n"
        sleep 0.5
        echo -e "Now let the fun begin!\n"
        sleep 0.5
        echo -e "Hello, let's get continue with the basics, shall we?\n\n"
        sh ./secondRiddle.sh
        ;;
    * )
        echo -e "Uh oh spaghetti-os\nThat wasn't the right answer.\nTry again?\n"
        echo -e "[Yes]\n[No]\n"
        read -p ">> " response
        echo -e "\n"
        case "$response" in
            yes|Yes|YES )
                sh ./firstRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./firstRiddle.sh 
                ;;
        esac
esac