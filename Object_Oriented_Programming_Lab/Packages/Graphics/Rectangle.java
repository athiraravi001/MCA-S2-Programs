package Graphics;
public class Rectangle implements Shapes
{
    int length, breadth;
    public Rectangle(int length, int breadth)
    {
        this.length = length;
        this.breadth = breadth;
    }
    public void area()
    {
        int area = this.length * this.breadth;
        System.out.print("Area of rectangle = "+area);
    }
}
