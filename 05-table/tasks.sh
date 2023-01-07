# Sorting

echo "Sorting by alphabetical order, result output to friend_location."
sort friends > friend_location
echo -e ""
echo "Alphabetical sort without upper/lowercase distinction to friend_location_2."
sort -f friends > friend_location_2
echo -e ""
echo "Sort by alphabet order with respect to the location:"
sort -k4 friends
echo -e ""
echo "Replacing all lowercase with uppercase letters and save to friends_upper."
cat friends | tr '[:lower:]' '[:upper:]' > friends_upper
echo -e ""
echo "Removing all TAB characters from friends and save to friends_wo_tab."
cat friends | tr -d '\t' > friends_wo_tab
echo -e ""

# What does tr -cs '[a-z][A-Z]' '[\012*]' friends do?
# Replaces all characters that are not letters with enter. 
# Important: "*" sees sequence number otherwise 2x enter if number equals 15

echo "How many entries contain the name Dieter?"
grep -c Dieter friends
echo -e ""
echo "How many entries contain the name Lo regardless of upper/lowercase?"
grep -ci lo friends
echo -e ""
echo -e "All complete lines containing the name Dieter"
grep Dieter friends
echo -e ""
echo -e "Search of sys in two files: friends and friend_location:"
grep ch friends friend_location
echo -e ""

# Search all with beginning U and two following characters
# grep '^U..' file

# Search all with capital letters at the beginning
# grep '^[A-Z]' file

# Search all with capital letters and at least one suffix
# grep '^[A-Z].*' file

# Search all with uppercase letters at the beginning and at least one suffix and .c at the end
# grep '^[A-Z].*\.c$' file

# Search everything with a hexadecimal number at the beginning and at least one hexadecimal number at the end
# grep '^[0-9A-Fa-f][0-9A-Fa-f]*$' file

# List all lines in which the last name starts with S and contains at least 3 characters
# grep '^\t S..' file

# List all lines in which the string 09648 occurs anywhere
# grep 09648 reunde

echo "All regular files with owner rights rwx:"
ls -l | grep '^\-rwx'
echo -e ""
echo "Files which have read permission for everyone:"
ls -l | grep '\-...r..r..'