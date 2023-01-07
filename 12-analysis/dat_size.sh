#!/bin/bash
# Was a parameter passed?
if [ "$#" -gt 0 ]; then

	# Is the parameter passed a directory?	
	if [ -d "$1" ]; then
		
		# Jump to passed directory
		cd $1
		
		# Count number of files
		nmax=`ls | wc -w | awk '{$1=$1};1' `
		
		# Determine size using "du -b" command 
		echo -e ""
		echo "The directory $1 has a size of `du | tail -1 | cut -f1` bytes."
		echo "There are $nmax files/directories included."
		echo -e ""
		verzliste=`ls`

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
			echo "${verzarray[$i]} `du ${verzarray[$i]} | tail -1 | cut -f1 ` bytes."
			let "i = i + 1";
		done
		echo -e ""
	fi
else
	echo "Please specify a directory to be analyzed!"
fi
		
