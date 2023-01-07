
echo "My login name: "  
whoami
echo -e ""
echo "All logged-in users: "        
who
echo -e ""
echo "User and group ID's: "        
id | tr ',' '\n'
echo -e ""
echo "Current path: "               
pwd
echo -e ""
echo "Home Directory: "             
echo "$HOME"
