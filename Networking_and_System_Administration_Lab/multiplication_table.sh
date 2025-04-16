num=$1
echo "----- Multiplication Table of $num -----"

# for ((i=1; i<=10; i++))
for i in {1..10}
do
    echo "$i * $num = $((num * i))"
done