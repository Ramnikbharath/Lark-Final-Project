#!/bin/bash
# This is the script for the second riddle
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
echo -e "This is your second riddle!\n"
sleep 0.5
echo -e "You use me to navigate through linux files and directories."
sleep 0.5
echo -e "Remember this one was taught earlier on!"
read -p ">> " riddle02
echo -e "\n"
sleep 1
case "$riddle02" in
    cd )
        echo -e "Yep! You got it right! That one was pretty easy right?\n" 
        sleep 0.5
        echo -e "Wow! see that wasn't so bad!\n"
        sleep 0.5
        echo -e "Remember one wrong move and everything can end badly for you :(:\n"
        sleep 1
        echo -e "You seem to be getting these riddles right so far! Isn't that just lovely? Seems like I'll need to up the difficulty just a bit!\n"
        sleep 0.5
        echo -e "Don't worry though! I'll be nice enough to teach you some information along the way as well~\n"
        sleep 0.5
        echo -e "So you've already learned what the pwd command does as it can help you find what path you are working in.\n"
        sleep 0.5
        echo -e "And you also just learned that the cd command can help you navigate through different linux files and directories.\n"
        sleep 0.5
        echo -e "It's extremely helpful for when you get lost in those evil pesky bushes and just want to find a lovely way out.\n"
        sleep 3
        echo -e "Now let me teach you some more commands that are in no particular order!\n"
        sleep 0.5
        echo -e "The cp command stands for copy. This command is known for copying files or groups of files or a directory.\n"
        sleep 0.5
        echo -e "It's important to note that the cp command requires two filenames for its arguments, as well as one or more arguments, and two directory names.\n"
        echo -e "The cat command stands for concatenate which is also a very frequent command that is used in the world of linux.\n"
        sleep 0.5
        echo -e "It allows you to create single or multiple files, view the files, and even redirect the output in a terminal or file.\n"

        sh ./thirdRiddle.sh
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
                sh ./secondRiddle.sh 
                ;;
            no|No|NO )
                sh ./mainMenu.sh 
                ;;
            * )
                echo -e "That wasn't one of the prompted answers!\n"
                sh ./secondRiddle.sh 
                ;;
        esac
esac