#!/bin/bash
# Wurde ein Parameter übergeben?
if [ "$#" -gt 0 ]; then
	# Ist der übergebene Parameter ein Verzeichnis?	
	if [ -d "$1" ]; then
		
		# In übergebenes Verzeichnis springen
		cd $1
		
		# Anzahl der Dateien zählen
		nmax=`ls | wc -w`
		
		# Größe mittels Befehl "du -b" bestimmen 
		echo "Das Verzeichnis $1 bzw `pwd` hat eine Größe von `du -b | tail -1 | cut -f1` Bytes."
		echo "Es sind $nmax Dateien/Verzeichnisse enthalten."
		verzliste=`ls`
		echo ""
		echo $verzliste
		echo ""
		# Dateien in Array aufsplitten
		verzarray=($verzliste);
		i=0
		while [ "$i" -lt "${#verzarray[*]}" ]; do 
			# Dateinamen und Groesse angeben
			if [ "$#" -le "2" ]; then 
				if [ "$2" = "-r" ]; then
					if [ -d "${verzarray[$i]}" ]; then
						eval "${aktverz}$0 ${verzarray[$i]} $2"
					fi
				fi
			fi
			echo "${verzarray[$i]} `du -b ${verzarray[$i]} | tail -1 | cut -f1 ` Bytes"
			let "i = i + 1";
		done
	fi
else
	echo "Bitte geben Sie ein Verzeichnis an, das analysiert werden soll!"
fi
		
