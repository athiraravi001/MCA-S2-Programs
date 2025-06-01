# Extract lines between given range which exclude the start and end lines

echo "Enter filename : "
read f

echo "Enter the starting line number : "
read s

echo "Enter the ending line number : "
read e

v=`expr $e - 1`         # line before the end line
w=`expr $v - $s`        # number of lines between start and line before end

head -n "$v" "$f" | tail -n "$w"

#------------------------------ OR ------------------------------

echo "Enter filename : "
read filename

echo "Enter the starting line number : "
read start_line

echo "Enter the ending line number : "
read end_line

first_line_to_print=$((start_line + 1))
last_line_to_print=$((end_line - 1))

sed -n "${first_line_to_print},${last_line_to_print}p" "$filename"


#----------------------------------------------------------------------------------------------------------

# Extract lines between given range which include the start and end lines

echo "Enter filename : "
read f

echo "Enter the starting line number : "
read s

echo "Enter the ending line number : "
read e

total_lines=$((e - s + 1))    # total lines to extract (including both start and end)

head -n "$e" "$f" | tail -n "$total_lines"

#------------------------------ OR ------------------------------

echo "Enter filename : "
read f

echo "Enter the starting line number : "
read s

echo "Enter the ending line number : "
read e

sed -n "${s},${e}p" "$f"