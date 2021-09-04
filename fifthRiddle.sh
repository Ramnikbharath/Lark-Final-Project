#!/bin/bash
# This is the script for the fifth riddle
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
echo -e "This is your fifth riddle!\n"
sleep 0.5
echo -e "This next one can be quite mischevious.\n"
sleep 0.5
echo -e "This command is known for being able to destroy worlds with the power that it holds.\n"
sleep 1
echo -e "Nah I'm just kidding :)\n"
sleep 0.3
echo -e "But seriously though, it is still a quite powerful tool for when you want to add more to a certain file, but they must be in the same directory.\n"
sleep 0.6
echo -e "*For a hint, this command was taught in the previous sections*\nAre you ready for this next challenge?\n"
sleep 0.5
echo -e "I run only run when three conditions are met which are 1 or more arguments, two directory names, and two filenames for the arguments.\nWhat am I?\n"
sleep 0.5
read -p ">> " riddle05
echo -e "\n"
sleep 1
case "$riddle05" in
    cp )
        echo -e "Wow! You got that one right!\n" 
        sleep 0.5
        echo -e "I'm not sure how you were able to answer the last riddle, but you definitely won't be able to answer this upcoming one!\n"
        sleep 0.5

        sh ./sixthRiddle.sh
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
                sh ./fifthRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./fifthRiddle.sh 
                ;;
        esac
esac