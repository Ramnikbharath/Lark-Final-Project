#!/bin/bash
# This is the script for the thirteenth riddle
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
echo -e "This is your thirteenth riddle!\n"
sleep 1
echo -e "This command can locate files within a directory.\n"
sleep 0.6
read -p ">> " riddle13
echo -e "\n"
sleep 1
case "$riddle13" in
    find )
        echo -e "How did you manage to answer that?!\n" 
        sleep 1

        sh ./fourteenthRiddle.sh
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
                sh ./thirteenthRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./thirteenthRiddle.sh 
                ;;
        esac
esac
