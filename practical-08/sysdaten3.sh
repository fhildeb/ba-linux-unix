#!/bin/bash
eingabe=j
parameter=$*
while [ "$eingabe" == "j" ]; do
	echo 'SYSTEMDATEN:*****'
	echo $parameter
	if [ $# -lt 2 ]; then
		# Wochentag und Datum ausgeben
	echo "Heute ist `date +%A`, der `date +%d`. `date +%B` `date +%Y`"

		# Unterscheidung, ob Parameter -L gesetzt 
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
	# Parameter des Datums löschen
	while [ $# -gt 0 ]; do
	shift
	done
	# Eingabevariable neu initialisieren
	eingabe=n
	# Abfrage starten
	echo "Möchten Sie das Programm wiederholen? [j/n]"
	read eingabe
done
