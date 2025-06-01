echo "Enter the first filename : "
read a
echo "Enter the second filename : "
read b

if [ -f "$a" ]
then
    echo "First file exists..."
    if [ -f "$b" ]
    then
        echo "Second file exists..."
        echo "----- Appending content of $a to $b -----"
        cat "$a" >> "$b"
        echo "----- Content of $b after appending -----"
        cat "$b"
        echo "Content appended successfully!!!"
    else
        echo "Second file does not exist"
        echo "----- Creating a new file with content of $a -----"
        cat "$a" > newfile.txt
        echo "----- Content of new file -----"
        cat newfile.txt
    fi
else
    echo "First file does not exist..."
fi