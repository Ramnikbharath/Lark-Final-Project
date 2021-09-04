#!/bin/bash
# This is the script for the fifteenth riddle
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
echo -e "This is your fifteenth riddle!\n"
sleep 1
echo -e "If you ever want to find differences in a file, you can use me to output those differences.\n"
sleep 0.5
echo -e "This command is able to compare the contents of two different files line by line and check for differences.\n"
sleep 0.6
read -p ">> " riddle15
echo -e "\n"
sleep 1
case "$riddle15" in
    diff )
        echo -e "It seems you have beaten me at my own game!\n" 
        sleep 3
        echo -e "Well, congratulations you've completed all of the riddles in the World of Linux, hopefully you enjoyed it as well!\n"
        sleep 2
        echo -e "Thank you for playing :)\n"
        sleep 10

        sh ./mainMenu.sh
        ;;
    * )
        echo -e "Uh oh spaghetti-os\nThat wasn't the right answer.\nTry again?\n"
        sleep 0.5
        echo -e "Remember, quitting now means you have to start all over again!\n"
        sleep 0.5
        echo -e "[Yes]\n[No]\n"
        read -p ">> " response
        echo -e "\n"
        case "$response" in
            yes|Yes|YES )
                sh ./fifteenthRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./fifteenthRiddle.sh 
                ;;
        esac
esac