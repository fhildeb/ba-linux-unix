#!/bin/bash
echo 'SYSTEMDATEN:*****'
parameter=$1
echo $parameter
if [ $# -lt 2 ]; then
	# Output weekday and date
	echo "Heute ist `date +%A`, der `date +%d`. `date +%B` `date +%Y`"

	# Differentiation whether parameter -L is set 
	if [ "$parameter" = -L ]; then
		echo "Mein aktuelles Verzeichnis ist \"`pwd`\""
		echo "Angemeldet bin ich als \"`whoami`\" am Host \"$HOSTNAME\", der Terminaltyp ist \"$TERM\"."
		nutzer=`who | wc -l`
		echo "Derzeit sind an diesem Rechner $nutzer zugangsberechtigte Nutzer eingeloggt."
	else if [ "$parameter" != "" ]; then
		echo "Falscher Parameter!"
		fi	
	fi
		
	echo '*****ENDE DER SYSTEMDATEN'
else
echo "Zu viele Parameter angegeben!"
fi

