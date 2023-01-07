echo "File contents of commands.sh: "           
more commands.sh
echo -e ""
echo "Continious display of file contents: "    
cat commands.sh calendar.sh
echo -e ""
echo "First 10 Lines of commands.sh: "          
head commands.sh
echo -e ""
echo "First 3 Lines of commands.sh: "           
head -3 commands.sh
echo -e ""
echo "Last 10 Lines of commands.sh: "           
tail commands.sh
echo -e ""
echo "Last 3 Lines of commands.sh: "            
tail -3 commands.sh
echo -e ""
echo "Wordcount of commands.sh"               
wc commands.sh | awk '{$1=$1};1'  
echo -e ""
echo "Rows in commands.sh"                      
wc -l commands.sh | tr 'commands.sh' ' ' | awk '{$1=$1};1'
echo -e ""
echo "Words in commands.sh"                     
wc -w commands.sh | tr 'commands.sh' ' ' | awk '{$1=$1};1'
echo -e ""
echo "Characters in commands.sh"               
wc -m commands.sh | tr 'commands.sh' ' ' | awk '{$1=$1};1'
echo -e ""
