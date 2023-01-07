#!/bin/bash
eingabe=y
parameter=$*
while [ "$eingabe" == "y" ]; do
	if [ $# -lt 2 ]; then
		# Output weekday and date
	echo "Today is `date +%A`, the `date +%d`. `date +%B` `date +%Y`"
	echo -e ""
		# Differentiation whether parameter -L is set  
		if [ "$parameter" == -L ]; then
			echo "My current directory is \"`pwd`\""
			echo "I am registered as \"`whoami`\" at the host \"$HOSTNAME\""
			echo "The terminal type is \"$TERM\""
			nutzer=`who | wc -l | awk '{$1=$1};1'`
			echo "There are currently $nutzer authorized users logged in on this computer"
			echo -e ""
		else if [ "$parameter" != "" ]; then
			echo "Wrong Parameter"
			fi	
		fi
			
	else
	echo "Too many parameters specified!"
	fi
	# Delete parameters of the date
	while [ $# -gt 0 ]; do
	shift
	done
	# Reinitialize input variable
	eingabe=n
	# Restart program?
	echo "Would you like to repeat the program? [y/n]"
	read eingabe
done
