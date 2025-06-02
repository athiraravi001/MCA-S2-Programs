echo "Enter a number :"
read number

reverse=0

while [ $number -gt 0 ]
do
    remainder=$(( number % 10 ))
    reverse=$(( reverse * 10 + remainder ))
    number=$(( number / 10 ))
done

echo "Reversed number is $reverse"


#------------------------------ OR ------------------------------


# Reverse 5-digit number

read -p "Enter a five-digit integer : " num

if [ "$num" -ge 10000 ] && [ "$num" -le 99999 ]
then
    echo "Valid five-digit integer."
    reversed=$(echo "$num" | rev)
    echo "Reversed number : $reversed"
else
    echo "Invalid input"
fi
