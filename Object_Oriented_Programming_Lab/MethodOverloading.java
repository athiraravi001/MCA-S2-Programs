import java.util.Scanner;

class ShapeAreas 
{  
    void area(int length, int breadth) 
    {
        int area = length * breadth;  
        System.out.print("Area of Rectangle = " + area);
    }

    void area(int side) 
    {
        int area = side * side; 
        System.out.print("Area of Square = " + area);    
    }

    void area(double base, double height) 
    {
        double area = (base * height) / 2;
        System.out.print("Area of Triangle = " + area);            
    }

    void area(double radius) 
    {
        double area = Math.PI * radius * radius;
        System.out.print("Area of Circle = " + area);    
    }
}

public class MethodOverloading
{
    public static void main(String args[]) 
    {
        Scanner sc = new Scanner(System.in);
        ShapeAreas obj = new ShapeAreas();

        System.out.println("\n-------- RECTANGLE --------");
        System.out.print("Enter the length and breadth : ");
        int length = sc.nextInt();
        int breadth = sc.nextInt();
        obj.area(length, breadth);
        System.out.println();
        
        System.out.println("\n-------- SQUARE --------");
        System.out.print("Enter the side : ");
        int side = sc.nextInt();
        obj.area(side);
        System.out.println();

        System.out.println("\n-------- TRIANGLE --------");
        System.out.print("Enter the base and height : ");
        double base = sc.nextDouble();
        double height = sc.nextDouble();
        obj.area(base, height);
        System.out.println();
        
        System.out.println("\n-------- CIRCLE --------");
        System.out.print("Enter the radius : ");
        double radius = sc.nextDouble();
        obj.area(radius);
        
        sc.close();
    }
}