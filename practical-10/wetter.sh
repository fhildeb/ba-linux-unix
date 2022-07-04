#!/bin/bash
if [ "$1" = "-L" ]; then
	# Ausfuehrliche Wettervorhersage
	if [ $# -gt "1" ]; then
		if [ -f "$2" ]; then
			# Zufallsvariablen füllen
			zufall1=0
			zufall2=0
			zufall3=0
			zufall4=0
			zufall5=0
			zufall6=0
			let "zufall1 = $RANDOM % 4 + 1"
			let "zufall2 = $RANDOM % 2 + 1"
			let "zufall3 = $RANDOM % 5 + 1"
			let "zufall4 = $RANDOM % 5 + 1"
			let "zufall5 = $RANDOM % 6 + 1"
			let "zufall6 = $RANDOM % 4 + 1"
			
			tag=`cat $2 | head -1 | cut -f$zufall1`
			art=`more -1 +2 $2 | cut -f$zufall2 | head -1`
			temp=`more -1 +3 $2 | cut -f$zufall3 | head -1`
			regen=`more -1 +4 $2 | cut -f$zufall4 | head -1`
			wind=`more -1 +5 $2 | cut -f$zufall5 | head -1`
			sonne=`more -1 +6 $2 | cut -f$zufall6 | head -1`
			
			ausgabe="$tag wird $art Wetter mit ca. $temp Grad Celsius, $regen Regen, $wind Wind und $sonne Sonne."
			echo $ausgabe
		else
			echo "Aus dieser Quelle kann ich leider nichts lesen: $2"
		fi	
	else
		echo "Leider habe ich keine Datenquelle für meine Wettervorhersage!"
	fi
else
	# Einfache Wettervorhersage
	if [ -f "$1" ]; then	
		zufall1=0
		zufall2=0	
		let "zufall1 = $RANDOM % 4 + 1"
		let "zufall2 = $RANDOM % 2 + 1"
		tag=`cat $1 | head -1 | cut -f$zufall1`
		art=`more -1 +2 $1 | cut -f$zufall2 | head -1`
		ausgabe="$tag wird $art Wetter!"
		echo "$ausgabe"
	else
		echo "Leider kann ich nicht aus der Datei lesen! Bitte eine andere Datei für mich!"
	fi
fi
