echo "Enter filename: "
read a

if [ -w "$a" ]
then
   echo "File is writable"
else
   echo "File is not writable"
fi
