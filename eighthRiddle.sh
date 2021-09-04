#!/bin/bash
# This is the script for the eighth riddle
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
echo -e "This is your eighth riddle!\n"
sleep 1
echo -e "For this next lesson you will be learning about the chmod command in Linux. \n"
sleep 0.5
echo -e "The chmod command is known for being able to control who can access files, search directories, and even run the scripts using the chmod command.\n"
sleep 0.5
echo -e "The ping command is known for for being able to check the the network connectivity between the host and the server/host.\n"
sleep 0.5
echo -e "This is useful for checking is that network or host is reachable.\n"
sleep 0.5
echo -e "The echo command is known for being able to display lines of text or string that is passed as an argument.\n"
sleep 0.5
echo -e "Most of this game was written using the echo command!\n"
sleep 0.5
echo -e "Your next hint for this riddle is:\n"
sleep 2
echo -e "I'm like two sides of a coin.\nYou see me or you don't, but I'm not a 50 50 chance because you have that control.\n"
sleep 0.5
echo -e "What's nice about this command is that it shows you what you need to see if you specify it of course...\n"
sleep 0.5
echo -e "So just be cautious of that part.\nYou can limit just how many lines you exactly want to see or not see with this command.\n"
sleep 0.5
echo -e "Do you know what I am?\n"
sleep 0.2
echo -e "I only show the beginning of the first lines of any text.\n"
sleep 0.5
read -p ">> " riddle08
echo -e "\n"
sleep 1
case "$riddle08" in
    head )
        echo -e "I shall have to ask the riddles even the bash programmer failed then!\n" 
        sleep 0.5

        sh ./ninthRiddle.sh
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
                sh ./eighthRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./eighthRiddle.sh 
                ;;
        esac
esac