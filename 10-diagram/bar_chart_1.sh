#!/bin/bash
# Sufficient parameters?
if [ $# -lt 1 ]; then
	echo "Keine Parameter angegeben! 1-5 Parameter zwischen 0-20 sind erlaubt!"
# Too many parameters?
elif [ $# -gt 5 ]; then
	echo "Zu viele Parameter angegeben! 1-5 Parameter zwischen 0-20 sind erlaubt!"
else
	# Display bar graph after checking parameters
	echo "Balkendiagramm"
	echo "^"	
	# param1=`tr -d 'A-Za-z' $1 `
	param1=$1
	i=1;
	ausgabe="|"
	stern="*"
	while [ $i -le $param1 ]; do
		ausgabe=${ausgabe}${stern}
		let "i = i + 1"
	done
	echo $ausgabe
	ausgabe="|"
	i=1
	if [ $# -ge 2 ]; then
		# param2=`tr -d 'A-Za-z' $2`
		param2=$2
		while [ $i -le $param2 ]; do
			ausgabe=${ausgabe}${stern}
			let "i = i + 1"
		done
		echo $ausgabe
		
	fi
	ausgabe="|"
	i=1
	if [ $# -ge 3 ]; then
		# param3=`tr -d 'A-Za-z' $3`
		param3=$3
		while [ $i -le $param3 ]; do
			ausgabe=${ausgabe}${stern}
			let "i = i + 1"
		done
		echo $ausgabe
	fi
	ausgabe="|"	
	i=1	
	if [ $# -ge 4 ]; then
		# param4=`tr -d 'A-Za-z' $4`
		param4=$4
		while [ $i -le $param4 ]; do
			ausgabe=${ausgabe}${stern}
			let "i = i + 1"
		done
		echo $ausgabe
	fi
	ausgabe="|"
	i=1
	if [ $# -eq 5 ]; then
		# param5=`tr -d 'A-Za-z' $5`
		param5=$5
		while [ $i -le $param5 ]; do
			ausgabe=${ausgabe}${stern}
			let "i = i + 1"
		done
		echo $ausgabe
	fi
	echo "--------------------->"
fi
