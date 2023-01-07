echo "Number of lines of the file friends:"
wc -l friends | awk '{$1=$1};1' | tr -d 'friends'
echo -e ""
echo "File content sorted by name alphabetically:"
sort friends
echo -e ""
echo "File content sorted by postal code numerically:"
sort -k3 -n friends
echo -e ""
echo "File content by name, but only display of the first two fields:"
sort friends | cut -f1,2
echo -e ""
echo "Sorted content of the fields for postal code and location into postal_code."
sort -k3 friends | cut -f3,4 | awk '{$1=$1};1' > postal_code
echo -e ""
echo "Search file friends for entries for the name Meier:"
grep Dieter friends