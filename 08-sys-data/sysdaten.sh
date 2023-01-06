#!/bin/bash
echo 'SYSTEMDATEN:*****'
# Output weekday and date
echo "Heute ist `date +%A`, der `date +%d`. `date +%B` `date +%Y`"
echo "Mein aktuelles Verzeichnis ist \"`pwd`\""
echo "Angemeldet bin ich als \"`whoami`\" am Host \"$HOSTNAME\", der Terminaltyp ist \"$TERM\"."
nutzer=`who | wc -l`
echo "Derzeit sind an diesem Rechner $nutzer zugangsberechtigte Nutzer eingeloggt."
echo '*****ENDE DER SYSTEMDATEN'

