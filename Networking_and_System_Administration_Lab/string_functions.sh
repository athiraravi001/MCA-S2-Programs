while true; 
do
  echo ""
  echo "Choose an option :-"
  echo "1  : Compare two strings"
  echo "2  : Length of a string"
  echo "3  : Reverse a string"
  echo "4  : Convert to uppercase"
  echo "5  : Convert to lowercase"
  echo "6  : Check palindrome"
  echo "7  : Count words"
  echo "8  : Replace substring"
  echo "9  : Extract substring"
  echo "10 : Concatenate strings"
  echo "11 : Find substring position"
  echo "12 : Count occurrences of a substring"
  echo "13 : Trim leading and trailing whitespace"
  echo "14 : Exit"
  read -p "Enter your choice : " choice

  case $choice in
    1)
      echo "----- Compare two strings -----"
      read -p "Enter string 1 : " str1
      read -p "Enter string 2 : " str2
      if [ "$str1" = "$str2" ]; then
        echo "Strings are equal"
      else
        echo "Strings are not equal"
      fi
      ;;
    2)
      echo "----- Length of a string -----"
      read -p "Enter a string : " str
      length=${#str}
      echo "Length of the given string : $length"
      ;;
    3)
      echo "----- Reverse a string -----"
      read -p "Enter a string : " str
      rev_str=$(echo "$str" | rev)
      echo "Reversed string : $rev_str"
      ;;
    4)
      echo "----- Convert to uppercase -----"
      read -p "Enter a string : " str
      upper_str=$(echo "$str" | tr '[:lower:]' '[:upper:]')
      echo "Uppercase string : $upper_str"
      ;;
    5)
      echo "----- Convert to lowercase -----"
      read -p "Enter a string : " str
      lower_str=$(echo "$str" | tr '[:upper:]' '[:lower:]')
      echo "Lowercase string : $lower_str"
      ;;
    6)
      echo "----- String palindrome or not -----"
      read -p "Enter a string : " str
      rev_str=$(echo "$str" | rev)
      if [ "$str" = "$rev_str" ]; then
        echo "The string is a palindrome"
      else
        echo "The string is not a palindrome"
      fi
      ;;
    7)
      echo "----- Count words in a string -----"
      read -p "Enter a string : " str
      word_count=$(echo "$str" | wc -w)
      echo "Number of words : $word_count"
      ;;
    8)
      echo "----- Replace a substring -----"
      read -p "Enter the original string : " str
      read -p "Enter the substring to replace : " substr
      read -p "Enter the replacement string : " replacement
      result=${str//$substr/$replacement}
      echo "Resulting string : $result"
      ;;
    9)
      echo "----- Extract a substring -----"
      read -p "Enter the string : " str
      read -p "Enter starting position (0-based index) : " pos
      read -p "Enter length of substring : " len
      sub_str=${str:$pos:$len}
      echo "Extracted substring : $sub_str"
      ;;
    10)
      echo "----- Concatenate two strings -----"
      read -p "Enter string 1 : " str1
      read -p "Enter string 2 : " str2
      concat_str="$str1$str2"
      echo "Concatenated string : $concat_str"
      ;;
    11)
      echo "----- Find position of substring -----"
      read -p "Enter the main string : " str
      read -p "Enter the substring to search : " substr
      temp="${str%%"$substr"*}"
      if [[ "$temp" == "$str" ]]
      then
        echo "Substring not found"
      else
        echo "Substring found at position : ${#temp}"
      fi
      ;;
    12)
      echo "----- Count occurrences of a substring -----"
      read -p "Enter the main string : " str
      read -p "Enter the substring to count : " substr
      count=$(echo "$str" | grep -o "$substr" | wc -l)
      echo "Occurrences of '$substr' in the string : $count"
      ;;
    13)
      echo "----- Trim leading and trailing whitespace -----"
      read -p "Enter the string : " str
      trimmed=$(echo "$str" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
      echo "Trimmed string : '$trimmed'"
      ;;
    14)
      echo "Exiting....."
      exit 0
      ;;
    *)
      echo "Invalid choice"
      ;;
  esac
done
