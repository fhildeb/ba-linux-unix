if [ $# -eq 1 ]; then
	if [ "$1" = "-w" ]; then
		`date >> "lastlog"`
		echo `tail -1 lastlog`
	else
		echo "Leider die unpassenden Argumente!"
	fi
elif [ $# -eq 0 ]; then
	if [ -e "lastlog" ]; then
		echo `tail -1 lastlog`
	else
		touch "lastlog"
		`date >> "lastlog"`
	fi
else
	echo "Leider die unpassenden Argumente!"
fi
exit 0
