echo -n "Enter Basic Salary : "
read basic

# DA (40% of basic)
da=$(echo "scale=2; $basic * 40 / 100" | bc)

# HRA (20% of basic)
hra=$(echo "scale=2; $basic * 20 / 100" | bc)

# Gross Salary = Basic salary + DA + HRA
gross_salary=$(echo "scale=2; $basic + $da + $hra" | bc)

echo "DA = Rs. $da"
echo "HRA = Rs. $hra"
echo "Gross Salary = Rs. $gross_salary"