package Graphics;
public class Circle implements Shapes
{
    double radius;
    public Circle(double radius)
    {
        this.radius = radius;
    }
    public void area()
    {
        double area = Math.PI * this.radius * this.radius;
        System.out.print("Area of circle = "+area);
    }
}
