# Sorting

# a) Sorting by alphabetical order (name), result output to the file friend location
`sort freunde > freundesort`

# b) Like a), but without distinction of upper/lower case letters during sorting
`sort -f freunde > freundesort`

# c) Sort by alphabet. Order with respect to the place! (i.e. all fields before the Location field are not taken into account for sorting!)
`sort -k 4 freunde`

# d) Replace all lowercase letters of the file friends with uppercase letters, save the result in the file friendslarge
`tr '[:lower:]' '[:upper:]' freunde > freundegross`

# e) Remove all TAB characters from the file friends, result to the file freunde_ohne_tab.
`tr -d '\t' freunde > freunde_ohne_tab`

# f) What does tr -cs '[a-z][A-Z]' '[\012*]' friends do?
# Replaces all characters that are not letters with enter. 
# Important: "*" sees sequence number otherwise 2x enter if number equals 15

# g) How many entries (lines) in your file contain the name "Meier"?
`grep -c Meier freunde`

# h) Like g), but ignore upper/lower case (e.g. "Meier" or "meier" permissible)
`grep -ci Meier freunde`

# i) List the complete line(s) containing the name "Meier".
`grep Meier freunde`

# j) List the line(s) containing the string "sys", but this time the command should search in two files, friends and /etc/passwd.
`grep sys freunde /etc/password`

# k) grep '^U..' file
# Search all with beginning U and two following characters

# l) grep '^[A-Z]' file
# Search all with capital letters at the beginning

# m) grep '^[A-Z].*' file
# Search all with capital letters and at least one suffix

# n) grep '^[A-Z].*\.c$' file
# Search all with uppercase letters at the beginning and at least one suffix and .c at the end

# o) grep '^[0-9A-Fa-f][0-9A-Fa-f]*$' file
# Search everything with a hexadecimal number at the beginning and at least one hexadecimal number at the end

# p) List all lines in which the last name starts with S and contains at least 3 characters
`grep '^\t S..' freunde`

# q) List all lines in which the string 09648 occurs anywhere
`grep 09648 reunde`

# r) Form a pipe from the ls command (with option -l) and grep to determine from the contents of the current 
# directory all entries that belong to a simple (regular) file for which the owner has the rights rwx! For this, 
# remember the exact structure of the display for ls -l
`ls -l | grep '-rwx......'`

# s) like r) but for simple files for which the rest of the world has read permission!
`ls -l | grep '-...r..r..'`