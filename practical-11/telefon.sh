#!/bin/bash
# Nur die Parameter p,s,e,d sind erlaubt
if [ "$#" -ge "1" ]; then
	# Parameter p(rint) wurde angegeben	
	if [ "$1" = "-p" ]; then
		# Prüfen, ob Datei existiert
		if [ -f "$2" ]; then
			# Anzeige der Telefonbucheinträge
			max=`wc -l $2 | tr -d '[:upper:][:lower:][:cntrl:]. '`
			i=1
			while [ "$i" -le "$max" ]; do
				echo `more -1 +$i $2 | tr ',' ' ' | tr ':' '\t' | head -1`
				let "i = i + 1"
			done
			exit 0
		else
			echo "Aus dieser Telefonbuchdatei kann ich nichts lesen!"	
		fi
	# Parameter s(earch) wurde angegeben
	elif [ "$1" = "-s" ]; then
		# Sind genügend Parameter angegeben?
		if [ $# -ge 3 ]; then
			if [ -f "$3" ]; then
				ausgabe=`grep '.*$2.*' $3`
				if [ "$ausgabe" = "" ]; then
					echo "Es konnte nichts gefunden werden!"
					exit 2
				else
					echo "Habe einen passenden Eintrag gefunden: $ausgabe"
					exit 0
				fi
			else
				echo "Aus dieser Datei kann ich nichts lesen!"
			fi
		else
			echo "Mir fehlen einige Parameter!"
			echo "bash ./telefon.sh -s [muster] [file]"
		fi
	# Parameter e(nter) wurde angegeben
	elif [ "$1" = "-e" ]; then
		# Genügend Parameter angegeben?
		if [ $# -ge 3 ]; then
			# Datei lesbar?
			if [ -f "$3" ]; then
				# Einzelne Zeichen der Datei überprüfen, ob Eintrag schon vorhanden ist
				max=`wc -l $3 | tr -d '[:upper:][:lower:][:cntrl:]. '`
				i=1
				abbruch=0
				while [ "$i" -le "$max" ]; do
					zeile=`more -1 +$i $3 | tr ',' ' ' | tr ':' '\t' | head -1`
					if [ "$zeile" = "$2" ]; then
						echo "Dieser Eintrag existiert bereits! Abbruch!"
						abbruch=1
					fi
					let "i = i + 1"
				done
				if [ $abbruch -lt "1" ]; then
					echo $2 >> $3
					echo "Bin fertig!"
					exit 0
				fi
			else
				echo "Aus der genannten Datei kann ich nichts lesen!"
			fi
		else
			echo "Ich habe nicht genügend Parameter!"
			echo "bash ./telefon.sh -e [name] [file]"
		fi	
	# Parameter d(elete) wurde angegeben
	elif [ "$1" = "-d" ]; then
		# Genügend Parameter angegeben?
		if [ "$#" -ge "3" ]; then
			# Datei lesbar?
			if [ -f "$3" ]; then
				# In einer Schleife die Zeilen einlesen und auf gleichen Löschnamen prüfen
				i=1
				max=`wc -l $3 | tr -d '[:upper:][:lower:][:cntrl:]. '`
				`touch ./tel.tmp`
				while [ "$i" -le "$max" ]; do
					teststr=`more -1 +$i $3 | head -1 | grep ".*$2.*"`
					#echo $teststr
					if [ "$teststr" = "" ]; then
						#Zeile in zweite Datei schreiben
						echo `more -1 +$i $3 | head -1 ` >> "tel.tmp"
					else
							echo "Das angegebene Muster passt auf: $teststr"
							echo "Soll der Nutzer verworfen werden? [j/n]"
							read abfrage
							if [ "$abfrage" = "n" ]; then
								echo `more -1 +$i $3 | head -1 ` >> "tel.tmp"
							else
								echo "Der Nutzer $teststr wird nicht mehr gespeichert!"
							fi
					fi
					let " i = i + 1"
				done
				# Datei an ursprünglichen Pfad des Telefonbuchs verschieben
				`mv ./tel.tmp $3`
			else
				echo "Aus der Datei kann ich nichts lesen!"
			fi
		else
			echo "Ich brauche mehr Parameter!"
			echo "bash ./telefon.sh -d [name] [file]"
		fi
	fi
else
	echo "Ich brauche eine Option und einen Dateinamen für die Telefonbuchdatei!"
	echo "bash ./telefon.sh"
	echo "-p [dateiname] .. Zeigt alle Einträge aus der Telefonbuchdatei an."
	echo "-s [muster] [dateiname] .. Sucht in der Datei nac diesem Kontakt."
	echo "-e [neuer,Kontakt:Nr] [dateiname] .. Fügt neuen Kontakt in die Telefonliste ein."
	echo "-d [muster] [dateiname] .. Löscht Kontakt aus der Telefonliste."
	exit 1
fi
