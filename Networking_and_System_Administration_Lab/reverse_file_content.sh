echo "Enter the filename : "
read a

if [ -f "$a" ]
then
    echo "----- Before reversing -----"
    cat $a

    echo "----- After reversing -----"
    tac $a
else
    echo "File does not exist"
fi