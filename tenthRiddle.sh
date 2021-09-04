#!/bin/bash
# This is the script for the tenth riddle
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
echo -e "This is your tenth riddle!\n"
sleep 1
echo -e "You can use me to really wreak havok in a good way of course.\n"
sleep 0.6
echo -e "But careful! This is only applicable to files that you own.\n"
sleep 0.5
echo -e "What can change the permissions of files and directories?\n"
sleep 0.6
read -p ">> " riddle10
echo -e "\n"
sleep 1
case "$riddle10" in
    chmod )
        echo -e "!!\n" 
        sleep 1

        sh ./eleventhRiddle.sh
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
                sh ./tenthRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./tenthRiddle.sh 
                ;;
        esac
esac