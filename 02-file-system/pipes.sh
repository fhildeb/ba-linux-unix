echo "Folder contents in reverse:"
ls | sort -r
echo -e ""
echo "Printed contents to ls-file"
ls | sort -r > ls-file
echo -e ""
echo "Removed ls-file"
rm ls-file