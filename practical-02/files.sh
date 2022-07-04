echo "Create file new_text"                             `touch new_text`
echo "Write date into new_text"                         `cal 2019 >> new_text`
echo "Copied and renamed new_text to copy_text"         `cp new_text copy_text`
# Copy without renaming `cp new_text ..`                
echo "Move copy_text to clone_text"                     `mv copy_text clone_text`      

echo "Inode number of files: "                          `ls -ai`
echo "Inode number of current directory:"               `ls -di`