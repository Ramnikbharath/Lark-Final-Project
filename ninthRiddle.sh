#!/bin/bash
# This is the script for the ninth riddle
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
echo -e "This is your ninth riddle!\n"
sleep 1
echo -e "Here's your next lessons:\n"
sleep 0.5
echo -e "The find command is useful for being able to locate files within a directory.\n"
sleep 0.5
echo -e 'The sudo command short for "SuperUser Do" allows you to perform different tasks that require admin permission.\n'
sleep 0.5
echo -e "The diff command compares the contents of two different files line by line.\n"
sleep 0.5
echo -e "And it will essentially output lines that do not match.\n"
sleep 0.5
echo -e "I'm also two sides of a coin, but I'm the opposite of the one before me.\n"
sleep 0.5
echo -e "I can show you what you want to see at the very end.\n"
sleep 0.5
echo -e "I only show the end of the ending lines of any text.\n"
sleep 0.6
read -p ">> " riddle09
echo -e "\n"
sleep 1
case "$riddle09" in
    tail )
        echo -e "Maybe that one was too easy!\n" 
        sleep 1

        sh ./tenthRiddle.sh
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
                sh ./ninthRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./ninthRiddle.sh 
                ;;
        esac
esac
