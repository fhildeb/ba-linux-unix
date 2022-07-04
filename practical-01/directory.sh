echo "Files in current folder: "                            `ls`
echo "Root directory: "                                     `ls /`
echo "Parent directory: "                                   `ls ..`
echo "All files in current folder: "                        `ls -a`
echo "Extended file info for current folder: "              `ls -l`
echo "Mark executable files in current folder: "            `ls -F`
echo "Files in current folder sorted by modification: "     `ls -t`

echo "Folders new_one new_two created"                      `mkdir new_one new_two`
echo "Folder new_two removed"                               `rmdir new_two`
# Remove folder with all subdirectories and contents: rmdir -r folder