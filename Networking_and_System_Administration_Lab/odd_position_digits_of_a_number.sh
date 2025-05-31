echo "Enter a five digit number: "
read num

if ! [[ $num =~ ^[0-9]{5}$ ]] 
then
  echo "Invalid input. Please enter exactly a five-digit number."
  exit 1
fi

n=1
while [ $n -le 5 ]
do
  echo $num | cut -c $n
  n=$(( n+2 ))
done