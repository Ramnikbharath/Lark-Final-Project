#!/bin/bash
# This is the script for the third riddle
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
echo -e "This is your third riddle!\n"
sleep 0.5
echo -e "I'll be SUPER nice today and also give you some hints, okay?\n"
echo -e "For this next command it helps to uncover the secrets behind directories.\n"
sleep 0.5
echo -e "If you really want to find all the *hidden* details you can add an -a behind this command to really see everything there is if you know what I mean.\n"
sleep 1
echo -e "Now can you try to figure out what this riddle is trying to tell you?\n"
sleep 0.5
echo -e "I reveal everything there is to be known for the contents of a directory."
sleep 0.5
read -p ">> " riddle03
echo -e "\n"
sleep 1
case "$riddle03" in
    ls )
        echo -e "Yep! You got it right! That one was pretty easy right?\n" 
        sleep 0.5
        echo -e "Wow! see that wasn't so bad!\n"
        sleep 0.5
        echo -e "Remember one wrong move and everything can end badly for you :(:\n"
        sleep 1
        echo -e "You seem to be getting these riddles right so far! Isn't that just lovely? Seems like I'll need to up the difficulty just a bit!\n"
        sleep 0.5

        sh ./fourthRiddle.sh
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
                sh ./thirdRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./thirdRiddle.sh 
                ;;
        esac
esac