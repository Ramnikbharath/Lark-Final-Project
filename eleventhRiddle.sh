#!/bin/bash
# This is the script for the eleventh riddle
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
echo -e "This is your eleventh riddle!\n"
sleep 1
echo -e "I'm a pretty useful feature as well.\n"
sleep 0.5
echo -e "You should be using me, offices, coorperations, and schools absolutely adore me because of how helpful I am.\n"
sleep 0.5
echo -e "I'm great at checking the connectivity status for servers.\nWhat am I?\n"
sleep 0.6
read -p ">> " riddle11
echo -e "\n"
sleep 1
case "$riddle11" in
    ping )
        echo -e "Maybe that one was too easy!\n" 
        sleep 1

        sh ./twelvethRiddle.sh
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
                sh ./eleventhRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./eleventhRiddle.sh 
                ;;
        esac
esac