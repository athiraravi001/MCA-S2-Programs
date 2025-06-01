while true;
do
    echo ""
    echo " ===== Choose an option (AREA / VOLUME / SURFACE AREA / PERIMETER) ====="
    echo "1 : Circle"
    echo "2 : Rectangle"
    echo "3 : Square"
    echo "4 : Triangle"
    echo "5 : Parallelogram"
    echo "6 : Trapezium"
    echo "7 : Ellipse"
    echo "8 : Rhombus"
    echo "9 : Sphere"
    echo "10 : Cuboid"
    echo "11 : Cylinder"
    echo "12 : Cone"
    echo "13 : Exit"
    read -p "Enter your choice : " choice

    case $choice in
        1)
            echo "---------- Circle ----------"
            read -p "Enter radius : " r
            # Area = π * r²
            area=$(echo "3.14 * $r * $r" | bc)  
            # Perimeter (Circumference) = 2 * π * r     
            perimeter=$(echo "2 * 3.14 * $r" | bc)
            echo "Area of Circle : $area"
            echo "Perimeter of Circle : $perimeter"
            ;;
        2)
             echo "---------- Rectangle ----------"
            read -p "Enter length : " l
            read -p "Enter breadth : " b
            # Area = length * breadth
            area=$(echo "$l * $b" | bc)
            # Perimeter = 2 * (length + breadth)
            perimeter=$(echo "2 * ($l + $b)" | bc)
            echo "Area of Rectangle : $area"
            echo "Perimeter of Rectangle : $perimeter"
            ;;
        3)
            echo "---------- Square ----------"
            read -p "Enter side: " s
            # Area = side * side
            area=$(echo "$s * $s" | bc)
            # Perimeter = 4 * side
            perimeter=$(echo "4 * $s" | bc)
            echo "Area of Square : $area"
            echo "Perimeter of Square : $perimeter"
            ;;
        4)
            echo "---------- Triangle ----------"
            read -p "Enter side 1 : " a
            read -p "Enter side 2 : " b
            read -p "Enter side 3 : " c
            read -p "Enter height (for area) : " h
            # Area = 0.5 * base * height (using side2 as base here)
            area=$(echo "0.5 * $b * $h" | bc)
            # Perimeter = sum of all sides
            perimeter=$(echo "$a + $b + $c" | bc)
            echo "Area of Triangle : $area"
            echo "Perimeter of Triangle : $perimeter"
            ;;
        5)
            echo "---------- Parallelogram ----------"
            read -p "Enter base : " base
            read -p "Enter side : " side
            read -p "Enter height : " height
            # Area = base * height
            area=$(echo "$base * $height" | bc)
            # Perimeter = 2 * (base + side)
            perimeter=$(echo "2 * ($base + $side)" | bc)
            echo "Area of Parallelogram: $area"
            echo "Perimeter of Parallelogram: $perimeter"
            ;;
        6)
            echo "---------- Trapezium ----------"
            read -p "Enter base1 : " base1
            read -p "Enter base2 : " base2
            read -p "Enter side1 : " side1
            read -p "Enter side2 : " side2
            read -p "Enter height : " height
            # Area = 0.5 * (base1 + base2) * height
            area=$(echo "0.5 * ($base1 + $base2) * $height" | bc)
            # Perimeter = sum of all sides
            perimeter=$(echo "$base1 + $base2 + $side1 + $side2" | bc)
            echo "Area of Trapezium : $area"
            echo "Perimeter of Trapezium : $perimeter"
            ;;
        7)
            echo "---------- Ellipse ----------"
            read -p "Enter major axis (a) : " a  
            read -p "Enter minor axis (b) : " b
            # Area = π * a * b
            area=$(echo "3.14 * $a * $b" | bc)
            # Approximate perimeter ≈ 2 * π * sqrt((a² + b²)/2)
            perimeter=$(echo "2 * 3.14 * sqrt(($a * $a + $b * $b)/2)" | bc -l)
            echo "Area of Ellipse : $area"
            echo "Approximate Perimeter of Ellipse : $perimeter"
            ;;
        8)
            echo "---------- Rhombus ----------"
            read -p "Enter side : " s
            read -p "Enter diagonal 1 : " d1
            read -p "Enter diagonal 2 : " d2
            # Area = 0.5 * diagonal 1 * diagonal 2
            area=$(echo "0.5 * $d1 * $d2" | bc)
            # Perimeter = 4 * side
            perimeter=$(echo "4 * $s" | bc)
            echo "Area of Rhombus : $area"
            echo "Perimeter of Rhombus : $perimeter"
            ;;
        9)
            echo "---------- Sphere ----------"
            read -p "Enter radius of sphere : " r
            # Volume = (4/3) * π * r³
            volume=$(echo "scale=2; (4/3) * 3.14 * $r * $r * $r" | bc)
            # Surface area = 4 * π * r²
            surface_area=$(echo "4 * 3.14 * $r * $r" | bc)
            echo "Volume of Sphere : $volume"
            echo "Surface Area of Sphere : $surface_area"
            ;;
        10)
            echo "---------- Cuboid ----------"
            read -p "Enter length: " l 
            read -p "Enter width: " w
            read -p "Enter height: " h
            # Volume = length * width * height
            volume=$(echo "$l * $w * $h" | bc)
            # Surface Area = 2 * (lw + lh + wh)
            surface_area=$(echo "2 * ($l * $w + $l * $h + $w * $h)" | bc)
            echo "Volume of Cuboid : $volume"
            echo "Surface Area of Cuboid : $surface_area"
            ;;
        11)
            echo "---------- Cylinder ----------"
            read -p "Enter radius : " r
            read -p "Enter height : " h
            # Volume = π * r² * h
            volume=$(echo "3.14 * $r * $r * $h" | bc)
            # Surface Area = 2 * π * r * h + 2 * π * r²
            surface_area=$(echo "2 * 3.14 * $r * $h + 2 * 3.14 * $r * $r" | bc)
            echo "Volume of Cylinder : $volume"
            echo "Surface Area of Cylinder : $surface_area"
            ;;
        12)
            echo "---------- Cone ----------"
            read -p "Enter radius : " r
            read -p "Enter height : " h
            # slant_height = sqrt(r² + h²) 
            slant_height=$(echo "scale=2; sqrt($r * $r + $h * $h)" | bc)
            # Volume = (1/3) * π * r² * h
            volume=$(echo "scale=2; (1/3) * 3.14 * $r * $r * $h" | bc)
            # Surface Area = π * r * (r + l)
            surface_area=$(echo "3.14 * $r * ($r + $slant_height)" | bc)
            echo "Volume of Cone : $volume"
            echo "Surface Area of Cone : $surface_area"
            ;;
        13)
            echo "Exiting the program!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a number between 1 and 13."
            ;;
    esac
done
