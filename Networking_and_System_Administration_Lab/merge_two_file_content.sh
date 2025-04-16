echo "Enter first number : "
read a
cat $a

echo "Enter second number : "
read b
cat $b

echo "----- After concatenating -----"
cat $a $b > c
cat c