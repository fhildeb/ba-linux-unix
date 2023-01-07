#!/bin/bash
if [ "$1" = "-L" ]; then
	# Detailed weather forecast
	if [ $# -gt "1" ]; then
		if [ -f "$2" ]; then
			# Fill random variables
			zufall1=0
			zufall2=0
			zufall3=0
			zufall4=0
			zufall5=0
			zufall6=0
			let "zufall1 = $RANDOM % 4 + 1"
			let "zufall2 = $RANDOM % 2 + 1"
			let "zufall3 = $RANDOM % 5 + 1"
			let "zufall4 = $RANDOM % 5 + 1"
			let "zufall5 = $RANDOM % 6 + 1"
			let "zufall6 = $RANDOM % 4 + 1"
			
			tag=`sed -n '1p' $2 | cut -f$zufall1`
			art=`sed -n '2p' $2 | cut -f$zufall2`
			temp=`sed -n '3p' $2 | cut -f$zufall3`
			regen=`sed -n '4p' $2 | cut -f$zufall4`
			wind=`sed -n '5p' $2 | cut -f$zufall5`
			sonne=`sed -n '6p' $2 | cut -f$zufall6`
			
			ausgabe="$tag will be $art weather with about $temp degrees celsius, $regen rain, $wind wind and $sonne sun."
			echo -e ""
			echo $ausgabe
			echo -e ""
		else
			echo "Unfortunately, I cannot read anything from this source: $2"
		fi	
	else
		echo "Unfortunately, I don't have a data source for my weather forecast!"
	fi
else
	# Simple weather forecast
	if [ -f "$1" ]; then	
		zufall1=0
		zufall2=0	
		let "zufall1 = $RANDOM % 4 + 1"
		let "zufall2 = $RANDOM % 2 + 1"
		tag=`sed -n '1p' $1 | cut -f$zufall1`
		art=`sed -n '2p' $1 | cut -f$zufall2`
		ausgabe="$tag will be $art weather."
		echo -e ""
		echo "$ausgabe"
		echo -e ""
	else
		echo "Unfortunately, I can not read from this source: $1"
	fi
fi
