#!/bin/bash
# Only the parameters p,s,e,d are allowed
if [ "$#" -ge "1" ]; then
# Parameter p for print was specified	
	if [ "$1" = "-p" ]; then
		# Check if file exists
		if [ -f "$2" ]; then
			# Display of phone book entries
			max=`wc -l $2 | tr -d '[:upper:][:lower:][:cntrl:]._ '`
			i=1
			while [ "$i" -le "$max" ]; do
				echo `sed $i'q;d' $2 | tr ',' ' ' | tr ':' ' '`
				let "i = i + 1"
			done
			exit 0
		else
			echo "Aus dieser Telefonbuchdatei kann ich nichts lesen!"	
		fi
	# Parameter s for search was specified
	elif [ "$1" = "-s" ]; then
		# Are enough parameters specified?
		if [ $# -ge 3 ]; then
			if [ -f "$3" ]; then
				ausgabe=`grep '.*'$2'*.' $3`
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
	# Parameter e for enter was specified
	elif [ "$1" = "-e" ]; then
		# Sufficient parameters specified?
		if [ $# -ge 3 ]; then
			# File readable?
			if [ -f "$3" ]; then
				# Check single characters of the file if entry already exists
				max=`wc -l $3 | tr -d '[:upper:][:lower:][:cntrl:]._ '`
				i=1
				abbruch=0
				while [ "$i" -le "$max" ]; do
					zeile=`sed $i'q;d' $2 | tr ',' ' ' | tr ':' ' '`
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
	# Parameter d for delete was specified
	elif [ "$1" = "-d" ]; then
		# Sufficient parameters specified?
		if [ "$#" -ge "3" ]; then
			# File readable?
			if [ -f "$3" ]; then
				# Read in the lines in a loop and check for the same deletion name
				i=1
				max=`wc -l $3 | tr -d '[:upper:][:lower:][:cntrl:]._ '`
				`touch ./tel.tmp`
				while [ "$i" -le "$max" ]; do
					teststr=`sed $i'q;d' $3 | grep '.*'$2'*.'`
					if [ "$teststr" = "" ]; then
						# Write line to second file
						echo `sed $i'q;d' $3` >> "tel.tmp"
					else
							echo "Das angegebene Muster passt auf: $teststr"
							echo "Soll der Nutzer verworfen werden? [j/n]"
							read abfrage
							if [ "$abfrage" = "n" ]; then
								echo `sed $i'q;d' $3` >> "tel.tmp"
							else
								echo "Der Nutzer $teststr wird nicht mehr gespeichert!"
							fi
					fi
					let " i = i + 1"
				done
				# Move file to original path of phonebook
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
	echo "bash ./telephone.sh"
	echo "-p [dateiname] .. Zeigt alle Einträge aus der Telefonbuchdatei an."
	echo "-s [muster] [dateiname] .. Sucht in der Datei nac diesem Kontakt."
	echo "-e [neuer,Kontakt:Nr] [dateiname] .. Fügt neuen Kontakt in die Telefonliste ein."
	echo "-d [muster] [dateiname] .. Löscht Kontakt aus der Telefonliste."
	exit 1
fi
