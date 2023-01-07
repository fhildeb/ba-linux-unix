echo "Files in current folder: "                            
ls | tr '' '\n'
echo -e ""
echo "Root directory: "                                     
ls / | tr '' '\n'
echo -e ""
echo "Parent directory: "                                   
ls .. | tr '' '\n'
echo -e ""
echo "All files in current folder: "                        
ls -a | tr '' '\n'
echo -e ""
echo "Extended file info for current folder: "              
ls -l
echo -e ""
echo "Mark executable files in current folder: "            
ls -F | tr '' '\n'
echo -e ""
echo "Files in current folder sorted by modification: "     
ls -t | tr '' '\n'
echo -e ""

echo "Folders new_one new_two created"                      
mkdir new_one new_two

echo "Folder new_two removed"                               
rmdir new_two new_one
# Remove folder with all subdirectories and contents: rmdir -r folder