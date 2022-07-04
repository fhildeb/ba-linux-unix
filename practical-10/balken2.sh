#!/bin/bash
echo "Balkendiagramm"
echo ""
echo "Bitte geben Sie die Werteanzahl für das Diagramm ein: "
read nWert
if [ $nWert -gt 0 ] && [ $nWert -lt 6 ]; then
	i=0
	echo "Vielen Dank!"
	# Werte einlesen
	while [ $i -lt $nWert ]; do
		let "anzeige = i + 1"
		echo "Bitte geben Sie den Wert $anzeige ein: "
		read param[i]
		if [ ${param[$i]} -lt 0 ] || [ ${param[$i]} -gt 20 ]; then
			echo "Diese Zahl passt nicht in den Bereich 0-20! Wird mit 0 initialisiert!"
			param[$i]=0
		fi 		
		let "i = i + 1"
	done
	# Balkendiagramm anzeigen
	i=0
	ausgabe="|"
	echo ""
	echo "^"
	while [ $i -lt $nWert ]; do
		counter=1
		ausgabe="|"
		stern="*"
		while [ $counter -le ${param[$i]} ]; do
			#Balken zeichnen
			ausgabe=${ausgabe}${stern}
			let "counter = counter + 1"
		done
		echo $ausgabe
		let "i = i + 1"
	done
	echo "--------------------->"
else
	echo "Das sind leider zu viele/wenige Parameter für das Balkendiagramm!"
fi
