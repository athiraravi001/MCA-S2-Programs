echo -n "Enter first number : "
read num1

echo -n "Enter second number : "
read num2

# If first number is less than second number, then add them 
if [ "$num1" -lt "$num2" ]
then
  result=$((num1 + num2))
  echo "Sum = $result"

# If first number is greater than second number, then multiply them   
elif [ "$num1" -gt "$num2" ]
then
  result=$((num1 * num2))
  echo "Product = $result"

else
  # If both numbers are equal, then do nothing
  echo "Both numbers are equal. No operation performed."
fi