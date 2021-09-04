#!/bin/bash
echo -e "= Are you sure you want to leave? =\n[Yes]\n[No]\n"
read -p ">> " userInput
echo -e "\n"
case "$userInput" in
    yes|Yes|YES )
        clear
        exit
        ;;
    no|No|NO )
        clear
        sh ./mainMenu.sh
        ;;

    * )
        echo -e "\n= Uh oh :O =\n"
        sh ./exitStatement.sh
        ;;
esac

