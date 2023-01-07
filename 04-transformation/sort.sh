# sort                              sort alphabetically
# sort -k 2,4                       sort field 2 to 3
# sort -k 2,2                       sort in field 2
# sort -n                           sort numerically
# sort -k 3,3 -n                    sort numerically in field 3
# sort -k 3,3 -m -u                 sort numerbically in field 3 and delete duplicate entries

echo "Pipe to sort field 5 numerically ascending:"
echo -e ""
ls -al | sort -k 5 -n             # Pipe to sort field 5 numerically ascending

# sort -t:                          Colon will be seen as separator for calumns
# sort -t" "                        Space will be seen as separator for calumns

# sort -o output-file               Write sort output into output-file