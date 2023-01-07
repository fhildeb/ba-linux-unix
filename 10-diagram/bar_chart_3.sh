#!/bin/bash
# If none or min. 2 parameters are specified
if [ "$#" -ne "1" ]; then
	# Output error message
	echo "Please specify a file as parameter that can be used to store the diagram!"
else
	# Check if file exists	
	if [ -f "$1" ]; then
		file=$1
		bars=`wc -w $1 | awk '{print $1}'`
		# File exists
		zeichen=`cat $1`
		set $zeichen
		# Read in number of values
		nWert=$bars
		i=0	
		# Check if too many parameters are to be displayed 
		if [ $nWert -le 5 ]; then
			param[0]=$1
			param[1]=$2
			param[2]=$3
			param[3]=$4
			param[4]=$5
			echo "Your Personalized Bar Chart based on $file:"
			echo -e ""
			echo "^"
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
			echo "There are too many parameters in the file!"
		fi 
		
	else
		echo "There is something wrong with this file. How about another file?"
	fi
fi
