#!/bin/bash
ergebnis=0

function istZahl() {
# Remove all numbers
text=$(echo "$gerateneZahl" | sed 's/[0-9]//g';)
if [ "$text" ]; then
	# Text present- incorrect
	ergebnis=0
else
	# No text present- correct
	ergebnis=1
fi
}

# Generate random number between 0..99
let "zufall= $RANDOM % 100"
# echo $zufall
echo "Ich habe eine Zufallszahl! Du darfst raten..."
versuche=0
# Only 10 attempts
while [ $versuche -lt 10 ]; do
	# Inc($versuche)	
	let "versuche = $versuche + 1"	
	echo "Versuch $versuche. Deine Wahl ist: "
	read gerateneZahl
	istZahl
	if [ "$ergebnis" -eq 1 ]; then	
		# Check cases
		if [ $gerateneZahl -lt $zufall ]; then
			echo "Die Zahl $gerateneZahl  ist zu klein!"
		fi

		if [ $gerateneZahl -gt $zufall ]; then
			echo "Die Zahl $gerateneZahl ist zu gross!"
		fi

		if [ $gerateneZahl -eq $zufall ]; then
			echo "Glueckwunsch! Zahl gefunden nach $versuche Versuchen!"
			# Set attempts to 11 to distinguish from failure			
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

