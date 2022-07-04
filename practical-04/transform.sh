# tr                                Delete or replace text
# tr '[row1-row2]'                  Deletes all chars between row1 and row2
# tr '[:oldchars:]' '[:newchars:]'  Replace old char class with new one
# tr '[A-Z]' '[a-z]' < file         Replace capital chars with small chars
# tr '[:upper:]' '[:lower:]' < file Replace capital chars with small chars
# tr -d '\t' < file                 Delete all tabs within file

# ! tr only temporary if input into data

# cut -c-5 file                     Cut out calumn 1 chars 1-5
# cut -f2                           Cut out calumn 2
# cut -f2-3                         Cut out calumn 2 to 3
# cut -f2,3                         Cut out calumn 2 and 4
# cut -f2,3 file > file2            Output redirection

# grep term file                    Search for term in file
`ps -elf | grep whoami`             # Example search for user tasks             

# Special character strings
# .                                 any character
# *                                 no, one or multiple repeats

# \{1, \}                           one or multiple repeats
# \{1 \}                            one repeat
# \{1, \}                           one or multiple repeats
# \{0, 1 \}                         no or one repeat
# \{n \}                            at least n repeats
# [ ]                               one of the chars within the brackets
# [^ ]                              one of the chars not within the brackets
# ^RA                               only if RA appears at the start of the line
# RA$                               only if RA appears at the end of the line

# d on start of line followed by 8 arbitrary chars, ending with x 
`ls -al | grep '^d........x'`

# Simplyfied
`ls -al | grep '^d.\{8\}x'`

