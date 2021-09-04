#!/bin/bash
# This is the about screen, will contain the credits and about the game
echo -e "----------------------"
echo -ne ":O               (00%)\r"
sleep 0.2
echo -ne "#####            (33%)\r"
sleep $(($RANDOM%2))
echo -ne "###############  (100%)\n"
echo -e "----------------------\n"
sleep $(($RANDOM%2))
echo "= I was created for the LARK Project of Fall 2020 for the Intro to Unix class :) ="
sleep 1
echo "= This page was created by Jacob Strayer! ="
sleep 2
echo -e "[Go Back?]"
read -p ">> " response
case "$response" in
    yes|Yes|YES )
        clear
        echo -e "----------------------"
        echo -ne ":O               (00%)\r"
        sleep 0.1
        echo -ne "#####            (34%)\r"
        sleep $(($RANDOM%2))
        echo -ne "###############  (100%)\n"
        echo -e "----------------------\n"
        sleep $(($RANDOM%4))
        sh ./mainMenu.sh
        ;;
    * )
        echo "Uh oh, that wasn't one of the given responses. Try again please."
        sh ./aboutScreen.sh
        ;;
esac
