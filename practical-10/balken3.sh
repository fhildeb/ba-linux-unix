#!/bin/bash
# Wenn keiner oder min. 2 Parameter angegeben werden
if [ "$#" -ne "1" ]; then
	# Fehlermeldung ausgeben
	echo "Bitte geben Sie als Parameter eine Datei an, die für die Diagrammdarstellung genutzt werden kann!"
else
	# Prüfen, ob Datei existiert	
	if [ -f "$1" ]; then
		# Datei existiert
		zeichen=`cat $1`
		set $zeichen
		# Werteanzahl einlesen
		nWert=$1
		i=0	
		# Prüfen, ob zu viele Parameter angezeigt werden sollen 
		if [ $nWert -le 5 ]; then
			param[0]=$2
			param[1]=$3
			param[2]=$4
			param[3]=$5
			param[4]=$6
			while [ $i -le $# ]; do
				counter=1
				ausgabe="|"
				stern="*"
				
				while [ $counter -le ${param[$i]:=0} ]; do
					# Balken zeichnen
					ausgabe=${ausgabe}${stern}
					let "counter = counter + 1"
				done
				if [ ${param[$i]:=0} -ne 0 ]; then
					echo $ausgabe
				fi
				let "i = i + 1"
			done
			echo "--------------------->"
		else
			echo "In der Datei sind zu viele Parameter!"
		fi 
		
	else
		echo "Mit dieser Datei stimmt etwas nicht. Wie wäre es mit einer anderen Datei?"
	fi
fi
