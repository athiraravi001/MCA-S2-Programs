//Create an interface having prototypes of functions area() and perimeter(). Create two classes Circle and Rectangle which implements the above interface. Create a menu driven program to find area and perimeter of objects.

import java.util.Scanner;
interface Shape
{
	void area();
	void perimeter();
}
class Circle implements Shape
{
	double radius;
	Circle(double radius)
	{
		this.radius = radius;
	}
	public void area()
	{
		double area = Math.PI * radius * radius;
		System.out.println("Area of circle = "+area);
	}
	public void perimeter()
	{
		double perimeter = 2 * Math.PI * radius;
		System.out.println("Perimeter of circle = "+perimeter);
	}
}
class Rectangle implements Shape
{
	int length, breadth;
	Rectangle(int length, int breadth)
	{
		this.length = length;
		this.breadth = breadth;
	}
	public void area()
	{
		int area = length * breadth;
		System.out.println("Area of rectangle = "+area);
	}
	public void perimeter()
	{
		int perimeter = 2 * (length + breadth);
		System.out.println("Perimeter of rectangle = "+perimeter);
	}
}
public class InterfaceShape
{
	public static void main(String args[])
	{
                int choice;
		Scanner sc = new Scanner(System.in);
                do
                {
                    System.out.println("Choose an option :-");
		    System.out.println("1 : Circle");
		    System.out.println("2 : Rectangle");
		    System.out.println("3 : Exit");
		    System.out.print("Enter your choice : ");
		    choice = sc.nextInt();
                    switch(choice)
                    {
                          case 1 : System.out.println("\n----- Circle -----");
			     System.out.print("Enter the radius of the circle : ");
			     double radius = sc.nextDouble();
			     Circle c = new Circle(radius);
			     c.area();
			     c.perimeter();
                             System.out.println();
			     break;
		case 2 : System.out.println("\n----- Rectangle -----");
			             System.out.print("Enter the length of the rectangle : ");
					     int length = sc.nextInt();
					     System.out.print("Enter the breadth of the rectangle : ");
					     int breadth = sc.nextInt();
					     Rectangle r = new Rectangle(length,breadth);
					     r.area();
					     r.perimeter();
                         System.out.println();
					     break;
			    case 3 : System.out.println("Exiting the program...");
                         break;
		        default : System.out.println("Invalid choice!");
            }
        }
        while (choice !=3);
		sc.close();
	}
}
