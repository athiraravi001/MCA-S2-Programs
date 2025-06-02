read -p "Enter marks obtained : " marks_obtained
read -p "Enter total marks : " total_marks

percentage=$(( marks_obtained * 100 / total_marks ))
echo "Percentage : $percentage%"

if [ "$percentage" -ge 90 ]
then
    echo "Grade : A"
elif [ "$percentage" -ge 80 ]
then
    echo "Grade : B"
elif [ "$percentage" -ge 70 ]
then
    echo "Grade : C"
elif [ "$percentage" -ge 60 ]
then
    echo "Grade : D"
else
    echo "Grade : Failed"
fi


#------------------------------ OR ------------------------------


# Calculate the grade of a student by accepting 3 marks out of 100 using command line argument.

if [ $# -ne 3 ]
then
  echo "Enter exactly 3 marks out of 100"
  exit 1
fi

m1=$1
m2=$2
m3=$3

avg=$(( (m1 + m2 + m3) / 3 ))

if [ $avg -ge 90 ]; then
  grade="A"
elif [ $avg -ge 80 ]; then
  grade="B"
elif [ $avg -ge 70 ]; then
  grade="C"
elif [ $avg -ge 60 ]; then
  grade="D"
else
  grade="F"
fi

echo "Average : $avg"
echo "Grade : $grade"
