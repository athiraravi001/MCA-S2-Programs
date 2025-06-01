while true;
do
    echo ""
    echo "Choose an option :-"
    echo "1 : Factorial"
    echo "2 : Prime number or not"
    echo "3 : Palindrome number or not"
    echo "4 : Fibonacci series"
    echo "5 : Armstrong number check"
    echo "6 : GCD of two numbers"
    echo "7 : LCM of two numbers"
    echo "8 : Perfect number check"
    echo "9 : Even or Odd check"
    echo "10 : Sum of first N natural numbers"
    echo "11 : Power calculation (a^b)"
    echo "12 : Exit"
    read -p "Enter your choice : " choice

    case $choice in
        1)
            echo "----- Factorial -----"
            read -p "Enter a number : " num
            if [ $num -lt 0 ]
            then
                echo "Factorial is not defined for negative numbers."
            elif [ $num -eq 0 ] || [ $num -eq 1 ]
            then
                echo "Factorial of $num is 1"
            else
                fact=1
                for (( i=1; i<=num; i++ ))
                do
                    fact=$((fact * i))
                done
                echo "Factorial of $num is $fact"
            fi
            ;;
        2)
            echo "----- Prime number check -----"
            read -p "Enter a number : " num
            if [ $num -lt 2 ]
            then
                echo "$num is not a prime number"
            else
                is_prime=1
                for (( i=2; i*i<=num; i++ ))
                do
                    if [ $((num % i)) -eq 0 ]
                    then
                        is_prime=0
                        break
                    fi
                done
                if [ $is_prime -eq 1 ]
                then
                    echo "$num is a prime number"
                else
                    echo "$num is not a prime number"
                fi
            fi
            ;;
        3)
            echo "----- Palindrome number or not----- "
            read -p "Enter a number : " number
            original=$number
            reverse=0
            while [ $number -ne 0 ]
            do
                remainder=$((number % 10))
                reverse=$((reverse * 10 + remainder))
                number=$((number / 10))
            done
            if [ $original -eq $reverse ]
            then
                echo "$original is a palindrome."
            else
                echo "$original is not a palindrome."
            fi
            ;;
        4)
            echo "----- Fibonacci series -----"
            read -p "Enter how many terms you want in Fibonacci series : " terms
            a=0
            b=1
            echo "Fibonacci series up to $terms terms:"
            for (( i=0; i<terms; i++ )); do
                echo -n "$a "
                fn=$((a + b))
                a=$b
                b=$fn
            done
            echo
            ;;
        5)
            echo "----- Armstrong number or not-----"
            read -p "Enter a number : " num
            original=$num
            sum=0
            digits=${#num}
            while [ $num -gt 0 ]
            do
                digit=$((num % 10))
                power=$(echo "$digit^$digits" | bc)
                sum=$((sum + power))
                num=$((num / 10))
            done
            if [ $sum -eq $original ]
            then
                echo "$original is an Armstrong number."
            else
                echo "$original is not an Armstrong number."
            fi
            ;;
        6)
            echo "----- GCD of two numbers ----- "
            read -p "Enter first number : " a
            read -p "Enter second number : " b
            while [ $b -ne 0 ]
            do
                temp=$b
                b=$((a % b))
                a=$temp
            done
            echo "GCD is $a"
            ;;
        7)
            echo "----- LCM of two numbers ----- "
            read -p "Enter first number : " a
            read -p "Enter second number : " b
            x=$a
            y=$b
            while [ $y -ne 0 ]
            do
                temp=$y
                y=$((x % y))
                x=$temp
            done
            gcd=$x
            lcm=$(( (a * b) / gcd ))
            echo "LCM is $lcm"
            ;;
        8)
            echo "----- Perfect number or not----- "
            read -p "Enter a number : " num
            sum=0
            for (( i=1; i<num; i++ ))
            do
                if [ $((num % i)) -eq 0 ]
                then
                    sum=$((sum + i))
                fi
            done
            if [ $sum -eq $num ]; then
                echo "$num is a perfect number."
            else
                echo "$num is not a perfect number."
            fi
            ;;
        9)
            echo "----- Even or Odd ----- "
            read -p "Enter a number : " num
            if (( num % 2 == 0 ))
            then
                echo "$num is Even"
            else
                echo "$num is Odd"
            fi
            ;;
        10)
            echo "----- Sum of first N natural numbers ----- "
            read -p "Enter N : " n
            if [ $n -lt 1 ]
            then
                echo "Enter a positive integer greater than 0"
            else
                sum=$((n * (n + 1) / 2))
                echo "Sum of first $n natural numbers is $sum"
            fi
            ;;
        11)
            echo "----- Power calculation (a^b) -----"
            read -p "Enter base (a) : " base
            read -p "Enter exponent (b) : " exp
            if [ $exp -lt 0 ]
            then
                echo "Negative exponent not supported."
            else
                result=1
                for (( i=1; i<=exp; i++ ))
                do
                    result=$((result * base))
                done
                echo "$base ^ $exp = $result"
            fi
            ;;
        12)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice!!!"
            ;;
    esac
done