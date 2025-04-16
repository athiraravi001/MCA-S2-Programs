echo "Enter the filename : "
read a

echo "----- Original Content -----"
cat $a

echo "----- After converting to UPPERCASE -----"
tr '[a-z]' '[A-Z]' < $a

echo "----- After converting to LOWERCASE -----"
tr '[A-Z]' '[a-z]' < $a