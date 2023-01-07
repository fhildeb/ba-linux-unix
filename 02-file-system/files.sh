echo "Created file new_text"                             
touch new_text
echo "Wrote date into new_text"                         
cal 2019 >> new_text
echo "Copied and renamed new_text to copy_text"         
cp new_text copy_text
# Copy without renaming `cp new_text ..`   

echo "Moved copy_text to clone_text"                     
mv copy_text clone_text      
echo -e ""
echo "Inode number of files:"                          
ls -ai | tr '\t' '\n'
echo -e ""
echo "Inode number of current directory:" 
ls -di
echo -e ""
echo "Removed files new_text and clone_text"
rm new_text clone_text