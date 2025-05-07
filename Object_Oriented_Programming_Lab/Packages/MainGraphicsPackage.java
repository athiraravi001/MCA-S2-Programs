import Graphics.*;
import Graphics.Circle;
import Graphics.Square;
import Graphics.Rectangle;
import Graphics.Triangle;
import java.util.Scanner;

public class MainGraphicsPackage
{
    public static void main(String args[])
    {
        int choice;
        Scanner sc = new Scanner(System.in);
        do
        {
            System.out.println("Choose an option :-");
            System.out.println("1 : Circle");
            System.out.println("2 : Square");
            System.out.println("3 : Rectangle");
            System.out.println("4 : Triangle");
            System.out.println("5 : Exit");
            choice = sc.nextInt();
            switch(choice)
            {
                case 1 : System.out.println("----- Circle -----");
                         System.out.print("Enter radius : ");
                         double radius = sc.nextDouble(); 
                         Circle c = new Circle(radius);
                         c.area();
                         System.out.println();
                         break;
                case 2 : System.out.println("----- Square -----");
                         System.out.print("Enter side : ");
                         int side = sc.nextInt(); 
                         Square s = new Square(side);
                         s.area();
                         System.out.println();
                         break;
                case 3 : System.out.println("----- Rectangle -----");
                         System.out.print("Enter length : ");
                         int length = sc.nextInt();
                         System.out.print("Enter breadth : ");
                         int Rbreadth = sc.nextInt();
                         Rectangle r = new Rectangle(length,Rbreadth);
                         r.area();
                         System.out.println();
                         break;
                case 4 : System.out.println("----- Triangle -----");
                         System.out.print("Enter breadth : ");
                         int Tbreadth = sc.nextInt();
                         System.out.print("Enter height : ");
                         int height = sc.nextInt();
                         Triangle t = new Triangle(Tbreadth, height);
                         t.area();
                         System.out.println();
                         break;
                case 5 : System.out.println("Exiting the program...");
                         break;
                default : System.out.println("Invalid choice!");
            }
        }
        while (choice !=5);
        sc.close();
    }
}