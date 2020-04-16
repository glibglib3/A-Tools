#!/bin/bash

clear
figlet -f Univers A-Tools |lolcat
echo "======================================================================" |lolcat
PS3='Please enter your choose: '
options=("TheZoo 1" "InstaInsane 2" "Inshackle 3" "ShellPhish 4" "LazyScript 5" "HiddenEye 6" "Quit 0")
select opt in "${options[@]}"
do
	case $opt in
		"TheZoo 1")
			cd ~/Desktop/theZoo && python theZoo.py
			;;
		"InstaInsane 2")
			cd ~/Desktop/instainsane && ./instainsane.sh
			;;
		"Inshackle 3")
			cd ~/Desktop/inshackle && ./inshackle.sh
			;;
		"ShellPhish 4")
			cd ~/Desktop/shellphish && ./shellphish.sh
			;;
		"LazyScript 5")
			l
			;;
		"HiddenEye 6")
			cd ~/Desktop/HiddenEye && python3 HiddenEye.py
			;;
		"Quit 0")
			break
			;;
		*) echo "Invalid option "$REPLY"" && echo _____________________;;
	esac
echo "======================================================================" |lolcat
done
