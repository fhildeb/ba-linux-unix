#!/bin/bash
ergebnis=0

function istZahl() {
# Remove all numbers
text=$(echo "$gerateneZahl" | sed 's/[0-9]//g';)
if [ "$text" ]; then
	# Text present- incorrect
	ergebnis=0
else
	# No text present- correct
	ergebnis=1
fi
}

# Generate random number between 0..99
let "zufall= $RANDOM % 100"
# echo $zufall
echo "I have come up with a random number! Try to guess..."
versuche=0
# Only 10 attempts
while [ $versuche -lt 10 ]; do
	# Inc($versuche)	
	let "versuche = $versuche + 1"	
	echo "Attempt $versuche - Your choice is: "
	read gerateneZahl
	istZahl
	if [ "$ergebnis" -eq 1 ]; then	
		# Check cases
		if [ $gerateneZahl -lt $zufall ]; then
			echo "The number $gerateneZahl  is smaller than mine!"
		fi

		if [ $gerateneZahl -gt $zufall ]; then
			echo "The number $gerateneZahl is bigger than mine!"
		fi

		if [ $gerateneZahl -eq $zufall ]; then
			echo "Congratulations! Number found after $versuche attempts!"
			# Set attempts to 11 to distinguish from failure			
			versuche=11
		fi

	else
		echo "There are letters in the input! Unlucky!"
	fi
done
if [ $versuche -eq 10 ]; then
	echo "My random number was $zufall."
fi
echo "Press [Enter] to exit."
read

