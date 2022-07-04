#!/bin/bash
ergebnis=0

function istZahl() {
# Alle Zahlen entfernen
text=$(echo "$gerateneZahl" | sed 's/[0-9]//g';)
if [ "$text" ]; then
	# Text vorhanden  falsch
	ergebnis=0
else
	# Kein Text vorhanden korrekt
	ergebnis=1
fi
}

# Zufallszahl zwischen 0..99 erzeugen
let "zufall= $RANDOM % 100"
# echo $zufall
echo "Ich habe eine Zufallszahl! Du darfst raten..."
versuche=0
# Nur 10 Versuche
while [ $versuche -lt 10 ]; do
	# Inc($versuche)	
	let "versuche = $versuche + 1"	
	echo "Versuch $versuche. Deine Wahl ist: "
	read gerateneZahl
	istZahl
	if [ "$ergebnis" -eq 1 ]; then	
		# Faelle prüfen
		if [ $gerateneZahl -lt $zufall ]; then
			echo "Die Zahl $gerateneZahl  ist zu klein!"
		fi

		if [ $gerateneZahl -gt $zufall ]; then
			echo "Die Zahl $gerateneZahl ist zu gross!"
		fi

		if [ $gerateneZahl -eq $zufall ]; then
			echo "Glueckwunsch! Zahl gefunden nach $versuche Versuchen!"
			# Versuche auf 11 setzen, um von Versagen zu unterscheiden		
			versuche=11
		fi

	else
		echo "In der Eingabe sind Buchstaben enthalten! Pech gehabt!"
	fi
done
if [ $versuche -eq 10 ]; then
	echo "Die Zufallszahl lautete $zufall."
fi
echo "Druecken Sie [Enter] zum Beenden ..."
read

