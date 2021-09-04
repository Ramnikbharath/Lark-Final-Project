#!/bin/bash
echo -e "Would you like a riddle? :)\n"
sleep 0.5
echo -e "[Yes]\n[No]\n"
read -p ">> " response
echo -e "\n"
sleep 1
case "$response" in
    yes|Yes|YES )
        echo -e "Perfect!\n"
        sleep 1
        sh ./firstRiddle.sh
        ;;
    no|No|NO )
        echo -e "What are you doing here then?\n"
        sleep 1.5
        sh ./mainMenu.sh
        ;;
    * )
        echo -e "\nUh oh, that wasn't one of the prompted responses. Try again please\n"
        sleep 1
        sh ./riddles.sh
        ;;
esac
