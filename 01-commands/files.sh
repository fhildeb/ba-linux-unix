echo "Created file new_text"                              
touch new_text
echo "Wrote pwd in new_text"                             
pwd > new_text
echo "Added name into new_text"                            
whoami >> new_text
echo "Added custom text into new_text"                            
echo custom text >> new_text
echo -e ""
echo "Show new_text:"
echo "$(cat new_text)"
echo -e ""
echo "new_text was removed"
rm new_text


# Write into file
# `cat > new_text`

# Read information from file: echo < file
# Delete file: rm file
# Create file: mk file