#!/bin/bash
# This is the script for the fourth riddle
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
echo -e "This is your fourth riddle!\n"
sleep 0.5
echo -e "The mkdir command is known for being able to make new directories.\n"
sleep 0.5
echo -e "Sometimes looking at the directories isn't enough. Sometimes you have to use this command to really *hint* *hint* uncover the contents of.\n"
sleep 0.5
echo -e "It starts with a C if you really wanna know and rhymes with bat.\n"
sleep 0.5
echo -e "Want to find out the contents of a file? Then use me to reveal them.\n"
sleep 0.5
read -p ">> " riddle04
echo -e "\n"
sleep 1
case "$riddle04" in
    cat )
        echo -e "Wow! You got that one right!\n" 
        sleep 0.5
        echo -e "I guess I'm going to have to step up the difficulty even more then.\n"
        sleep 0.5

        sh ./fifthRiddle.sh
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
                sh ./fourthRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./fourthRiddle.sh 
                ;;
        esac
esac