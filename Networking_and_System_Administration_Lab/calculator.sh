echo "Enter first number : "
read num1

echo "Enter second number : "
read num2

while true;
do
    echo ""
    echo "Choose an operation :-"
    echo "1 : Addition"
    echo "2 : Subtraction"
    echo "3 : Multiplication"
    echo "4 : Division"
    echo "5 : Exit"
    
    read -p "Enter your choice: " choice

    case $choice in
        1)  echo "***** Addition *****"
            result=`expr $num1 + $num2`               # result=$(( num1 + num2 ))
            echo "Result = $result"
            ;;
        2)  echo "***** Subtraction *****"
            result=`expr $num1 - $num2`               # result=$(( num1 - num2 ))
            echo "Result = $result"
            ;;
        3)  echo "***** Multiplication *****"
            result=`expr $num1 \* $num2`              # result=$(( num1 * num2 ))
            echo "Result = $result"
            ;;
        4)  echo "***** Division *****"
            if [ "$num2" -ne 0 ]
            then
                result=`echo "scale=2; $num1 / $num2" | bc`            # result=$(( num1 / num2 )) for integer division           # result=$(echo "scale=2; $num1 / $num2" | bc) for floating point division
                echo "Result = $result"
            else
                echo "Error: Division by zero"
            fi
            ;;
        5)  echo "Exited"
            exit 0
            ;;
        *)  echo "Invalid choice"
            ;;
    esac
done
