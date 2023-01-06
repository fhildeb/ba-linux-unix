#!/bin/bash
# Was a parameter passed?
if [ "$#" -gt 0 ]; then

	# Is the parameter passed a directory?	
	if [ -d "$1" ]; then
		
		# Jump to passed directory
		cd $1
		
		# Count number of files
		nmax=`ls | wc -w`
		
		# Determine size using "du -b" command 
		echo "Das Verzeichnis $1 bzw `pwd` hat eine Größe von `du -b | tail -1 | cut -f1` Bytes."
		echo "Es sind $nmax Dateien/Verzeichnisse enthalten."
		verzliste=`ls`
		echo ""
		echo $verzliste
		echo ""

		# Split files into array
		verzarray=($verzliste);
		i=0
		while [ "$i" -lt "${#verzarray[*]}" ]; do 

			# Specify file name and size
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
		
