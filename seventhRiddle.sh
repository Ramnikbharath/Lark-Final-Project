#!/bin/bash
# This is the script for the seventh riddle
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
echo -e "This is your seventh riddle!\n"
sleep 1
echo -e "I will say that this command does utilize something called a global regular expression point.\n"
sleep 0.5
echo -e "It's popular for being able to search for that pesky key word that you're looking for, also highlighting that match that you wanted.\n"
sleep 0.5
echo -e "It also is able to search multiple files with this same command if you would like it to.\n"
sleep 0.5
echo -e "You would just need to make sure they are separated with a space character between them.\n"
sleep 3
echo -e "You know what is also neat about this command?\n"
sleep 0.5
echo -e "It's able to do a inverse search if you ask it to using the key letter -v after this command.\n"
sleep 0.5
echo -e "It's great for when you want to avoid those annoying neighbors every now and then!\n"
sleep 0.5
echo -e "Do you know what it is?\n"
sleep 0.2
echo -e "I am the ctrl + F of Linux commands.\n"
sleep 0.5
read -p ">> " riddle07
echo -e "\n"
sleep 1
case "$riddle07" in
    grep )
        echo -e "This next riddle was only answered by a bash programmer!\nThere's no way someone else could answer it!\n" 
        sleep 0.5

        sh ./eighthRiddle.sh
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
                sh ./seventhRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./seventhRiddle.sh 
                ;;
        esac
esac