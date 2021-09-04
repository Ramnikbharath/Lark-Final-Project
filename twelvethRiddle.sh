#!/bin/bash
# This is the script for the twelveth riddle
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
echo -e "This is your twelveth riddle!\n"
sleep 1
echo -e "I also print things when used in the command line.\n"
sleep 0.5
echo -e "What command repeats what you say to it?\n"
sleep 0.6
read -p ">> " riddle12
echo -e "\n"
sleep 1
case "$riddle12" in
    echo )
        echo -e "It seems I will have to get out my most impossible riddles!\n" 
        sleep 1

        sh ./thirteenthRiddle.sh
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
                sh ./twelvethRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./twelvethRiddle.sh 
                ;;
        esac
esac
