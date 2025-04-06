import java.util.Scanner;
class product 
{
    String pcode, pname;
    int price;
    product(String pcode, String pname, int price) 
	{
        this.pcode = pcode;
        this.pname = pname;
        this.price = price;
    }
    public void display() 
	{
        System.out.println("Product code : " + this.pcode);
        System.out.println("Product name : " + this.pname);
        System.out.println("Product price : " + this.price);
    }
}

public class ProductDetails 
{
    public static void main(String args[]) 
	{
        String code, name;
        int cost;
		
		//System.out.print("Enter the number of products: ");
        //int n = sc.nextInt();
        //sc.nextLine(); 
        //product p[] = new product[n];
		
        Scanner sc = new Scanner(System.in);
        product p[] = new product[3];

        for (int i = 0; i < 3; i++) 
        {
            System.out.println("***** Enter the details for Product " + (i + 1) + " *****");
            System.out.print("Enter the product code : ");
            code = sc.nextLine();
            System.out.print("Enter the product name : ");
            name = sc.nextLine();
            System.out.print("Enter the product price : ");
            cost = sc.nextInt();
            sc.nextLine(); 
            p[i] = new product(code, name, cost);
        }

        if (p[0].price < p[1].price && p[0].price < p[2].price) 
		{
            System.out.println("Product 1 has lowest price");
            p[0].display();
        } 
		else if (p[1].price < p[0].price && p[1].price < p[2].price) 
		{
            System.out.println("Product 2 has lowest price");
            p[1].display();
        } 
		else 
		{
            System.out.println("Product 3 has lowest price");
            p[2].display();
        }
    }
}
