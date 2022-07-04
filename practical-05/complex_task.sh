# 1) Display of the number of lines of the file freunde
`wc -l freunde`

# 2) Display of the file content sorted by name (alphabetically)
`sort freunde`

# 3) Display of the file content sorted by postal code (numerically)
`sort -k3 -n freunde`

# 4) Sorting of the file content by name, but only display of the first two fields (= columns name and first name).
`sort freunde | cut -f1,2`

# 5) Sorting of the file content by location, transfer of the sorted content of the fields for postal code and location into the file postlz.
`sort -3k freunde | cut -f3,4 > postlz`

# 6 ) Display of the file postlz,where in the display all lower case letters are to be replaced by upper case letters
`tr '[a-z]' '[A-Z]' < freunde > postlz`

# 7) Search in the file freunde for entries for the name Meier.
`grep Meier freunde`