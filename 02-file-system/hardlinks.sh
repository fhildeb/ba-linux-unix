echo "Created hardlink files-hardlink.sh of files.sh"     
ln files.sh files-hardlink.sh
echo -e ""
# Create hardlink across folders: ln -f ../file file

echo "Removed hardlink files-hardlink.sh"     
rm files-hardlink.sh