while true; 
do
  echo "Choose an option :-"
  echo "1 : Compare two strings"
  echo "2 : Length of a string"
  echo "3 : Reverse a string"
  echo "4 : Exit"
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
      echo "Exiting....."
      exit 0
      ;;
    *)
      echo "Invalid choice"
      ;;
  esac
done