echo "Create file new_text"                              `touch new_text`
echo "Write pwd in new_text"                             `pwd > new_text`
echo "Add name into new_text"                            `whoami >> new_text`
echo "Add text into new_text"                            `echo custom text >> new_text`


# Write into file
# `cat > new_text`

# Read information from file: echo < file
# Delete file: rm file
# Create file: mk file