#!/bin/bash
eingabe=j
parameter=$*
while [ "$eingabe" == "j" ]; do
	echo 'SYSTEMDATEN:*****'
	echo $parameter
	if [ $# -lt 2 ]; then
		# Output weekday and date
	echo "Heute ist `date +%A`, der `date +%d`. `date +%B` `date +%Y`"

		# Differentiation whether parameter -L is set  
		if [ "$parameter" == -L ]; then
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
	# Delete parameters of the date
	while [ $# -gt 0 ]; do
	shift
	done
	# Reinitialize input variable
	eingabe=n
	# Restart program?
	echo "Möchten Sie das Programm wiederholen? [j/n]"
	read eingabe
done
