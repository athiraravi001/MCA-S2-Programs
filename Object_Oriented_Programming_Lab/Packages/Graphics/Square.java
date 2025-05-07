package Graphics;
public class Square implements Shapes
{
    int side;
    public Square(int side)
    {
        this.side = side;
    }
    public void area()
    {
        int area = this.side * this.side;
        System.out.print("Area of square = "+area);
    }
}
