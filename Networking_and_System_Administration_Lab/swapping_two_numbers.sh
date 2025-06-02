echo -n "Enter first number = "
read num1

echo -n "Enter second number = "
read num2

echo "Before swapping : num1 = $num1, num2 = $num2"

temp=$num1
num1=$num2
num2=$temp

echo "After swapping : num1 = $num1, num2 = $num2"