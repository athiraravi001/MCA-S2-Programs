read -p "Enter marks obtained : " marks_obtained
read -p "Enter total marks : " total_marks

percentage=$(( marks_obtained * 100 / total_marks ))
echo "Percentage : $percentage%"

if [ "$percentage" -ge 90 ]; 
then
    echo "Grade : A"
elif [ "$percentage" -ge 80 ]; 
then
    echo "Grade : B"
elif [ "$percentage" -ge 70 ]; 
then
    echo "Grade : C"
elif [ "$percentage" -ge 60 ]; 
then
    echo "Grade : D"
else
    echo "Grade : Failed"
fi