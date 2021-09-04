#!/bin/bash
# This is the script for the sixth riddle
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
echo -e "This is your sixth riddle!\n"
sleep 1
echo -e "The grep command consists of three parts which would include grep the string to match for and the filename.\n"
sleep 0.5
echo -e "Grep is known for being able to search through files matching key strings.\n"
sleep 0.5
echo -e 'You know how it's normal for us to try to claim land that isn't even ours or "make" more land? Well this command kinda does that.\n'
sleep 0.7
echo -e "The head command is known for being able to print the first specified lines of a script.\nThis is useful for only seeing the beginning of a file.\n"
sleep 0.8
echo -e "The tail command does exactly the opposite of the head command where it will only show the ending specified lines of a script.\n"
sleep 0.9
echo -e "For this next riddle here are some hints:\n"
sleep 0.5
echo -e "It doesn't make lands of course, but it is another powerful tool that you can use to add more to your arsenal.\n"
sleep 0.4
echo -e "The best part of this command is that it is also able to change the permissions that you deem worthy."
sleep 0.6
echo -e "Be cautious of this power that you hold."
sleep 0.2
echo -e "What can make new directories?\n"
sleep 0.5
read -p ">> " riddle06
echo -e "\n"
sleep 1
case "$riddle06" in
    mkdir )
        echo -e "I shall have to ask my impossible riddles!\n" 
        sleep 0.5

        sh ./seventhRiddle.sh
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
                sh ./sixthRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./sixthRiddle.sh 
                ;;
        esac
esac
