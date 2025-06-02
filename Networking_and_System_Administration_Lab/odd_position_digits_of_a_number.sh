echo "Enter a five digit number : "
read num

if [[ $num =~ ^[0-9]{5}$ ]]
then
  echo "Valid 5-digit number"

  n=1
  while [ $n -le 5 ]
  do
    echo "$num" | cut -c $n
    n=$(( n + 2 ))
  done

else
  echo "Invalid input"
fi
