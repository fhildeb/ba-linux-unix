#!/bin/bash
echo "Please enter the number of bars for the diagram:"
read nWert
if [ $nWert -gt 0 ] && [ $nWert -lt 6 ]; then
	i=0
	echo "Thank you very much!"
	# Read in values
	while [ $i -lt $nWert ]; do
		let "anzeige = i + 1"
		echo "Please enter the value for bar $anzeige:"
		read param[i]
		if [ ${param[$i]} -lt 0 ] || [ ${param[$i]} -gt 20 ]; then
			echo "This number does not fit into the range 0-20! Will be initialized with 0!"
			param[$i]=0
		fi 		
		let "i = i + 1"
	done
	# Show bar chart
	i=0
	ausgabe="|"
	echo -e ""
	echo "Your Personalized Bar Chart:"
	echo -e ""
	echo "^"
	while [ $i -lt $nWert ]; do
		counter=1
		ausgabe="|"
		stern="*"
		while [ $counter -le ${param[$i]} ]; do
			# Draw bar
			ausgabe=${ausgabe}${stern}
			let "counter = counter + 1"
		done
		echo $ausgabe
		let "i = i + 1"
	done
	echo "--------------------->"
else
	echo "Unfortunately, there are too many or few parameters for the bar chart!"
fi
