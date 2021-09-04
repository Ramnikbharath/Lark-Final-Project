#!/bin/bash
# This is the script for the fourteenth riddle
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
echo -e "This is your fourteenth riddle!\n"
sleep 1
echo -e "I'm a powerful admin tool.\n"
sleep 0.5
echo -e "This command can allow you to do admin commands also known as "SuperUser Do"\n"
sleep 0.6
read -p ">> " riddle14
echo -e "\n"
sleep 1
case "$riddle14" in
    sudo )
        echo -e "That riddle did have the answer in the question.\n" 
        sleep 1
        echo -e "But you will never guess this next riddle's answer!\n"

        sh ./fifteenthRiddle.sh
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
                sh ./fourteenthRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./fourteenthRiddle.sh 
                ;;
        esac
esac