#!/bin/bash
# This is the main menu script
clear
echo -e "\n[Main Menu]\n\n"
echo -e "[Riddle?]\n[Quit?]\n[About?]"
read -p ">> " userInput
echo -e "\n"
case "$userInput" in
    Riddles|riddles|RIDDLES|riddle|Riddle|RIDDLE )
        sh ./storyFirst.sh
        ;;
    Quit|quit|QUIT )
        sh ./exitStatement.sh
        ;;
    about|About|ABOUT )
        sh ./aboutScreen.sh
        ;;
    * )
        printf ":/ This was not an option\n\n"
        sh ./mainMenu.sh
        ;;
esac

