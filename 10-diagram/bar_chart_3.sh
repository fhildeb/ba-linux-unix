#!/bin/bash
# If none or min. 2 parameters are specified
if [ "$#" -ne "1" ]; then
	# Output error message
	echo "Bitte geben Sie als Parameter eine Datei an, die für die Diagrammdarstellung genutzt werden kann!"
else
	# Check if file exists	
	if [ -f "$1" ]; then
		# File exists
		zeichen=`cat $1`
		set $zeichen
		# Read in number of values
		nWert=$1
		i=0	
		# Check if too many parameters are to be displayed 
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
					# Draw bars
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
