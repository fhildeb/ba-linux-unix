#!/bin/bash
echo -e ""
# Output weekday and date
echo "Today is `date +%A`, the `date +%d`. `date +%B` `date +%Y`"
echo -e ""
echo "My current directory is \"`pwd`\""
echo "I am registered as \"`whoami`\" at the host \"$HOSTNAME\" "
echo "The terminal type is \"$TERM\""
nutzer=`who | wc -l | awk '{$1=$1};1' `
echo "There are currently $nutzer authorized users logged in on this computer"
echo -e ""
