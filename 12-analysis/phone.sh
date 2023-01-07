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
			echo -e ""
			while [ "$i" -le "$max" ]; do
				echo `sed $i'q;d' $2 | tr ',' ' ' | tr ':' ' '`
				let "i = i + 1"
			done
			echo -e ""
			exit 0
		else
			echo -e ""
			echo "I can't read anything from this phone book file!"	
			echo -e ""
		fi
	# Parameter s for search was specified
	elif [ "$1" = "-s" ]; then
		# Are enough parameters specified?
		if [ $# -ge 3 ]; then
			if [ -f "$3" ]; then
				ausgabe=`grep '.*'$2'*.' $3 | tr ',' ' ' | tr ':' ' '`
				if [ "$ausgabe" = "" ]; then
					echo -e ""
					echo "Nothing could be found!"
					echo -e ""
					exit 2
				else
					echo -e ""
					echo "Matching:" 
					echo "$ausgabe"
					echo -e ""
					exit 0
				fi
			else
				echo -e ""
				echo "I can't read anything from this phone book file!"
				echo -e ""
			fi
		else
			echo -e ""
			echo "I am missing some parameters!"
			echo "bash phone.sh -s [searchword] [file]"
			echo -e ""
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
					zeile=`sed -n $i'p' $3`
					if [ "$zeile" == "$2" ]; then
						echo -e ""
						echo "This entry already exists! Abort!"
						echo -e ""
						abbruch=1
					fi
					let "i = i + 1"
				done
				if [ $abbruch -lt "1" ]; then
					echo $2 >> $3
					echo -e ""
					echo "Done!"
					echo -e ""
					exit 0
				fi
			else
				echo -e ""
				echo "I can't read anything from this phone book file!"
				echo -e ""
			fi
		else
			echo -e ""
			echo "I do not have enough parameters!"
			echo "bash phone.sh -e [name, surname: number] [file]"
			echo -e ""
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
					teststr=`sed $i'q;d' $3 | grep '.*'$2'*.' | tr ',' ' ' | tr ':' ' '`
					if [ "$teststr" = "" ]; then
						# Write line to second file
						echo `sed $i'q;d' $3` >> "tel.tmp"
					else
							echo -e ""
							echo "The specified name or number matches:"
							echo "$teststr"
							echo "Should the user be discarded? [y/n]"
							read abfrage
							if [ "$abfrage" = "n" ]; then
								echo `sed $i'q;d' $3` >> "tel.tmp"
								echo -e ""
							else
								echo -e ""
								echo "The user $teststr is no longer stored!"
								echo -e ""
							fi
					fi
					let " i = i + 1"
				done
				# Move file to original path of phonebook
				`mv ./tel.tmp $3`
			else
				echo -e ""
				echo "I can't read anything from the file!"
				echo -e ""
			fi
		else
			echo -e ""
			echo "I need more parameters!"
			echo "bash phone.sh -d [name] [file]"
			echo -e ""
		fi
	fi
else
	echo -e ""
	echo "I need an option and a filename for the phonebook file!"
	echo -e ""
	echo "bash phone.sh"
	echo "-p [filename] ... Displays all entries from the phonebook file."
	echo "-s [searchword] [filename] ... Searches the file for this contact."
	echo "-e [name, surname:number] [filename] .. Adds new contact to the phone list."
	echo "-d [searchword] [filename] ... Deletes contact from the phone list."
	echo -e ""
	exit 1
fi
