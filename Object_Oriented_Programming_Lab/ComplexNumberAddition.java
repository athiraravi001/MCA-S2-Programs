import java.util.Scanner;
class complex
{
	int real,imag;
	complex(int r, int i)
	{
		this.real = r;
		this.imag = i;
	}
	public void sum(complex n1,complex n2)
	{
		this.real = n1.real + n2.real;
		this.imag = n1.imag + n2.imag;
	}
	public void display()
	{
		System.out.println("( "+this.real+" + "+this.imag+"i "+")");
	}
}

public class ComplexNumberAddition
{
	public static void main(String args[])
	{
        int r1, i1, r2, i2;
		Scanner sc = new Scanner(System.in);

        System.out.println("***** Enter first complex number *****");
        System.out.print("Real part : ");
        r1 = sc.nextInt();
        System.out.print("Imaginary part : ");
        i1 = sc.nextInt();
        complex c1 = new complex(r1, i1);

        System.out.println("***** Enter second complex number *****");
        System.out.print("Real part : ");
        r2 = sc.nextInt();
        System.out.print("Imaginary part : ");
        i2 = sc.nextInt();
        complex c2 = new complex(r2, i2);

        complex s = new complex(0, 0);
        s.sum(c1, c2);

        System.out.println("----- Result -----");
        System.out.print("First Complex Number = ");
        c1.display();
        System.out.print("Second Complex Number = ");
        c2.display();
        System.out.print("Sum = ");
        s.display();
	}
}