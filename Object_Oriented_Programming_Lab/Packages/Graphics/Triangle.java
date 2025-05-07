package Graphics;
public class Triangle implements Shapes
{
    int breadth, height;
    public Triangle(int breadth, int height)
    {
        this.breadth = breadth;
        this.height = height;
    }
    public void area()
    {
        double area = 0.5 * (this.breadth * this.height);
        System.out.print("Area of triangle = "+area);
    }
}
